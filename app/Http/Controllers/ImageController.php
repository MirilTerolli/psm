<?php

namespace App\Http\Controllers;

/**
 * Include each model that will be used
 */
use App\Image;
use App\Keyword;
use App\KeywordImageRelation;
class ImageController extends Controller
{
    /**
     * Main function
     * @return array|\Illuminate\Http\JsonResponse
     */
    public function index(){
        /**
         * Define variables with posted parameters
         */
        $limit = $_POST['limit']; // Limit number of images details to sow
        $typedKeywordString = $_POST['keywords']; // The typed keywords by user
        $trimSpaces = trim($typedKeywordString); // Remove spaces in the begin or end of the inserted string of keywords
        $trimExtraCommas = trim($trimSpaces, ','); // Remove any useless comma in the begin or the end of inserted string of keywords
        $receivedString = str_replace(' ','',strtolower($trimExtraCommas)); // Remove useless spaces between keywords, and keep keywords lowercase (for better matching criteria & standartisation)
        $keywords = array_unique(explode(",", $receivedString)); // Explode received string of keywords and build array with separated keywords eliminating duplications
        /**
         *  If limit number is not inserted, is valid, not numeric or zero, execution should be interrupted.
         */
        if(empty($limit) || !isset($limit) || $limit == 0 || !numericValue($limit)){
            return array('Status' => 0, 'Message' => 'Limit of images to show is zero or invalid');
        }
        /**
         * Iterate inserted keywords to get their ID's and relation with Images. Create and return array with matched Images with keywords
         * @return array
         */
        for($i=0; $i<count($keywords); $i++){
            for($j=0; $j<count($keywords[$i]); $j++){
                $keywordQuery = Keyword::select('id')->where('value', $keywords[$i])->get()->toArray();
                $keywordArrays[] = $keywordQuery;
                @$imgIdQuery = KeywordImageRelation::select('img_id')->where('keyw_id', $keywordArrays[$i][$j])->get()->toArray();
                $imgIdArrays[] = $imgIdQuery;

            }
        }
        /**
         * Get image details based on their ID's.
         */
        $recordsNo = 0; //Initiate the number of records found
        for($i=0; $i<count($imgIdArrays); $i++){
            for($j=0; $j<count($imgIdArrays[$i]); $j++){
                $recordsNo++;
                $limit--;
                if($limit >= 0){ //If limit of number of records to show is bigger or equal to 0, we build the array of images to show
                    @$imagesMap = Image::select('img_link', 'img_width', 'img_height')->where('id', $imgIdArrays[$i][$j])->get()->toArray();
                    $imgList[] = $imagesMap;
                }

            }
        }
        if(!isset($imgList)){ //If search fields doesn't match to any result
            return response()->json([
                'Status' => 0,
                'Message' => 'No records match to search criteria'
            ]);
        }
        else{
            for($i=0; $i<count($imgList); $i++){
                for($j=0; $j<count($imgList[$i]); $j++){
                    @$finalArray[] = array('Image link' => $imgList[$i][$j]['img_link'], 'Image Width' => $imgList[$i][$j]['img_width'], 'Image Height' => $imgList[$i][$j]['img_height']);
                }
            }
            /**
             * return the response
             */
            return response()->json([
                'Status' => 1,
                'Total Records Found' => $recordsNo,
                'Records' => $finalArray
            ]);
        }
    }
}

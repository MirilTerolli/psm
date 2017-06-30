<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class KeywordImageRelation extends Model
{
    /**
     * Table name.
     * @var string
     */
    protected $table = 'keyw_img_rel';

    /**
     * The attributes that are mass assignable.
     * @var array
     */
    protected $fillable = [
      'keyw_id', 'img_id'
    ];

    /**
     * Set timestramps to true to track creation and update datetime of each record.
     * @var string
     */
    public $timestamps = 'true';
}

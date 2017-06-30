<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKeywImgRel extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('keyw_img_rel', function (Blueprint $table){
            $table->increments('id');
            $table->integer('keyw_id')->unsigned();
            $table->foreign('keyw_id')->references('id')->on('keywords');
            $table->integer('img_id')->unsigned();
            $table->foreign('img_id')->references('id')->on('images');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('key_img_rel');
    }
}

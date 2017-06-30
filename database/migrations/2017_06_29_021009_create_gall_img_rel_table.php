<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGallImgRelTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gall_img_rel', function (Blueprint $table){
            $table->increments('id');
            $table->integer('gall_id')->unsigned();
            $table->foreign('gall_id')->references('id')->on('galleries');
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
        Schema::dropIfExists('gall_img_rel');
    }
}

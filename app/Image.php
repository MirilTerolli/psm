<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    /**
     * Database table.
     * @var string
     */
    protected $table = 'images';

    /**
     * The attributes that are mass assignable.
     * @var array
     */
    protected $fillable = [
        'img_link', 'img_name', 'img_width', 'img_height'
    ];

    /**
     * Set timestramps to true to track creation and update datetime of each record.
     * @var string
     */
    public $timestamps = 'true';
}

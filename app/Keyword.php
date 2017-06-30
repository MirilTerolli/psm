<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Keyword extends Model
{
    /**
     * Define database table.
     * @var string
     */
    protected $table = 'keywords';

    /**
     * The attributes that are mass assignable.
     * @var array
     */
    protected $fillable = [
        'id', 'value'
    ];

    /**
     * Set timestramps to true to track creation and update datetime of each record.
     * @var string
     */
    public $timestamps = 'true';
}

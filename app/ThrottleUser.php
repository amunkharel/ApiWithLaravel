<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ThrottleUser extends Model
{
    protected $fillable = [
        'requests',
        'hours',
    ];

    public $timestamps = false;
}

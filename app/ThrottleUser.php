<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ThrottleUser extends Model
{

    protected $table = 'throttle_users';

    protected $fillable = [
        'requests',
        'hours',
    ];

}

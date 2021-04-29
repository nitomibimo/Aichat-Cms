<?php

namespace App\Model;

use Illuminate\Auth\Authenticatable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Passwords\CanResetPassword;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\CanResetPassword as CanResetPasswordContract;
use Auth;
use DateTime;
use DB;

class Admin extends Model implements AuthenticatableContract, CanResetPasswordContract
{
    use Authenticatable, CanResetPassword;

    protected $table = 'admin';
    protected $fillable = array(
        'name',
        'email',
        'password',
    );


    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $dates = array(
        'created_at',
        'updated_at'

    );


    protected $hidden = array(
        'password'
    );
}

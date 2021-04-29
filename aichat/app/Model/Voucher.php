<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use DateTime;
use DB;

class Voucher extends Model
{
    protected $table = 'voucher';
    protected $fillable = array(
        'prize_id',
        'user_id',
        'period_id',
        'voucher_code',
        'voucher_winner',
        'voucher_valid',

    );


    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $dates = array(
        'created_at',
        'updated_at',
        '_deleted '

    );
}

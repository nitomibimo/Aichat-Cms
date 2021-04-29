<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use DateTime;
use DB;

class Report extends Model
{
    protected $table = 'winner_report';
    protected $fillable = array(
        'winner_voucher_id',
        'winner_prize_id',
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

<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use DateTime;
use DB;

class Period extends Model
{
    protected $table = 'period';
    protected $fillable = array(
        'nm_period',
        'start_period',
        'end_period',
        'undian_at',
        'gprize_at',
        'status'


    );


    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $dates = array(
        'created_at',
        'updated_at',

    );
}

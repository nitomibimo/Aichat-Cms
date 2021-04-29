<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use DateTime;
use DB;

class Prize extends Model
{
    protected $table = 'prize';
    protected $fillable = array(
        'category_id',
        'prize_name',
        'prize_desc',
        'prize_code',
        'prize_image_name',
        'prize_qty',
        'total_user',

    );


    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $dates = array(
        '_created_date',
        'last_updated',
        '_deleted'

    );
}

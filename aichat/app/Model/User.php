<?php

namespace App\Model;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $table = 'user';
    protected $fillable = array(
        'user_fullname','user_email', 'user_phone','user_address', 'user_kelurahan', 'user_kecamatan', 'user_kabupaten', 'user_propinsi', 'user_postcode', 'user_buy_date', 'user_imei', 'user_no_ktp','user_path_ktp','user_path_invoice','user_path_warranty'
    );

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = array(
        '_deleted', '_created_date', 'last_updated'
    );
}

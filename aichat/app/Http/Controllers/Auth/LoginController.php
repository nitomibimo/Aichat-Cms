<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use App\Model\Admin;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */

    public function loginview()
    {
        return view('login');
    }

    public function postlogin(Request $request)
    {
        $user = Admin::where('email', $request->input('email'))
              ->first();

        $password = Admin::where('password', $request->input('password'))
            ->first();

        if ($user && $password) {
            return redirect('dashboard');
        } else {
            return view('404');
        }
    }


    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}

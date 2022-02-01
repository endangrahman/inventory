<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Error;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function login()
    {
        return view('auth.login');
    }

    public function postLogin(Request $request)
    {
        // dd($request)->all();
        if (Auth::attempt($request->only('email', 'password'))) {
            return redirect()->route('dashboard')->with('success', 'Anda Berhasil Login');
        }
        return redirect()->route('login')->with('error', 'Email atau Password tidak sesuai');
    }

    public function Logout()
    {
        Auth::logout();
        return redirect()->route('login');
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function login()
    {
        return view('login.login');
    }

    public function actionLogin (Request $request)
    
    {
        // dd($request->all());
        $credentials = $request->validate([
            'email'=> 'required|email',
            'password'=> 'required|min:6',
        ]);
        if(Auth::attempt($credentials))
            {
                $request->session()->regenerate();
                return redirect()->intended('/dashboard');
            }
        return back ()
            ->withErrors(['email'=> 'Incorrect Email or password'])
            ->onlyInput('email');
    }

    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerationToken();
        return redirect('/login');
    }
}

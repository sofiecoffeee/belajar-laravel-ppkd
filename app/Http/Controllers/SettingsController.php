<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SettingsController extends Controller
{
    public function index()
    {
     $title = 'Settings';
    return view('settings', compact('title', 'settings'));
    }
}

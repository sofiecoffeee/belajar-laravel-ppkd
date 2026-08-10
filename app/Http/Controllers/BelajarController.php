<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BelajarController extends Controller
{
    public function index()
    {
        return view('counting');
    }

    public function IndexKurang()
    {
        $hasil = 0;
        return view('kurang', compact('hasil'));
    }

    public function greeting()
    {
        return "hello world";
    }

     public function tambah()
    {
        $nilai1 = 5;
        $nilai2 = 7;
        $hasil = $nilai1 + $nilai2;

        return "$nilai1 + $nilai2 = $hasil";
    }

    public function kurang(Request $Request)
    {
       $angka1 = $Request->angka1;
       $angka2 = $Request->angka2;
        $hasil = $angka1 - $angka2;
        return view ('kurang', compact('hasil'));
    }
}

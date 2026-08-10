<?php

use \App\Http\Controllers\BelajarController;
use Illuminate\Support\Facades\Route;


Route::get('/', function () {
    return view('welcome');
});

//method : GET, POST, PUT, DELETE, PATCH
//GET : Lihat dan baca
//POST : mengirim data dari form, aksinya insert
//PUT : mengirim data dari form, aksinya update, datanya lebih dari 1
//PATCH : mengirim data dari form, aksinya update

Route::get('/salam', [BelajarController::class, 'greeting']);

// contoh praktik
Route::get ('counting', [BelajarController::class, 'index']);

//tambah
Route::get('/hitung-tambah', [BelajarController::class, 'Tambah']);
// ->name('Hitung tambah'); = tambah ->name kalo mau sambunginnya pake route

//Kurang
Route::get('/hitung-kurang',[BelajarController::class, 'IndexKurang']);
Route::post('/action-kurang', [BelajarController::class,'Kurang']);
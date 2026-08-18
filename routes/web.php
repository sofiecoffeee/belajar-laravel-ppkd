<?php

use \App\Http\Controllers\LoginController;
use \App\Http\Controllers\DashboardController;
use \App\Http\Controllers\PesertaController;
use \App\Http\Controllers\RoleController;
use \App\Http\Controllers\CategoryController;
use \App\Http\Controllers\ProductController;
use \App\Http\Controllers\OrderController;

use Illuminate\Support\Facades\Route;


// Route::get('/', function () {
//     return view('welcome');
// });

//method : GET, POST, PUT, DELETE, PATCH
//GET : Lihat dan baca
//POST : mengirim data dari form, aksinya insert
//PUT : mengirim data dari form, aksinya update, datanya lebih dari 1
//PATCH : mengirim data dari form, aksinya update


// Controller peserta
Route::get('peserta', [PesertaController::class, 'index']); //ini harus ganti yang atas yaa yang baris 3
// bisa juga kayak gini Route::get('peserta', [\App\Http\Controllers\PesertaController::class, 'index']); ga perlu ganti template yang baris 3

Route::get('create', [PesertaController::class, 'create'])->name('create');
Route::post('create', [PesertaController::class, 'store'])->name('store');
Route::post('store-peserta', [PesertaController::class, 'store'])->name('store-peserta');
Route::get('edit/{id}', [PesertaController::class, 'edit'])->name('edit.peserta');
Route::put('update/{id}',[PesertaController::class, 'update'])->name('update.peserta');
Route::delete('delete/{id}',[PesertaController::class, 'delete'])->name('delete.peserta');

//middleware = buat jagain web dari hacker. perantara antara halaman login dan dashboard
Route::middleware('auth')->group(function()
{
    Route::resource('dashboard', DashboardController::class);
    //Controller Role
    Route::resource('role', RoleController::class);
     //Controller Logout
    Route::post('logout', [LoginController::class, 'logout'])->name('logout');
    //Controller category
    Route::resource('category', CategoryController::class);
    //Product Controller
    Route::resource('product', ProductController::class);
    //Order Controller
    Route::resource('order', OrderController::class);
});     


//Controller Login
Route::get('/', [LoginController::class, 'login']);
Route::get('login', [LoginController::class, 'login'])->name('login');
Route::post('actionlogin', [LoginController::class, 'actionLogin'])->name('actionLogin');













// Route::get('/salam', [BelajarController::class, 'greeting']);

// // contoh praktik
// Route::get ('counting', [BelajarController::class, 'index']);

// //tambah
// Route::get('/hitung-tambah', [BelajarController::class, 'Tambah']);
// // ->name('Hitung tambah'); = tambah ->name kalo mau sambunginnya pake route

// //Kurang
// Route::get('/hitung-kurang',[BelajarController::class, 'IndexKurang']);
// Route::post('/action-kurang', [BelajarController::class,'Kurang']);
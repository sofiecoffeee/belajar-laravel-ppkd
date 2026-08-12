<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Peserta;

class PesertaController extends Controller
{
    //
    public function index()
    {
        //GET
        $title = "List Peserta";
        $pesertas = Peserta::get();
        return view('peserta.index', compact('pesertas','title'));
    }

    public function create()
    {
        $title = "Tambah Peserta Baru";
        return view('peserta.create', compact('title'));
    }

//post
public function store (Request $request)
    {

    $request->validate([
            'nama' => 'required|max:50',
            'email'=> 'required|email|unique:pesertas,email',
            'umur'=>'required',
            'address'=>'nullable'
        ]);

    Peserta::create([
            'name' => $request->nama,
            'email'=> $request->email,
            'age'=>$request->umur,
            'address'=>$request->address
            ]);
    return redirect()->to('peserta');
    }

    public function edit(string $id) 
    {
        $title = 'edit';
        $peserta = Peserta::find($id);
        return view('peserta.edit', compact('peserta', 'title'));
    }
    
    Public function update (string $id, Request $request) 
    {
            $peserta = Peserta::findOrFail($id);
            // $peserta->name = $request->nama;
            // $peserta->age = $request->umur;
            // $peserta->email = $request->email;
            // $peserta->address = $request->address;
            // $peserta->save();

          //cara keduanya 
          $peserta->update([
            'name' => $request->nama,
            'email'=> $request->email,
            'age'=>$request->umur,
            'address'=>$request->address
           ]);

    return redirect()->to('peserta');
    }

    public function delete (string $id) 
    {
        $peserta = Peserta::findOrFail($id);
        //DELETE FROM PESERTAS WHERE id=$id
        $peserta->delete();

    return redirect()->to('peserta');
    }

}
<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;
use Illuminate\Support\Facades\Storage;


class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $products = Product::with('category')->get();
        $title ="Data Product";
        return view('product.index', compact('title', 'products'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $title = "Create New Product";
        $categories = Category::get();
        return view('product.create', compact('title', 'categories'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = [
            'name' => $request->name,
            'category_id' => $request->category_id,
            'price'=> $request->price,
            'description'=> $request->description
            ];

        if($request->hasFile('photo')){
            $data['photo'] = $request->file('photo')->store('products', 'public');
        }

        Product::create($data);
        return redirect()->to('product')->with('success', 'create product success');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $title ="Edit Product";
        $categories = Category::get();
        $edit = Product::find($id); //blanktambah 
        //$edit = Product::findOrFail($id); //404

        return view ('product.edit', compact('title', 'categories', 'edit'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
       $product = Product::findOrFail($id);

    $data = [
        'name' => $request->name,
        'category_id' => $request->category_id,
        'price' => $request->price,
        'description' => $request->description,
    ];

    // Kalau ada foto baru
    if ($request->hasFile('photo')) {
        // Hapus foto lama
        if ($product->photo) {
            Storage::disk('public')->delete($product->photo);
        }

        // Simpan foto baru
        $data['photo'] = $request->file('photo')->store('products', 'public');
    }

    $product->update($data);

    return redirect()->to('product')->with('success', 'Update data berhasil');
    }


    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Product $product)
    {
        storage::disk('public')->delete($product->photo);
        $product->delete();

        return redirect()->to('product')->with('success', 'Delete Berhasil');
    }
}

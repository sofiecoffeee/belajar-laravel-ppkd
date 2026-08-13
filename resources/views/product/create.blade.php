@extends('app')
@section('content')
    <form action="{{ route('product.store') }}" method="POST" class="mt-5" enctype="multipart/form-data">
        @csrf

        <div class="mb-3">
            <label class="form-label">Category</label>
            <select name="category_id" id="" class="form-control">
                <option value="">Select One</option>
                @foreach ($categories as $category)
                    <option value="{{ $category->id }}">{{ $category->name }}</option>
                @endforeach
            </select>
        </div>

        <div class="mb-3">
            <label class="form-label">name</label>
            <input class="form-control" type="text" name="name">
        </div>

        <div class="mb-3">
            <label class="form-label">Price</label>
            <input class="form-control" type="number" name="price" step="any">
        </div>

        <div class="mb-3">
            <label class="form-label">Photo</label>
            <input class="form-control" type="file" name="photo">
        </div>

        <div class="mb-3">
            <label class="form-label">Description</label>
            <textarea class="form-control" name="description" id=""></textarea>
        </div>

        <div class="mt-3 mb-3">
            <button class="btn btn-primary" type="submit">
                Tambah
            </button>
        </div>
    </form>
@endsection

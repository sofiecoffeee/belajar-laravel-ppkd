@extends ('app')
@section('content')
    <div align="right" class="mb-3">
        <a href="{{ route('product.create') }}" class="btn btn-primary">Tambah Produk</a>
        {{-- <a href="/create class="btn btn-primary">Tambah Peserta</a>  --> bisa juga pake ini tapi as security kurang --}}
    </div>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>No</th>
                <th>Category Name</th>
                <th>Product Name</th>
                <th>Price</th>
                <th>Description</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($products as $index => $value)
                <tr>
                    <td>{{ $index += 1 }}</td>
                    <td>{{ $value->category->name }}</td>
                    <td>{{ $value->name }}</td>
                    <td>{{ $value->price }}</td>
                    <td>{{ $value->description }}</td>
                    <td>
                        <a href="{{ route('product.edit', $value->id) }}" class="btn btn-success btn-sm">Edit</a>
                        <form action="{{ route('product.destroy', $value->id) }}" method="post" class="d-inline">
                            @csrf
                            @method('DELETE')
                            <button type="submit" onclick="return confirm('Yakin di hapus?')"
                                class="btn btn-danger
                                btn-sm">Delete</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
@endsection

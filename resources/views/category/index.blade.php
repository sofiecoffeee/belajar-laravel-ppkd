@extends ('app')
@section('content')
    <div class= "table-responsive">
        <div align="right" class="mb-2">
            <a href="{{ route('category.create') }}" class="btn btn-primary btn-sm">Tambah Kategori</a>

        </div>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Name</th>
                    <th>Action</th>
                </tr>
            </thead>
            @foreach ($categories as $index => $value)
                <tr>
                    <td>{{ $index + 1 }}</td>
                    <td>{{ $value->name }}</td>

                    <td>
                        <a href="{{ route('category.edit', $value->id) }}" class="btn btn-success btn-sm">Edit</a>
                        <button type="submit" onclick="return confirm('Yakin di hapus?')"
                            class="btn btn-danger
                                btn-sm">Delete</button>
                    </td>
                </tr>
            @endforeach
        </table>
    </div>
@endsection

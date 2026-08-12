@extends ('app')
@section('content')
    <div class= "table-responsive">
        <div align="right" class="mb-2">
            <a href="{{ route('role.create') }}" class="btn btn-primary btn-sm">Create</a>

        </div>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Name</th>
                    <th>Action</th>
                </tr>
            </thead>
            @foreach ($roles as $index => $value)
                <tr>
                    <td>{{ $index + 1 }}</td>
                    <td>{{ $value->name }}</td>

                    <td>
                        <a href="{{ route('role.edit', $value->id) }}" class="btn btn-success btn-sm">Edit</a>
                    </td>
                </tr>
            @endforeach
        </table>
    </div>
@endsection

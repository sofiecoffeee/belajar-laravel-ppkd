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
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </div>
@endsection

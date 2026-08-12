@extends('app')
@section('content')
    <form action="{{ route('role.store') }}" method="POST" class="mt-5">
        @csrf

        <div class="mb-3">
            <label class="form-label">Nama</label>
            <input type="text" class="form-control" name="nama">
        </div>

        <div class="form-check">
            <input class="form-check-input" type="radio" name="is_active" id="RadioDefault1" checked value="1">
            <label class="form-check-label" for="RadioDefault1">
                Active
            </label>
        </div>

        <div class="form-check">
            <input class="form-check-input" type="radio" name="is_active" id="RadioDefault2" value="0">
            <label class="form-check-label" for="RadioDefault2">
                In Active
            </label>
        </div>

        <div class="mt-3 mb-3">
            <button class="btn btn-primary" type="submit">
                Simpan
            </button>
        </div>
    </form>
@endsection

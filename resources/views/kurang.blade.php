{{-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body> 
    <form action="action-kurang" method="post">
        @csrf
        <label for="">Angka 1</label>
        <br>
        <input type="number" name="angka1">
        <br>

        <label for="">Angka 2</label>
        <br>
        <input type="number" name="angka2">
        <br>

        <br>
        <button type="submit">Hitung</button>
        <br>
    </form>
    {{-- <h3>Hasilnya: {{$hasil}}</h3> --}}

    {{-- atau pake ini  --}}
    
    <h3>hasilnya: {{ isset($hasil) ? $hasil : 0 }}</h3>
    <br>
    <a href="{{ url('counting') }}">Back</a>
</body>
</html> --}}
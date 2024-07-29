@extends('master')
@section('title', "Création d'un Auteur")

@section('content')
<h1 class="text-dark">Création d'un auteur</h1>

<div class="container">
    <form action="{{route('authors.store')}}" method="POST" class="border border-primary border-4 rounded-4 p-3 bg-dark">
        @csrf

        @if ($errors->any())
            <ul class="alert alert-danger">
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        @endif

        <div class="mb-3">
            <label for="name" class="form-label text-light">Name:</label>
            <input id="name" name="name" class="form-control bg-dark text-light border border-primary" type="text" required value="{{ old('name') }}">
        </div>

        <div class="mb-3">
            <label for="biography" class="form-label text-light">Biography:</label>
            <textarea id="biography" name="biography" class="form-control bg-dark text-light border border-primary" required rows="10">{{ old('biography') }}</textarea>
        </div>

        <button class="btn btn-primary mb-2 mt-4" type="submit">Submit</button>
    </form>
</div>

@endsection

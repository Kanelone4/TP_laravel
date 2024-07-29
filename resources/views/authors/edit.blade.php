@extends('master')
@section('title', "Modification d'un auteur")

@section('content')
<h1 class="text-dark">Modification d'un auteur</h1>

<form action="{{route('authors.update', $author->id)}}" method="POST" class="border border-danger border-4 rounded-4 p-3 bg-dark">
    @csrf
    @method('PUT')

    @if ($errors->any())
        <ul class="alert alert-danger">
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    @endif

    <div class="mb-3">
        <label for="name" class="form-label text-light">Name:</label>
        <input id="name" name="name" class="form-control bg-dark text-light border border-info" type="text" required value="{{ $author->name }}">
    </div>

    <div class="mb-3">
        <label for="biography" class="form-label text-light">Biography:</label>
        <textarea id="biography" name="biography" class="form-control bg-dark text-light border border-info" required rows="10">{{ $author->biography }}</textarea>
    </div>

    <div class="mb-3">
        <label for="book_name" class="form-label text-light">Book Name:</label>
        <input id="book_name" name="book_name" class="form-control bg-dark text-light border border-info" type="text" value="{{ $author->book_name }}">
    </div>


    <button type="submit" class="btn btn-primary mb-2 mt-4">Submit</button>
</form>

@endsection

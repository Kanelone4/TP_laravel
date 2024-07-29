@extends('master')
@section('title', "Création d'un Livre")

@section('content')
<h1 class="text-dark">Create Book</h1>

<div class="container">
    <form action="{{route('books.store')}}" method="POST" class="border border-primary border-4 rounded-4 p-3 bg-dark">
        @csrf
        @if ($errors->any())
            <ul class="alert alert-danger">
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        @endif

        <div class="mb-3">
            <label for="author" class="form-label text-light">Author</label>
            <select name="author" class="form-select bg-dark text-light border-secondary" id="author">
                @foreach ($authors as $author)
                    <option value="{{$author->id}}" {{($author->id == old('author')) ? 'selected' : ''}}>
                        {{$author->name}}
                    </option>
                @endforeach
            </select>
        </div>

        <div class="mb-3">
            <label for="title" class="form-label text-light">Title:</label>
            <input id="title" name="title" class="form-control bg-dark text-light border border-info" type="text" required value="{{old('title')}}">
        </div>

        <div class="mb-3">
            <label for="isbn" class="form-label text-light">ISBN</label>
            <input id="isbn" name="isbn" class="form-control bg-dark text-light border border-info" type="text" required value="{{old('isbn')}}">
        </div>

        <div class="mb-3">
            <label for="published_year" class="form-label text-light">Published Year</label>
            <input id="published_year" class="form-control bg-dark text-light border border-info" name="published_year" type="text" required value="{{old('published_year')}}">
        </div>

        <button class="btn btn-primary" type="submit">Submit</button>
    </form>
</div>

<div class="mt-4">
    Can't find the author you're looking for? <a href="{{ route('authors.create') }}" class="text-info">Add a new author here</a>
</div>

@endsection

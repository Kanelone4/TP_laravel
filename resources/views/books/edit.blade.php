@extends('master')
@section('title', "Modification d'un livre")

@section('content')

<h1 class="text-dark">Edit Book</h1>
<form action="{{route('books.update', $book->id)}}" method="POST" class="border border-primary border-4 rounded-4 p-3 bg-dark">
    @csrf
    @method('PUT')
    <div class="mb-3">
        <label for="author" class="form-label text-light">Author</label>
        <select name="author" id="author" class="form-select bg-dark text-light border-secondary">
            @foreach ($authors as $author)
                <option value="{{$author->id}}" {{($author->id == $book->author_id) ? 'selected' : ''}}>
                    {{$author->name}}
                </option>
            @endforeach
        </select>
    </div>
    <div class="mb-3">
        <label for="title" class="form-label text-light">Title:</label>
        <input id="title" name="title" class="form-control bg-dark text-light border border-info" type="text" required value="{{$book->title}}">
    </div>

    <div class="mb-3">
        <label for="isbn" class="form-label text-light">ISBN</label>
        <input id="isbn" name="isbn" class="form-control bg-dark text-light border border-info" type="text" required value="{{$book->isbn}}">
    </div>

    <div class="mb-3">
        <label for="published_year" class="form-label text-light">Published Year</label>
        <input id="published_year" name="published_year" class="form-control bg-dark text-light border border-info" type="text" required value="{{$book->published_year}}">
    </div>

    <button type="submit" class="btn btn-primary">Update</button>
</form>

@endsection

@extends('master')
@section('title', "Liste des livres")

@section('content')

<form action="{{ route('books.search') }}" class="mb-4">
    @csrf
    <div class="form-row">
        <input class="form-control bg-light text-dark border-0" type="search" name="search" placeholder="Search by books" />
        <button type="submit" class="btn btn-primary">Search</button>
    </div>
</form>

<div class="container mt-4">
    <table class="table table-dark table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>ISBN</th>
                <th>Published Year</th>
                <th>Actions</th>
            </tr>
        </thead>

        <tbody>
            @foreach ($books as $book)
                <tr>
                    <td>{{$book->id}}</td>
                    <td>{{$book->title}}</td>
                    <td>{{$book->author->name}}</td>
                    <td>{{$book->isbn}}</td>
                    <td>{{$book->published_year}}</td>
                    <td>
                        <a href="{{route('books.edit', $book->id)}}" class="btn btn-warning text-dark">Edit</a>
                        <form action="{{route('books.destroy', $book->id)}}" method="POST" class="d-inline">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>

    </table>

    <div>
        {{ $books->links('pagination::simple-bootstrap-4') }}
    </div>

</div>

@endsection

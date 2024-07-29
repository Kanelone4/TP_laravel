@extends('master')
@section('title', "Liste des auteurs")

@section('content')

<form action="{{ route('authors.search') }}" class="mb-4">
    @csrf
    <div class="form-row">
        <input class="form-control bg-light text-dark border-0" type="search" name="search" placeholder="Search by authors" />
        <button type="submit" class="btn btn-primary">Search</button>
    </div>
</form>

<div class="container mt-4">
    <table class="table table-dark table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Biography</th>
                <th>Actions</th>
            </tr>
        </thead>

        <tbody>
            @foreach ($authors as $author)
                <tr>
                    <td>{{$author->id}}</td>
                    <td>{{$author->name}}</td>
                    <td>{{$author->biography}}</td>
                    <td>
                        <a href="{{route('authors.edit', $author->id)}}" class="btn btn-warning text-dark">Edit</a>
                        <form action="{{route('authors.destroy', $author->id)}}" method="POST" class="d-inline">
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
        {{ $authors->links('pagination::simple-bootstrap-4') }}
    </div>
</div>

@endsection

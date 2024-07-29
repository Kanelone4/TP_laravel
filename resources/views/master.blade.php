<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>@yield('title')</title>
</head>

<body>
    <div  class="container">
        <nav>
            <ul class="nav">
                <li class="nav-item"><a class="nav-link" href="{{route('books.create')}}">create a Book</a></li>
                <li class="nav-item"><a class="nav-link" href="{{route('authors.create')}}">create an author</a></li>
            </ul>
        </nav>
        @yield('content')
    </div>
</body>

</html>


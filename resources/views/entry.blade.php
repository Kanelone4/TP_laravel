<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="../app.css">
    <title>Library</title>
    <style>
        .welcome-text {
            font-size: 2rem;
            font-weight: 700;
        }
        .feature-list {
            list-style-type: none;
            padding: 0;
        }
        .feature-list li::before {
            content: "✓";
            color: green;
            margin-right: 8px;
        }
        .nav-link {
            color: #007bff !important;
        }
        .nav-link:hover {
            color: #0056b3 !important;
        }
        .lead-custom {
            font-size: 1.2rem;
        }
    </style>
</head>

<body class="bg-dark text-light">
    <div class="container">
        <h1 class="text-center mt-5 welcome-text"><strong>Discover the Literary Haven</strong></h1>

        <nav class="mt-4">
            <ul class="nav justify-content-center">
                <li class="nav-item"><a class="nav-link" href="{{route('books.index')}}">Books List</a></li>
                <li class="nav-item"><a class="nav-link" href="{{route('authors.index')}}">Authors List</a></li>
            </ul>
        </nav>

        <div class="text-center mt-5">
            <h4>Your library completely digitized !</h4>
        </div>
    </div>
</body>
</html>

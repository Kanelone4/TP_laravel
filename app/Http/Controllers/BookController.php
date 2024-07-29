<?php

namespace App\Http\Controllers;

use App\Models\Author;
use Illuminate\Http\Request;
use App\Models\Book;

class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        // Récupération de tous les livres
        $books = Book::simplePaginate(8);

        // Retourne la vue 'books.index' avec les données des livres
        return view('books.index', compact('books'));
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //Récupère toutes les auteurs (instances de la classe Filiere) à partir de la base de données en utilisant  Author::all().
        //Puis, elle retourne une vue (probablement une page HTML) appelée 'books.create'.
        //Dans cette vue, elle transmet les données des filières sous la variable 'authors'.
        $authors = Author::all();
        return view('books.create', [
            'authors' => $authors
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
        $rules = [
            'title' => 'required|string|min:3',
            'isbn' => 'required|string|min:3',
            'published_year' => 'required|numeric|digits:4'
        ];
        $validate_data = $request->validate($rules);
        $book = new Book;
        $book->title = $request->input('title');
        $book->author_id = $request->input('author');
        $book->isbn = $request->input('isbn');
        $book->published_year = $request->input('published_year');

        $books = Book::all();
        foreach ($books as $bookk) {
            if ($bookk->title == $book->title && $bookk->author_id == $book->author_id) {
                return redirect()->route("books.index");
            }
        }
        $book->save();
        return redirect()->route("books.index");
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
        $book = Book::findOrFail($id);

        $authors = Author::all();
        return view('books.edit', compact('book', 'authors'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
        $book = Book::findOrFail($id);
        $book->author_id = $request->input('author');
        $book->title = $request->input('title');
        $book->isbn = $request->input('isbn');
        $book->published_year = $request->input('published_year');
        $book->update();
        return redirect()->route('books.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
        $book = Book::findOrFail($id);
        $book->delete();
        return redirect()->route('books.index');
    }

    public function search()
    {
        $query = request()->input('search');

        $books = Book::where('title', 'like', "%{$query}%")
            ->paginate(10);

        return view('books.index', ['books' => $books]);
    }
}

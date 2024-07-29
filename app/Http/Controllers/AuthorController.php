<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Author;
use App\Models\Book;

class AuthorController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // Récupération de tous les auteurs
        $authors = Author::simplePaginate(7);

        // Retourne la vue 'authors.index' avec les données des auteurs
        return view('authors.index', compact('authors'));
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        return view('authors.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
        $rules = [
            'name' => 'required|string|min:3',
            'biography' => 'required|string|min:3',
        ];
        $validate_data = $request->validate($rules);
        $author = new Author;
        $author->name = $request->input('name');
        $author->biography = $request->input('biography');

        //On récupère tout les auteurs et on vérifie qu'il n'existe pas déjà
        $authors = Author::all();
        foreach ($authors as $authorr) {
            if($authorr->name == $author->name) {
                return redirect()->route("authors.index");
            }
        }
        $author->save();
        return redirect()->route("authors.index");
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

        $author = Author::findOrFail($id);

        return view('authors.edit', compact('author'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
        $author = Author::findOrFail($id);
        $author->name = $request->input('name');
        $author->biography = $request->input('biography');
        $author->update();
        return redirect()->route('authors.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
        $author = Author::findOrFail($id);
        $books = $author->books; // on récupère une collection des livres associés à l'auteur

        foreach ($books as $book) {
            $book->delete();
        }
        $author->delete();
        return redirect()->route('authors.index');
    }

    public function search()
    {
        $query = request()->input('search');

        $authors = Author::where('name', 'like', "%{$query}%")
            ->paginate(7);

        return view('authors.index', ['authors' => $authors]);
    }

    public function booksIndex(string $id) {
        $author = Author::findOrFail($id);
        $books = Book::where('author_id', $author->id)->simplePaginate(8); // on récupère une collection des livres associés à l'auteur


        return view('books.index', compact('books'));
    }
}

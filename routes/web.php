<?php

use App\Http\Controllers\AuthorController;
use App\Http\Controllers\BookController;
use App\Models\Book;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('entry');
});

Route::post('books', [BookController::class, 'store'])->name('books.store');

Route::post('authors', [AuthorController::class, 'store'])->name('authors.store');

Route::get('books/create', [BookController::class, 'create'])->name('books.create');

Route::get('authors/create', [AuthorController::class, 'create'])->name('authors.create');

Route::get('books/index', [BookController::class, 'index'])->name('books.index');

Route::get('authors/index', [AuthorController::class, 'index'])->name('authors.index');

Route::get('authors/index/searched', [AuthorController::class, 'search'])->name('authors.search');

Route::get('books/index/searched', [BookController::class, 'search'])->name('books.search');

Route::get('authors/{id}/edit', [AuthorController::class, 'edit'])->name('authors.edit'); // {id} veut dire que le parametre id change

Route::get('books/{id}/edit', [BookController::class, 'edit'])->name('books.edit'); // {id} veut dire que le parametre id change

Route::put('authors/{id}', [AuthorController::class, 'update'])->name('authors.update'); //route put pout tout ce qui est modification

Route::put('books/{id}', [BookController::class, 'update'])->name('books.update');

Route::delete('authors/{id}', [AuthorController::class, 'destroy'])->name('authors.destroy');

Route::delete('books/{id}', [BookController::class, 'destroy'])->name('books.destroy');

Route::get('authors/{id}/books', [AuthorController::class, 'booksIndex'])->name('authors.booksIndex');




<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddBookNameToAuthorsTable extends Migration
{
    public function up()
    {
        Schema::table('authors', function (Blueprint $table) {
            $table->string('book_name')->nullable(); 
        });
    }

    public function down()
    {
        Schema::table('authors', function (Blueprint $table) {
            $table->dropColumn('book_name');
        });
    }
}

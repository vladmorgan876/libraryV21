<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FilterBooksController extends Controller
{
    public function filterbooks()
    {
        $this->authorName = $_POST['authorName'];
        $this->nameBook = $_POST['nameBook'];
        $authors = DB::table('books')->where('author', $this->authorName)->get();
        $nameBooks = DB::table('books')->where('name', $this->nameBook)->get();
        return view('welcome')->with(['authors' => $authors, 'nameBooks' => $nameBooks]);
    }
}

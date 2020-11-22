<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CatalogController extends Controller
{
    public function showcatalog()
    {
        return view('catalog');
    }

    public function listbooks()
    {
        $books = DB::table('books')->get();
        return $books;
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BookController extends Controller
{
    public function showbook(){
        $books=DB::table('books')->simplePaginate(2);
        return view('welcome')->with(['books'=>$books]);
    }
}

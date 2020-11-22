<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class EditDeleteDataController extends Controller
{
    public function showdata()
    {
        $books = DB::table('books')->simplePaginate(2);
        return view('FormEditDeleteData')->with(['books' => $books]);
    }

    public function deletedata($id)
    {
        DB::table('books')->delete($id);
        $books = DB::table('books')->simplePaginate(2);
        return view('FormEditDeleteData')->with(['books' => $books]);
    }

    public function editdata($id)
    {
        $editBook = DB::table('books')->where('id', $id)->get();
        return view('EditData')->with(['editBook' => $editBook]);

    }

}

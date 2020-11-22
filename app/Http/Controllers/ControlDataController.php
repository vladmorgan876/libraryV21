<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;

class ControlDataController extends Controller
{
    public function control(Request $request)
    {

        $this->validate($request, [
            'image' => 'required|mimes:jpeg|dimensions:min_width=150,min_height=300',
        ]);
        $this->name = $request->name;
        $this->author = $request->author;
        $this->category = $request->category;
        $this->discription = $request->discription;
        $this->newimage = $request->file('image')->store('newimage', 'public');

        DB::table('books')->insert(['name' => $this->name, 'author' => $this->author,
            'category' => $this->category, 'description' => $this->discription, 'picture' => $this->newimage]);
        return view('FormControlData')->with(['newimage' => $this->newimage]);


    }
}

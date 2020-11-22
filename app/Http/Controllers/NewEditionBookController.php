<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class NewEditionBookController extends Controller
{
    public function NewEdition($id, Request $request)
    {
        $this->name = $request->name;
        $this->author = $request->author;;
        $this->category = $request->category;;
        $this->discription = $request->discription;;
        $newimage = $request->file('image')->store('newimage', 'public');
        $this->newimage = $newimage;

        $newEdition = DB::table('books')->find($id);
        $newEdition->name = $this->name;
        $newEdition->author = $this->author;
        $newEdition->category = $this->category;
        $newEdition->discription = $this->discription;
        $newEdition->newimage = $this->newimage;

        DB::table('books')->where('id', $id)->update(['name' => $newEdition->name, 'author' => $newEdition->author, 'category' => $newEdition->category, 'description' => $newEdition->discription, 'picture' => $newEdition->newimage]);

        return redirect()->route('BookController');

    }
}

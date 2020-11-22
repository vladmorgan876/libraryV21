<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class VueAuthController extends Controller
{
    public function showformVue()
    {
        return view('VueAuth');
    }
}

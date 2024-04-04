<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Categoria;
use Illuminate\Support\Facades\DB;

class CategoriaController extends Controller
{
    function ola() {
        $categorias = DB::select('select * from categoria');
        var_dump($categorias);
    }

    //
    function listar() {
        $categorias = Categoria::all();
        return view('categoria', compact('categorias'));
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Categoria;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\CategoriaRequest;

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

    function novo() {
        $categoria = new Categoria();
        $categoria->id = 0;
        return view('frm_categoria', compact('categoria'));
    }

    function salvar(CategoriaRequest $request) {
        if ($request->input('id') == 0) {
            $categoria = new Categoria();
        } else {
            $categoria = Categoria::find($request->input('id'));
        }
        $categoria->descricao = $request->input('descricao');
        $categoria->save();
        return redirect('/categoria');
    }

    function salvar1(Request $request) {
        $validatedData = $request->validate([
            'descricao' => ['required', 'min:10'],
        ]);
        

        if ($request->input('id') == 0) {
            $categoria = new Categoria();
        } else {
            $categoria = Categoria::find($request->input('id'));
        }
        $categoria->descricao = $request->input('descricao');
        $categoria->save();
        return redirect('/categoria');
    }

    function excluir($id) {
        $categoria = Categoria::find($id);
        $categoria->delete();
        return redirect('/categoria');
    }

    function editar($id) {
        $categoria = Categoria::find($id);
        return view("frm_categoria", compact('categoria'));

    }
}
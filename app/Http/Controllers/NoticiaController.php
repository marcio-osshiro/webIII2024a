<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Noticia;

class NoticiaController extends Controller
{
    //
    function listar() {
        $noticias = Noticia::orderBy('data')->get();
        return view('noticia', compact('noticias'));
    }

    function novo() {
        $noticia = new Noticia();
        $noticia->id = 0;
        return view('frm_noticia', compact('noticia'));
    }

    function salvar(Request $request) {
        if ($request->input("id") == 0) {
            $noticia = new Noticia();
        } else {
            $noticia = Noticia::find($request->input('id'));
        }
        $noticia->data = $request->input('data');
        $noticia->autor = $request->input('autor');
        $noticia->titulo = $request->input('titulo');
        $noticia->descricao = $request->input('descricao');
        $noticia->categoria_id = $request->input('categoria_id');
        $noticia->save();
        return redirect('/noticia');
    }
}

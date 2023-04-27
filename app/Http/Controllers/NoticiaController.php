<?php

namespace App\Http\Controllers;

use App\Models\Categoria;
use App\Models\Autor;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use App\Models\Noticia;
use Illuminate\Http\Request;

class NoticiaController extends Controller
{
    function listar()
    {
        $noticias = Noticia::orderBy('data')->get();
        return view('listagemNoticia', compact('noticias'));
    }

    function novo()
    {
        $noticia = new Noticia();
        $noticia->id = 0;
        $categorias = Categoria::orderBy('categoria')->get();
        $autors = Autor::orderBy('nome')->get();
        return view('frmNoticia', compact('noticia', 'categorias', 'autors'));
    }

    function salvar(Request $request)
    {
        if ($request->input('id') == 0) {
            $noticia = new Noticia();
        } else {
            $noticia = Noticia::find($request->input('id'));
        }

        if ($request->hasFile('arquivo')) {
            $arquivo = $request->arquivo;
            var_dump($arquivo);
            $figurasalva= $arquivo -> store('public/imagens');
            var_dump($figurasalva);
            $figurasalva= explode("/",$figurasalva);
            $tamanho= count($figurasalva);
            if($noticia->figura != ""){
             Storage::delete("public/imagens/$noticia->figura");   
            }
            $noticia->figura = $figurasalva[$tamanho - 1];
          
        }


        $noticia->data = $request->input('data');
        $noticia->categoria_id = $request->input('categoria');
        $noticia->titulo = $request->input('titulo');
        $noticia->texto = $request->input('texto');
        $noticia->autor_id = $request->input('autor');
        $noticia->save();
        return redirect('noticia/listar');
    }

    function editar($id)
    {
        $noticia = Noticia::find($id);
        $categorias = Categoria::orderBy('categoria')->get();
        $autors = Autor::orderBy('nome')->get();
        return view('frmNoticia', compact('noticia', 'categorias', 'autors'));
    }

    function excluir($id)
    {
        $noticia = Noticia::find($id);
        $noticia->delete();
        return redirect('noticia/listar');
    }

}
<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use App\Models\Categoria;

class CategoriaController extends Controller
{
    function listar()
    {
        //DB::select('SELECT* FROM categoria');
        $categorias = Categoria::orderBy('categoria')->get();
        return view('listagemCategoria', compact('categorias'));
    }

    function novo()
    {
        $categoria = new Categoria();
        $categoria->id = 0;
        return view('frmCategoria', compact('categoria'));
    }

    function salvar(Request $request)
    {
        if ($request->input('id') == 0) {
            $categoria = new Categoria();
        } else {
            $categoria = Categoria::find($request->input('id'));
        }

      
        if ($request->hasFile('arquivo')) {
            $arquivo = $request->arquivo;
            var_dump($arquivo);
            $figurasalva= $arquivo -> store('public/imagens');
            var_dump($figurasalva);
            $figurasalva= explode("/",$figurasalva);
            $tamanho= count($figurasalva);
            if($categoria->figura != ""){
             Storage::delete("public/imagens/$categoria->figura");   
            }
            $categoria->figura = $figurasalva[$tamanho - 1];
          
        }

        $categoria->categoria =
            $request->input('categoria');
        $categoria->save();
        return redirect('categoria/listar');
    }

    function editar($id){
        $categoria = Categoria::find($id);
        return view('frmCategoria', compact('categoria'));
    }

    function excluir($id)
    {
        $categoria = Categoria::find($id);
        $categoria->delete();
        return redirect('categoria/listar');
    }

}
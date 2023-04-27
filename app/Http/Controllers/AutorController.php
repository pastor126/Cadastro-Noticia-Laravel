<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use App\Models\Autor;

class AutorController extends Controller
{
    function listar(){
        $autors = Autor::orderBy('nome')->get();
        return view('listagemAutor', compact('autors'));
 }

        function novo(){
            $autor = new Autor();
            $autor -> id = 0;
            return view('frmAutor', compact('autor'));
        }

        function salvar(Request $request)
        {
            if ($request->input('id') == 0) {
                $autor = new Autor();
            } else {
                $autor = Autor::find($request->input('id'));
            }

        if ($request->hasFile('arquivo')) {
            $arquivo = $request->arquivo;
            var_dump($arquivo);
            $figurasalva= $arquivo -> store('public/imagens');
            var_dump($figurasalva);
            $figurasalva= explode("/",$figurasalva);
            $tamanho= count($figurasalva);
            if($autor->figura != ""){
             Storage::delete("public/imagens/$autor->figura");   
            }
            $autor->figura = $figurasalva[$tamanho - 1];
          
        }

            $autor->nome = $request->input('nome');
            $autor->cpf = $request->input('cpf');
            $autor->save();
            return redirect('autor/listar');
        }
    
        function editar($id)
        {
            $autor = autor::find($id);
            return view('frmAutor', compact('autor'));
        }
    
        function excluir($id)
        {
            $autor = autor::find($id);
            $autor->delete();
            return redirect('autor/listar');
        }
    
    }




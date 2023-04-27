@extends('template')

@section('conteudo')
<h3>Cadastro de Categoria</h3>

    @if($categoria->figura != "")
    <img style="width:150px;height:150px;object-fit:cover;border-radius:20px;border:1px solid gray;padding: 0.25rem" src="/storage/imagens/{{$categoria->figura}}">
    @endif

    <form action="{{url('categoria/salvar')}}" method="post" enctype="multipart/form-data">
    @csrf
      <div class="mb-3">
          <label for="id" class="form-label">ID</label>
          <input readonly type="text" class="form-control" id="id" value="{{$categoria->id}}" name="id">
      </div>
      <div class="mb-3">
          <label for="categoria" class="form-label">Descrição</label>
          <input type="text" class="form-control" id="categoria" value="{{$categoria->categoria}}" name="categoria">
      </div>

      <div class="mb-3">
          <label for="arquivo" class="form-label">Figura</label>
          <input type="file" class="form-control" id="arquivo" name="arquivo" accept="image/*">
      </div>

      <button class="btn btn-primary" type="submit" name="button">Salvar</button>
      <a class="btn btn-success"  href="{{url('categoria/listar')}}" >Voltar</a>
    </form>
@endsection

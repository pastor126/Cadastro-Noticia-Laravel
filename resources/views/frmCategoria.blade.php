@extends('template')

@section('conteudo')
<h3>Cadastro de Categoria</h3>
    <form action="{{url('categoria/salvar')}}" method="post">
    @csrf
      <div class="mb-3">
          <label for="id" class="form-label">ID</label>
          <input readonly type="text" class="form-control" id="id" value="{{$categoria->id}}" name="id">
      </div>
      <div class="mb-3">
          <label for="categoria" class="form-label">Descrição</label>
          <input type="text" class="form-control" id="categoria" value="{{$categoria->categoria}}" name="categoria">
      </div>

      <button class="btn btn-primary" type="submit" name="button">Salvar</button>
      <a class="btn btn-success"  href="{{url('categoria/listar')}}" >Voltar</a>
    </form>
@endsection

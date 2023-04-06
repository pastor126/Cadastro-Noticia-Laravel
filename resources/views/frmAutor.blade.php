@extends('template')

@section('conteudo')
<h3>Cadastro de Autor</h3>
    <form action="{{url('autor/salvar')}}" method="post">
    @csrf
      <div class="mb-3">
          <label for="id" class="form-label">ID</label>
          <input readonly type="text" class="form-control" id="id" value="{{$autor->id}}" name="id">
      </div>
      <div class="mb-3">
          <label for="autor" class="form-label">Nome</label>
          <input type="text" class="form-control" id="nome" value="{{$autor->nome}}" name="nome">
      </div>
      <div class="mb-3">
          <label for="autor" class="form-label">CPF</label>
          <input type="text" class="form-control" id="cpf" value="{{$autor->cpf}}" name="cpf">
      </div>

      <button class="btn btn-primary" type="submit" name="button">Salvar</button>
      <a class="btn btn-success"  href="{{url('autor/listar')}}" >Voltar</a>
    </form>
@endsection

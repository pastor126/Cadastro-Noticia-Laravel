@extends('template')

@section('conteudo')
<h3>Cadastro de Noticia</h3>
    <form action="{{url('noticia/salvar')}}" method="post">
    @csrf
      <div class="mb-3">
          <label for="id" class="form-label">ID</label>
          <input readonly type="text" class="form-control" id="id" value="{{$noticia->id}}" name="id">
      </div>
      <div class="mb-3">
          <label for="noticia" class="form-label">Titulo</label>
          <input type="text" class="form-control" id="titulo" value="{{$noticia->titulo}}" name="titulo">
      </div>
      <div class="mb-3">
          <label for="noticia" class="form-label">Categoria</label>
          <select class="form-select" name="categoria" id="categoria">
          @foreach($categorias as $categoria)
        <option value="{{ $categoria->id }}" {{ $categoria->id == old('categoria_id', $noticia->categoria_id) ? 'selected' : '' }}>{{ $categoria->categoria }}</option>
          @endforeach
          </select>
        </div>

      <div class="mb-3 mt-3">
          <label for="texto" class="form-label">Conteúdo</label>
          <textarea type="textarea" class="form-control" id="texto" name="texto">{{$noticia->texto}}</textarea>
      </div>

      <div class="mb-3">
          <label for="noticia" class="form-label">Autor</label>
          <select class="form-select" name="autor" id="autor">
          @foreach($autors as $autor)
        <option value="{{ $autor->id }}" {{ $autor->id == old('autor_id', $noticia->autor_id) ? 'selected' : '' }}>{{ $autor->nome }}</option>
          @endforeach
          </select>
      </div>

      <div class="mb-3">
          <label for="noticia" class="form-label">Data</label>
          <input type="date" class="form-control" id="data" value="{{$noticia->data}}" name="data">
      </div>

      <button class="btn btn-primary" type="submit" name="button">Salvar</button>
      <a class="btn btn-success"  href="{{url('noticia/listar')}}" >Voltar</a>
    </form>
@endsection
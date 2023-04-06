@extends('template')


<!--  Abre seção 'conteudo' do template -->
@section('conteudo')
  <h5>Notícias</h5>

  <a class="btn btn-success mb-2" href="novo">Nova Notícia</a>
    
    <table class="table table-bordered table-striped">
      <thead>
        <tr>
          <th>ID</th>
          <th>Data</th>
          <th>Categoria</th>
          <th>Título</th>
          <th>Conteúdo</th>
          <th>Autor</th>
        </tr>
      </thead>

      <tbody>
        <!--foreach do Laravel substitui php echo -->
        @foreach($noticias as $noticia)
        <tr>
          <td>{{$noticia->id}}</td>
          <td>{{$noticia->data}}</td>
          <td>{{$noticia->categoria->categoria}}</td>
          <td>{{$noticia->titulo}}</td>
          <td>{{$noticia->texto}}</td>
          <td>{{$noticia->autor->nome}}</td>
          <td><a class='btn btn-primary' href='editar/{{$noticia->id}}'>Editar</a>  </td>
          <td><a class='btn btn-danger' href='excluir/{{$noticia->id}}'>Excluir</a>  </td>
        </tr>
        @endforeach
      </tbody>
    </table>
  
<!--  fecha a seção do template. -->
@endsection
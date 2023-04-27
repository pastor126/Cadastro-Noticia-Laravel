
<!-- Estende o template -->
@extends('template')


<!--  Abre seção 'conteudo' do template -->
@section('conteudo')
  <h1>Listagem de Categorias</h1>

  <a class="btn btn-success mb-2" href="novo">Cadastra Categoria</a>
    
    <table class="table table-bordered table-striped">
      <thead>
        <tr>
          <th>ID</th>
          <th></th>
          <th>Descrição</th>
          <th></th>
          <th></th>
        </tr>
      </thead>

      <tbody>
        <!--foreach do Laravel substitui php echo -->
        @foreach($categorias as $categoria)
        <tr>
          <td>{{$categoria->id}}</td>
          <td>
            @if($categoria->figura != "")
              <img style="width:4rem;height:4rem;object-fit:cover" src="/storage/imagens/{{$categoria->figura}}">
            @endif
          </td>
          <td>{{$categoria->categoria}}</td>
          <td><a class='btn btn-primary' href='editar/{{$categoria->id}}'>Editar</a>  </td>
          <td><a class='btn btn-danger' href='excluir/{{$categoria->id}}'>Excluir</a>  </td>
        </tr>
        @endforeach
      </tbody>
    </table>
  


<!--  fecha a seção do template. -->
@endsection

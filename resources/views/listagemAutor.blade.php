<!-- Estende o template -->
@extends('template')


<!--  Abre seção 'conteudo' do template -->
@section('conteudo')
  <h1>Listagem de Autores</h1>

  <a class="btn btn-success mb-2" href="novo">Cadastra Autor</a>
    
    <table class="table table-bordered table-striped">
      <thead>
        <tr>
          <th>ID</th>
          <th>Nome</th>
          <th>CPF</th>
          <th></th>
        </tr>
      </thead>

      <tbody>
        <!--foreach do Laravel substitui php echo -->
        @foreach($autors as $autor)
        <tr>
          <td>{{$autor->id}}</td>
          <td>{{$autor->nome}}</td>
          <td>{{$autor->cpf}}</td>
          <td><a class='btn btn-primary' href='editar/{{$autor->id}}'>Editar</a>  </td>
          <td><a class='btn btn-danger' href='excluir/{{$autor->id}}'>Excluir</a>  </td>
        </tr>
        @endforeach
      </tbody>
    </table>
  
<!--  fecha a seção do template. -->
@endsection

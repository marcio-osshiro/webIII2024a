<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  <body class="container" >
  <h1>Lista de Noticias</h1>
  <a href="noticia/novo" class="btn btn-primary">Nova Notícia</a>
  <table class="table table-bordered table-stripped">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Data</th>
      <th scope="col">Autor</th>
      <th scope="col">Título</th>
      <th scope="col">Excluir</th>
      <th scope="col">Editar</th>
    </tr>
  </thead>
  <tbody>

    @foreach ($noticias as $noticia)
        <tr>
        <th scope="row">{{ $noticia->id }}</th>
        <td>{{ $noticia->data }}</td>
        <td>{{ $noticia->autor }}</td>
        <td>{{ $noticia->titulo }}</td>
        <td><a href="/noticia/excluir/{{$noticia->id}}" class="btn btn-danger">-</a></td>
        <td><a href="/noticia/editar/{{$noticia->id}}" class="btn btn-primary">+</a></td>
        </tr>
    @endforeach      
  </tbody>
</table>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>

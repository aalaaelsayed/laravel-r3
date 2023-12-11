<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
@include('includes.nav')
<div class="container">
  <h2> car list</h2>
  <p></p>            
  <table class="table table-hover">
    <thead>
      <tr>
        <th>title</th>
        <th>description</th>
        <th>published</th>
        <th>published</th>

      </tr>
    </thead>
    <tbody>
        @foreach($cars as $car)
      <tr>
        <td>{{ $car->title }}</td>
        <td>{{ $car->description }}</td>
        <td>{{ $car->published }} </td>
        <td>@if($car->published)yes @else no @endif</td>

      </tr>
     @endforeach
    </tbody>
  </table>
</div>

</body>
</html>

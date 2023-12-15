<!DOCTYPE html>
<html lang="en">
<head>
  <title>posts</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
@include('includes.nav')
<div class="container">
  <h2> posts</h2>
  <p></p>            
  <table class="table table-hover">
    <thead>
      <tr>
        <th>id</th>
        <th>post_title</th>
        <th>description</th>
        <th>auther</th>
        <th>created_at	</th>
        <th>published</th>
        <th>edit</th>
        <th>show</th>

      </tr>
    </thead>
    <tbody>
        @foreach($posts as $post)
      <tr>
      <td>{{ $post->id }}</td>
        <td>{{ $post->title }}</td>
        <td>{{ $post->description }}</td>
        <td>{{ $post->auther }} </td>
        <td>{{ $post->created_at	 }} </td>
        <td>@if($post->published)yes @else no @endif</td>
        <td><a href="updatePost/{{ $post->id }}">Edit</a></td>
        <td><a href="showPost/{{ $post->id }}">show</a></td>

      </tr>
     @endforeach
    </tbody>
  </table>
</div>

</body>
</html>

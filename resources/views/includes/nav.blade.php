<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">cars</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/cars">Home</a></li>
      <li><a href="{{ route('createCar') }}">createcar</a></li>
      <li><a href="{{ route('trashed') }}">trashed</a></li>
      <li><a href="{{ LaravelLocalization::getLocalizedURL('en') }}">english </a></li>
      <li><a href="{{ LaravelLocalization::getLocalizedURL('ar') }}">عربى</a></li>

    </ul>
  </div>
</nav>
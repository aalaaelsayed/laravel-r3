
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        @include('includes.head')
    </head>
    <body>
	
		<!-- Preloader -->
        @include('includes.Preloader')

		@include('includes.header')
		
	
@yield('content')
		
		@include('includes.footer')
        @yield('afterFooter')

		@include('includes.footerJs')

		
    </body>
</html>
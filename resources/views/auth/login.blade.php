
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Log in</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{asset('themes/plugins/fontawesome-free/css/all.min.css')}}">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="{{asset('themes/plugins/icheck-bootstrap/icheck-bootstrap.min.css')}}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{asset('themes/dist/css/adminlte.min.css')}}">
  <!-- SweetAlert2 -->
  <link rel="stylesheet" href="{{asset('themes/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css')}}">
  {{-- Toastr --}}
  <link rel="stylesheet" href="{{asset('themes/plugins/toastr/toastr.min.css')}}">
  <style>
    body{
      padding:100px 0;
      background-color:#efefef
    }
    a, a:hover{
      color:#333
    }
  </style>
</head>

<body class="hold-transition login-page">
<div class="login-box">
  <!-- /.login-logo -->
  <div class="card card-outline card-primary">
    <div class="card-header text-center">
      <a href="#" class="h1"><b>Admin</b>LTE</a>
    </div>
    <div class="card-body">
      <p class="login-box-msg">Sign in to start your session</p>

      <form action="{{route('post-login')}}" method="POST">
        @csrf
        <div class="input-group mb-3">
          <input type="email" class="form-control" placeholder="Email" name="email" id="email-login" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3" id="password-login">
          <input type="password" class="form-control" placeholder="Password" name="password" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <div class="input-group-addon">
                <a href="#"><i class="fas fa-eye-slash" aria-hidden="true"></i></a>
              </div>
              {{-- <span class="fas fa-eye-slash"></span> --}}
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="remember">
              <label for="remember">
                Remember Me
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">Sign In</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

      {{-- <div class="social-auth-links text-center mt-2 mb-3">
        <a href="#" class="btn btn-block btn-primary">
          <i class="fab fa-facebook mr-2"></i> Sign in using Facebook
        </a>
        <a href="#" class="btn btn-block btn-danger">
          <i class="fab fa-google-plus mr-2"></i> Sign in using Google+
        </a>
      </div> --}}

    </div>
    <!-- /.card-body -->
  </div>
  <!-- /.card -->
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="{{asset('themes/plugins/jquery/jquery.min.js')}}"></script>
<!-- Bootstrap 4 -->
<script src="{{asset('themes/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<!-- AdminLTE App -->
<script src="{{asset('themes/dist/js/adminlte.min.js')}}"></script>
<!-- SweetAlert2 -->
<script src="{{asset('themes/plugins/sweetalert2/sweetalert2.min.js')}}"></script>
{{-- Toastr --}}
<script src="{{asset('themes/plugins/toastr/toastr.min.js')}}"></script>

@stack('custom-script')
@if (session('error'))
  @push('custom-scripts')
    <script type="text/javascript">
        $(function() {
            const Toast = Swal.mixin({
                toast: true,
                position: 'top-end',
                showConfirmButton: false,
                timer: 3000,
                timerProgressBar: true,
                onOpen: (toast) => {
                    toast.addEventListener('mouseenter', Swal.stopTimer)
                    toast.addEventListener('mouseleave', Swal.resumeTimer)
                }
            });
            Toast.fire({
                icon: 'danger',
                title: '{{ session('error') }}',
            })              
        });
    </script>
  @endpush
@endif

{{-- Show / Hide Password --}}
<script>
  $(document).ready(function() {
    $("#password-login a").on('click', function(event) {
        event.preventDefault();
        if($('#password-login input').attr("type") == "text"){
            $('#password-login input').attr("type", "password");
            $('#password-login i').addClass( "fa fa-eye-slash" );
            $('#password-login i').removeClass( "fas fa-eye" );
        }else if($('#password-login input').attr("type") == "password"){
            $('#password-login input').attr("type", "text");
            $('#password-login i').removeClass( "fa fa-eye-slash" );
            $('#password-login i').addClass( "fas fa-eye" );
        }
    });
  });
</script>

</body>
</html>
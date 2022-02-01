@extends('layouts.master')
@section('title','Dashboard')
@section('content-header')
    Data User
    @if (session('success-add'))
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
                    icon: 'success',
                    title: '{{ session('success-add') }}',
                })              
            });
        </script>
      @endpush
    @endif
@endsection
@section('main-content')

<div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-header">
          {{-- <h3 class="card-title">Data User</h3> --}}
          <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#modal-user"><i class="fas fa-plus mr-2"></i>Tambah Data</button>
          <button type="button" class="btn btn-default btn-sm"><i class="fas fa-print mr-2"></i>Cetak</button>
          <div class="card-tools">
            <div class="input-group input-group-sm" style="width: 150px;">
              <input type="text" name="table_search" class="form-control float-right" placeholder="Search">

              <div class="input-group-append">
                <button type="submit" class="btn btn-default">
                  <i class="fas fa-search"></i>
                </button>
              </div>
            </div>
          </div>
        </div>
        <!-- /.card-header -->
        <div class="card-body table-responsive p-0">
          <table class="table table-hover text-nowrap">
            <thead>
              <tr>
                <th>#</th>
                <th>Nama</th>
                <th>Email</th>
                <th>Role</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
                @foreach ($users as $item)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td>{{$item->name}}</td>
                        <td>{{$item->email}}</td>
                        <td>{{$item->role}}</td>
                        <td>
                          <form action="{{route('delete-user', $item->id)}}" method="DELETE">
                            @csrf
                            <button type="button" id="btn-edit" class="btn btn-warning btn-xs" 
                                  data-toggle="modal" 
                                  data-target="#modal-user-edit" 
                                  data-name="{{$item->name}}"
                                  data-email="{{$item->email}}"
                                  data-role="{{$item->role}}"
                                  data-password="{{$item->password}}"
                                  ><i class="fas fa-pencil-alt mr-2"></i>Edit</button>
                            <button type="submit" id="btn-hapus" class="btn btn-danger btn-xs"><i class="fas fa-trash mr-2"></i>Hapus</button>
                          </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
          </table>
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->
    </div>
  </div>
  
  {{-- Modal Add User --}}
  <div class="modal fade" id="modal-user" aria-hidden="true" style="display: none;">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Input Data User</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <form class="form-horizontal" id="form-user" action="{{route('add-user')}}" method="POST">
          @csrf
          <div class="modal-body">  
            <div class="form-group row">
              <label for="exampleInputName" class="col-sm-2 col-form-label">Nama</label>
              <div class="col-sm-10">
                <input type="text" class="form-control @error('name') is-invalid @enderror" id="exampleInputName" 
                    placeholder="Masukkan Nama" name="name" value="{{old('name')}}">
                @error('name') <span class="text-danger">{{$message}}</span> @enderror
              </div>
            </div>
            <div class="form-group row">
              <label for="exampleInputEmail" class="col-sm-2 col-form-label">Email</label>
              <div class="col-sm-10">
                <input type="email" class="form-control @error('email') is-invalid @enderror" id="exampleInputEmail" placeholder="Masukkan Email" name="email" value="{{old('email')}}">
                @error('email') <span class="text-danger">{{$message}}</span> @enderror
              </div>
            </div>
            <div class="form-group row">
              <label for="exampleInputRole" class="col-sm-2 col-form-label">Role</label>
              <div class="col-sm-10">
                <select class="form-control" name="role_id" id="exampleInputRole">
                  @foreach ($userroles as $item)
                    <option value="{{ $item->id }}" {{ old("id") == $item->id ? "selected":"" }}>{{ $item->role }}</option>
                  @endforeach
                </select>
              </div>
            </div>
            <div class="form-group row">
              <label for="exampleInputPassword" class="col-sm-2 col-form-label">Password</label>
              <div class="col-sm-10">
                <input type="password" class="form-control @error('password') is-invalid @enderror" id="exampleInputPassword" placeholder="Masukkan Password" name="password">
                @error('password') <span class="text-danger">{{$message}}</span> @enderror
              </div>
            </div>
            <div class="form-group row">
              <label for="exampleInputPassword" class="col-sm-2 col-form-label">Konfirmasi Password</label>
              <div class="col-sm-10">
                <input type="password" class="form-control" id="exampleInputPassword" placeholder="Konfirmasi Password" name="password_confirmation">
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="reset" class="btn btn-default btn-sm float-right"><i class="fas fa-undo-alt mr-2"></i>Batal</button>
            <button type="submit" class="btn btn-primary btn-sm float-right" onclick="validateData()"><i class="fas fa-save mr-2"></i>Simpan</button>
            <button type="button" class="btn btn-danger btn-sm pull-right" data-dismiss="modal" onclick="ClearForm()"><i class="fas fa-times mr-2"></i>Tutup</button>
          </div>
        </form>
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>

  {{-- Modal Add User --}}
  <div class="modal fade" id="modal-user-edit" aria-hidden="true" style="display: none;">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Edit Data User</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <form class="form-horizontal" id="form-user" action="{{route('edit-user')}}" method="POST">
          @csrf
          <div class="modal-body">  
            <div class="form-group row">
              <label for="exampleInputName" class="col-sm-2 col-form-label">Nama</label>
              <div class="col-sm-10">
                <input type="text" class="form-control @error('name') is-invalid @enderror" id="exampleInputName" 
                    placeholder="Masukkan Nama" name="name" value="{{old('name')}}">
                @error('name') <span class="text-danger">{{$message}}</span> @enderror
              </div>
            </div>
            <div class="form-group row">
              <label for="exampleInputEmail" class="col-sm-2 col-form-label">Email</label>
              <div class="col-sm-10">
                <input type="email" class="form-control @error('email') is-invalid @enderror" id="exampleInputEmail" placeholder="Masukkan Email" name="email" value="{{old('email')}}">
                @error('email') <span class="text-danger">{{$message}}</span> @enderror
              </div>
            </div>
            <div class="form-group row">
              <label for="exampleInputRole" class="col-sm-2 col-form-label">Role</label>
              <div class="col-sm-10">
                <select class="form-control" name="role_id" id="exampleInputRole">
                  @foreach ($userroles as $item)
                    <option value="{{ $item->id }}" {{ old("id") == $item->id ? "selected":"" }}>{{ $item->role }}</option>
                  @endforeach
                </select>
              </div>
            </div>
            <div class="form-group row">
              <label for="exampleInputPassword" class="col-sm-2 col-form-label">Password</label>
              <div class="col-sm-10">
                <input type="password" class="form-control @error('password') is-invalid @enderror" id="exampleInputPassword" placeholder="Masukkan Password" name="password">
                @error('password') <span class="text-danger">{{$message}}</span> @enderror
              </div>
            </div>
            <div class="form-group row">
              <label for="exampleInputPassword" class="col-sm-2 col-form-label">Konfirmasi Password</label>
              <div class="col-sm-10">
                <input type="password" class="form-control" id="exampleInputPassword" placeholder="Konfirmasi Password" name="password_confirmation">
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="reset" class="btn btn-default btn-sm float-right"><i class="fas fa-undo-alt mr-2"></i>Batal</button>
            <button type="submit" class="btn btn-primary btn-sm float-right" onclick="validateData()"><i class="fas fa-save mr-2"></i>Simpan</button>
            <button type="button" class="btn btn-danger btn-sm pull-right" data-dismiss="modal" onclick="ClearForm()"><i class="fas fa-times mr-2"></i>Tutup</button>
          </div>
        </form>
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>

  {{-- Clear Form --}}
  <script>
    function ClearForm() {
            document.getElementById("form-user").reset();
        }
  </script>

  {{-- Form Validation --}}
  <script>
    function validateData() {
      var validator = $("#form-user").validate({
        rules: {
          name: {
            required: true,
          },
          email: {
            required: true,
            email: true,
          },
          password: {
            required: true,
            minlength: 5
          },
          password_confirmation: {
            equalTo:#password
          },
          role: {
            required: true
          },
        },
        messages: {
          name:  "Masukkan nama",
          email: {
            required: "Masukkan alamat email",
            email: "Alamat email tidak valid"
          },
          role: "Masukkan role"
          password: {
            required: "Masukkan password",
            minlength: "Password minimal 5 karakter"
          },
          password_confirmation:  "Password tidak sesuai"
        },
        errorElement: 'span',
        errorPlacement: function (error, element) {
          error.addClass('invalid-feedback');
          element.closest('.form-group').append(error);
        },
        highlight: function (element, errorClass, validClass) {
          $(element).addClass('is-invalid');
        },
        unhighlight: function (element, errorClass, validClass) {
          $(element).removeClass('is-invalid');
        }
      });
    }
  </script>

  {{-- Delete Confirmation --}}
  <script type="text/javascript">
    function deleteConfirmation(id) {
        swal({
            title: "Hapus Data",
            text: "Apakah Anda yakin ingin menghapus data ini ?",
            type: "warning",
            showCancelButton: !0,
            confirmButtonText: "Ya",
            cancelButtonText: "Tidak",
            reverseButtons: !0
        }).then(function (e) {
            if (e.value === true) {
                var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('main-content');
                $.ajax({
                    type: 'POST',
                    url: "{{url('/delete-user')}}/" + id,
                    data: {_token: CSRF_TOKEN},
                    dataType: 'JSON',
                    success: function (results) {

                        if (results.success === true) {
                            swal("Sukses", results.message, "success");
                        } else {
                            swal("Gagal", results.message, "error");
                        }
                    }
                });

            } else {
                e.dismiss;
            }

        }, function (dismiss) {
            return false;
        })
    }
</script>

<script>
  // $('#modal-user-edit').on('show.bs.modal', function (event) {
  //   var button = $(event.relatedTarget)
  //   var name = button.data('name')
  //   var email = button.data('email')
  //   var role = button.data('role')
  //   var password = button.data('password')
  //   var modal = $(this)
  //   modal.find('.modal-body input[id="exampleInputName"]').val(name)
  //   modal.find('.modal-body input[id="exampleInputEmail"]').val(email)
  //   modal.find('.modal-body select[id="exampleInputRole"]').val(role)
  //   modal.find('.modal-body input[id="exampleInputPassword"]').val(password)
  // })

  var Modal = document.getElementById('modal-user-edit')
    Modal.addEventListener('show.bs.modal', function (event) {  
    var button = event.relatedTarget
    var name = button.getAttribute('name')
    var email = button.getAttribute('email')
    var role = button.getAttribute('role')
    var password = button.getAttribute('password')
    
    var inputname = Modal.querySelector('.modal-body input[name="name"]')
    inputname.value = name
    var inputemail = Modal.querySelector('.modal-body input[name="email"]')
    inputemail.value = Email
    var inputrole = Modal.querySelector('.modal-body select[name="role_id"]')
    inputrole.value = role
    var inputpassword = Modal.querySelector('.modal-body input[name="password"]')
    inputpassword.value = password
    var inputkonfimrasipassword = Modal.querySelector('.modal-body input[name="password_confirmation"]')
    inputkonfirmasipassword.value = password
})
</script>
@endsection
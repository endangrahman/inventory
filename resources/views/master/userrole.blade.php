@extends('layouts.master')
@section('title','Dashboard')
@section('content-header')
    Data User Role
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
          <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#modal-user-role"><i class="fas fa-plus mr-2"></i>Tambah Data</button>
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
                <th>Role</th>
                <th>Status Aktif</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
                @foreach ($userroles as $item)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td>{{$item->role}}</td>
                        <td>{{$item->statusaktif}}</td>
                        <td>
                          <form action="{{route('delete-user-role', $item->id)}}" method="DELETE">
                            @csrf
                            <button type="button" id="btn-edit" class="btn btn-warning btn-xs"><i class="fas fa-pencil-alt mr-2"></i>Edit</button>
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
  
  {{-- Modal User --}}
  <div class="modal fade" id="modal-user-role" aria-hidden="true" style="display: none;">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Input Data User Role</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <form class="form-horizontal" id="form-user-role" action="{{route('add-user-role')}}" method="POST">
          @csrf
          <div class="modal-body">
            <div class="form-group row">
              
              <label for="exampleInputRole" class="col-sm-2 col-form-label">Role</label>
              <div class="col-sm-10">
                <input type="text" class="form-control @error('role') is-invalid @enderror" id="exampleInputRole" placeholder="Masukkan User Role" name="role" value="{{old('role')}}">
                @error('role') <span class="text-danger">{{$message}}</span> @enderror
              </div>
              
              <label for="exampleInputRole" class="col-sm-2 col-form-label"></label>
              <div class="col-sm-10">
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="statusaktif" value="0">
                    <label class="form-check-label" for="exampleCheck1">Status Aktif</label>
                </div>
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
            document.getElementById("form-user-role").reset();
        }
  </script>

  {{-- Form Validation --}}
  <script>
    function validateData() {
      var validator = $("#form-user-role").validate({
            rules: {
            role: {
                required: true,
            },
            messages: {
            role:  "Masukkan user role"
            }
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
                    url: "{{url('/delete-user-role')}}/" + id,
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
@endsection
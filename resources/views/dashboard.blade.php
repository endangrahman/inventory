@extends('layouts.master')
@section('title','Dashboard')
@section('content-header')
    Dashboard
    @if (session('success'))
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
                    title: '{{ session('success') }}',
                })                
            });
        </script>
      @endpush
    @endif
@endsection
@section('main-content')
<div class="row">
    <div class="col-lg-3 col-6">
        <!-- small card -->
        <div class="small-box bg-info">
        <div class="inner">
            <h3>150</h3>

            <p>New Orders</p>
        </div>
        <div class="icon">
            <i class="fas fa-shopping-cart"></i>
        </div>
        <a href="#" class="small-box-footer">
            More info <i class="fas fa-arrow-circle-right"></i>
        </a>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
        <!-- small card -->
        <div class="small-box bg-success">
        <div class="inner">
            <h3>53<sup style="font-size: 20px">%</sup></h3>

            <p>Bounce Rate</p>
        </div>
        <div class="icon">
            <i class="ion ion-stats-bars"></i>
        </div>
        <a href="#" class="small-box-footer">
            More info <i class="fas fa-arrow-circle-right"></i>
        </a>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
        <!-- small card -->
        <div class="small-box bg-warning">
        <div class="inner">
            <h3>44</h3>

            <p>User Registrations</p>
        </div>
        <div class="icon">
            <i class="fas fa-user-plus"></i>
        </div>
        <a href="#" class="small-box-footer">
            More info <i class="fas fa-arrow-circle-right"></i>
        </a>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
        <!-- small card -->
        <div class="small-box bg-danger">
        <div class="inner">
            <h3>65</h3>

            <p>Unique Visitors</p>
        </div>
        <div class="icon">
            <i class="fas fa-chart-pie"></i>
        </div>
        <a href="#" class="small-box-footer">
            More info <i class="fas fa-arrow-circle-right"></i>
        </a>
        </div>
    </div>
    <!-- ./col -->
</div>
@endsection
<?php

use Illuminate\Routing\RouteGroup;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return Redirect()->route('login');
});

Route::get('login',[App\Http\Controllers\Auth\LoginController::class, 'login'])->name('login');
Route::post('login',[App\Http\Controllers\Auth\LoginController::class, 'postLogin'])->name('post-login');
// Route::get('forgot-password',[App\Http\Controllers\Auth\ForgotPasswordController::class, 'forgotPassword'])->name('forgotPassword');

Route::group(['middleware' => ['auth','user_role:1,2,3']], function () {
    Route::get('dashboard', [App\Http\Controllers\DashboardController::class, 'index'])->name('dashboard');
    Route::get('logout', [App\Http\Controllers\Auth\LoginController::class, 'logout'])->name('logout');
});

// MASTER DATA
Route::group(['middleware' => ['auth','user_role:1']], function () {
    //User
    Route::get('user', [App\Http\Controllers\UserController::class, 'index'])->name('user');
    Route::post('add-user', [App\Http\Controllers\UserController::class, 'add'])->name('add-user');
    Route::post('edit-user', [App\Http\Controllers\UserController::class, 'edit'])->name('edit-user');
    Route::get('/delete-user/{id}', [App\Http\Controllers\UserController::class, 'delete'])->name('delete-user');
    //User Role
    Route::get('user-role', [App\Http\Controllers\UserRoleController::class, 'index'])->name('user-role');
    Route::post('add-user-role', [App\Http\Controllers\UserRoleController::class, 'add'])->name('add-user-role');
    Route::post('edit-user-role', [App\Http\Controllers\UserRoleController::class, 'edit'])->name('edit-user-role');
    Route::get('/delete-user-role/{id}', [App\Http\Controllers\UserRoleController::class, 'delete'])->name('delete-user-role');
    //Produk
    Route::get('produk', [App\Http\Controllers\ProdukController::class, 'index'])->name('produk');
    Route::get('add-produk', [App\Http\Controllers\ProdukController::class, 'add'])->name('add-produk');
    Route::get('edit-produk', [App\Http\Controllers\ProdukController::class, 'edit'])->name('edit-produk');
    Route::get('delete-produk', [App\Http\Controllers\ProdukController::class, 'delete'])->name('delete-produk');
    // Kategori Produk
    Route::get('kategori-produk', [App\Http\Controllers\KategoriProdukController::class, 'index'])->name('kategori-produk');
    Route::get('add-kategori-produk', [App\Http\Controllers\KategoriProdukController::class, 'add'])->name('add-kategori-produk');
    Route::get('edit-kategori-produk', [App\Http\Controllers\KategoriProdukController::class, 'edit'])->name('edit-kategori-produk');
    Route::get('delete-kategori-produk', [App\Http\Controllers\KategoriProdukController::class, 'delete'])->name('delete-kategori-produk');
    // Sumber Produk
    Route::get('sumber-produk', [App\Http\Controllers\SumberProdukController::class, 'index'])->name('sumber-produk');
    Route::get('add-sumber-produk', [App\Http\Controllers\SumberProdukController::class, 'add'])->name('add-sumber-produk');
    Route::get('edit-sumber-produk', [App\Http\Controllers\SumberProdukController::class, 'edit'])->name('edit-sumber-produk');
    Route::get('delete-sumber-produk', [App\Http\Controllers\SumberProdukController::class, 'delete'])->name('delete-sumber-produk');
    //Supplier
    Route::get('supplier', [App\Http\Controllers\SupplierController::class, 'index'])->name('supplier');
    Route::get('add-supplier', [App\Http\Controllers\SupplierController::class, 'add'])->name('add-supplier');
    Route::get('edit-supplier', [App\Http\Controllers\SupplierController::class, 'edit'])->name('edit-supplier');
    Route::get('delete-supplier', [App\Http\Controllers\SupplierController::class, 'delete'])->name('delete-supplier');
});

Route::group(['middleware' => ['auth','user_role:1,2']], function () {
    // Penerimaan Resep
    Route::get('penerimaan-resep', [App\Http\Controllers\TerimaResepController::class, 'index'])->name('terimaresep');
    Route::get('add-penerimaan-resep', [App\Http\Controllers\TerimaResepController::class, 'add'])->name('add-terimaresep');
    Route::get('edit-penerimaan-resep', [App\Http\Controllers\TerimaResepController::class, 'edit'])->name('edit-terimaresep');
    Route::get('laporan-penerimaan-resep', [App\Http\Controllers\TerimaResepController::class, 'index'])->name('lapterimaresep');
});

// TRANSAKSI
Route::group(['middleware' => ['auth','user_role:1,3']], function () {
    //Pemesanan Produk
    Route::get('pemesanan-produk', [App\Http\Controllers\OrderProdukController::class, 'index'])->name('order-produk');
    Route::get('add-pemesanan-produk', [App\Http\Controllers\OrderProdukController::class, 'add'])->name('add-order-produk');
    Route::get('edit-pemesanan-produk', [App\Http\Controllers\OrderProdukController::class, 'edit'])->name('edit-order-produk');
    // Penerimaan Produk
    Route::get('penerimaan-produk', [App\Http\Controllers\TerimaProdukController::class, 'index'])->name('terima-produk');
    Route::get('add-penerimaan-produk', [App\Http\Controllers\TerimaProdukController::class, 'add'])->name('add-terima-produk');
    Route::get('edit-penerimaan-produk', [App\Http\Controllers\TerimaProdukController::class, 'edit'])->name('edit-terima-produk');
    // Pengeluaran Produk
    Route::get('pengeluaran-produk', [App\Http\Controllers\KirimProdukController::class, 'index'])->name('kirim-produk');
    Route::get('add-pengeluaran-produk', [App\Http\Controllers\KirimProdukController::class, 'add'])->name('add-kirim-produk');
    Route::get('edit-pengeluaran-produk', [App\Http\Controllers\KirimProdukController::class, 'edit'])->name('edit-kirim-produk');
    //Laporan
    Route::get('laporan-pemesanan-produk', [App\Http\Controllers\OrderProdukController::class, 'cetak'])->name('cetak-order-produk');
    Route::get('laporan-penerimaan-produk', [App\Http\Controllers\TerimaProdukController::class, 'cetak'])->name('cetak-terima-produk');
    Route::get('laporan-pengeluaran-produk', [App\Http\Controllers\KirimProdukController::class, 'cetak'])->name('cetak-kirim-produk');
}); 

Route::get('kartu-stok', [App\Http\Controllers\KartuStokController::class, 'index'])->name('kartustok');
Route::get('info-stok', [App\Http\Controllers\InformasiController::class, 'infoStok'])->name('info-stok');
Route::get('info-harga', [App\Http\Controllers\InformasiController::class, 'infoHarga'])->name('info-harga');
Route::get('info-lokasi', [App\Http\Controllers\InformasiController::class, 'infoLokasi'])->name('info-lokasi');
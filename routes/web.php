<?php

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
    return view('welcome');
});

Route::get('/clientesData', "AdminCliente1Controller@listado");

Route::get('/productosData', "AdminProductoController@listado");


Route::post('/guardarPedido', "AdminPedidos19Controller@guardarPedido");
Route::post('/modificarPedido/{id}', "AdminPedidos19Controller@modificarPedido");

Route::get('admin/pedido/pedido_print/{id}', "AdminPedidos19Controller@imprimirPedido");


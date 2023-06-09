<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CategoriaController;
use App\Http\Controllers\AutorController;
use App\Http\Controllers\NoticiaController;
use App\Http\Controllers\NewsController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::get('/', function () {
    return view('index');
});


Route::get('/categoria/listar', [CategoriaController::class, 'listar']);

Route::get('/categoria/novo', [CategoriaController::class, 'novo']);

Route::post('/categoria/salvar', [CategoriaController::class, 'salvar']);

Route::get('/categoria/editar/{id}', [CategoriaController::class, 'editar']);

Route::get('/categoria/excluir/{ID}', [CategoriaController::class, 'excluir']);



Route::get('/autor/listar', [AutorController::class, 'listar']);

Route::get('/autor/novo', [AutorController::class, 'novo']);

Route::post('/autor/salvar', [AutorController::class, 'salvar']);

Route::get('/autor/editar/{id}', [AutorController::class, 'editar']);

Route::get('/autor/excluir/{id}', [AutorController::class, 'excluir']);


Route::get('/noticia/listar', [NoticiaController::class, 'listar']);

Route::get('/noticia/novo', [NoticiaController::class, 'novo']);

Route::post('/noticia/salvar', [NoticiaController::class, 'salvar']);

Route::get('/noticia/editar/{id}', [NoticiaController::class, 'editar']);

Route::get('/noticia/excluir/{id}', [NoticiaController::class, 'excluir']);


Route::get('/news', [NewsController::class, 'index']);
<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\ReportController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('/generate-report',[ReportController::class,'generateReport']);
Route::get('/list-reports',[ReportController::class,'listReports']);
Route::get('/get-report/{report_id}',[ReportController::class,'getReport']);

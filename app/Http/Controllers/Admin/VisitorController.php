<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Visitor;
use Illuminate\Contracts\Encryption\DecryptException;
use Illuminate\Http\Request;

class VisitorController extends Controller
{
    public function index()
    {
        try {
            return view('admin.activity.index',[
               'visitors' => Visitor::all(),
            ]);
        }catch (DecryptException $e){
            return view('admin.error.error');
        }
    }
    public function show($ip_address)
    {
        try {
            return view('admin.activity.detail',[
               'visitor' => Visitor::where('ip_address', $ip_address)->first(),
            ]);
        }catch (DecryptException $e){
            return view('admin.error.error');
        }
    }
}

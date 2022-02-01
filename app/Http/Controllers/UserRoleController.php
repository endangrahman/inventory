<?php

namespace App\Http\Controllers;

use App\Models\UserRole;
use Illuminate\Http\Request;

class UserRoleController extends Controller
{
    public function index ()
    {
        $userroles = UserRole::all();
        return view('master.userrole',['userroles'=> $userroles]);
    }

    public function add(Request $request)
    {
        $userroles = new UserRole;
        $userroles->role = $request->role;
        if($request->has('statusaktif')){
            $userroles->statusaktif = 1;
        }else{
            $userroles->statusaktif = 0;
        }
        $userroles->save();
        return redirect()->route('user-role')->with('success-add', 'Data Berhasil Disimpan');

    }

    public function delete($id)
    {
        // dd($id);
        $users = UserRole::find($id);
        $users->delete();
        return redirect()->route('user-role')->with('success-delete', 'Data Berhasil Dihapus');
    }
}

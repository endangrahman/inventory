<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\UserRole;

class UserController extends Controller
{
    public function index()
    {
        // $users = User::all();
        $users = User::join('userrole', 'users.role_id', '=', 'userrole.id')
               ->get(['users.id','users.name','users.email', 'userrole.role']);
        
        $userroles = UserRole::all();

        return view('master.user',[
            'users' => $users,
            'userroles' => $userroles
            ]);
    }

    public function add(Request $request)
    {

        // dd($request)->all();
        // $request->validate([
        //     'name' => 'required|min:5',
        //     'email' => 'required|email|unique:users,email',
        //     'role' => 'required',
        //     'password' => 'required|confirmed'
        // ]);
        $array = $request->only([
            'name', 'email', 'password' , 'role_id'
        ]);
        $array['password'] = bcrypt($array['password']);
        
        $user = User::create($array);
        return redirect()->route('user')->with('success-add', 'Data Berhasil Disimpan');

    }

    public function delete($id)
    {
        $users = User::find($id);
        $users->delete();
        return redirect()->route('user')->with('success-delete', 'Data Berhasil Dihapus');
    }
}

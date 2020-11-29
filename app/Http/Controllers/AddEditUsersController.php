<?php

namespace App\Http\Controllers;

use App\Http\Requests\AddNewUserRequest;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;


class AddEditUsersController extends Controller
{
    public function showusers(){

        $users=DB::table('users')->get();
        return view('ListUsers')->with(['users'=>$users]);
    }
    public function deleteuser($id){
        DB::table('users')->delete($id);
        $users=DB::table('users')->get();
        return view('ListUsers')->with(['users'=>$users]);
    }
    public function edituser($id)
    {
        $editUser = DB::table('users')->where('id', $id)->get();
        return view('EditUser')->with(['editUser' => $editUser]);
    }
    public function neweditionuser($id,AddNewUserRequest $request){

        $this->name = $request->name;
        $this->email = $request->email;
        $this->password = $request->password;

        $newEdition= DB::table('users')->find($id);
        $newEdition->name=$this->name;
        $newEdition->email=$this->email;
        $newEdition->password=Hash::make($request['password']);
        DB::table('users')->where('id',$id)->update(['name'=>$newEdition->name,'email'=>$newEdition->email,'password'=>$newEdition->password]);
        return redirect()->route('AddEditUsers');

    }
    public function showformadduser(){
        return view('EditUser');
    }
    public function addnewuser(AddNewUserRequest $request){
        $this->name=$request->name;
        $this->email=$request->email;
        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request['password']),]);
        return redirect()->route('AddEditUsers');

    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProfileController extends Controller
{
    public function info(Request $request)
    {
        FlashToOld::flash_to_olds(\Auth::user(), ['name', 'phone', 'address']);
        return view('profile.info');
    }


    public function save_info(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'phone' => 'required|numeric',
            'address' => 'required|string',
        ]);
        \Auth::user()->fill($request->all());
        \Auth::user()->save();

        \Session::flash('message', 'User information changed successfully!');

        return redirect('/profile/info');
    }

    public function change_password(Request $request)
    {
        return view('profile.password');
    }

    public function save_password(Request $request)
    {
        $request->validate([
            'old_password' => 'required',
            'new_password' => 'required|string|min:6|confirmed',
        ]);
        $user = \Auth::user();
        if (\Hash::check($request->get('old_pw'), $user->password)) {
            $user->password = \Hash::make($request->get('new_pw'));
            $user->save();
            \Session::flash('message', 'Password changed successfully!');
        } else {
            \Session::flash('message', 'Wrong old password!');
        }
        return redirect('/profile/info');
    }

}

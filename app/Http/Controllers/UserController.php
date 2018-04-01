<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

class UserController extends Controller {
	public function index() {
		return view( 'admin.users.list', [ 'items' => User::all() ] );
	}

	public function delete( $id ) {
		User::destroy( $id );

		return redirect( '/admin/users' );
	}

	public function make_admin( $id ) {
		$user           = User::findOrFail( $id );
		$user->is_admin = 1;
		$user->save();

		return redirect( '/admin/users' );
	}

	public function unmake_admin( $id ) {
		$user           = User::findOrFail( $id );
		$user->is_admin = 0;
		$user->save();

		return redirect( '/admin/users' );
	}
}

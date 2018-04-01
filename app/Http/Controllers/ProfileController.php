<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProfileController extends Controller {
	public function info( Request $request ) {
		FlashToOld::flash_to_olds(\Auth::user(),[ 'name', 'phone', 'address' ]);

		return view( 'profile.info' );
	}

	public function save_info( Request $request ) {
		if ( $request->isMethod( 'post' ) ) {
			$request->validate( [
				'name'    => 'required|string|max:255',
				'phone'   => 'required|numeric',
				'address' => 'required|string',
			] );
			\Auth::user()->fill( $request->all() );
			\Auth::user()->save();
		}

		return redirect( '/profile/info' );
	}
}

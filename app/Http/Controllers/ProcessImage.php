<?php
namespace App\Http\Controllers;
use Carbon\Carbon;

trait ProcessImage {
	public function process_image( $file ) {

		$destinationPath = 'images';
		$name            = md5( $file->getClientOriginalName() ) . '_' . Carbon::now()->timestamp
		                   . '.' . pathinfo( $file->getClientOriginalName(), PATHINFO_EXTENSION );
		$file->move( $destinationPath,
			$name );

		return $name;	}
}

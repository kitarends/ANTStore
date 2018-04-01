<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Wish
 *
 * @property int $id
 * @property int $user_id
 * @property int $product_id
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Wish whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Wish whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Wish whereProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Wish whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Wish whereUserId($value)
 * @mixin \Eloquent
 */
class Wish extends Model
{

}

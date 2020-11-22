<?php

namespace App\Http\Controllers\Api\Auth;

use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\Api\Auth\RegisterFormRequest;
class LoginController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */

    public function __invoke(RegisterFormRequest  $request)
    {
        $credentials = $request->only('email', 'password');
        $value = Auth::attempt($credentials);
        if ($value === false) {
            return response()->json([
                'message' => 'error'
            ]);
        } else {
            $token = Auth::user()->createToken(config('app.name'));
            $token->token->expires_at = $request->remember_me ?
                Carbon::now()->addMonth() :
                Carbon::now()->addDay();
            $token->token->save();
            return response()->json([
                'token_type' => 'Bearer',
                'token' => $token->accessToken,
                'expires_at' => Carbon::parse($token->token->expires_at)->toDateTimeString()
            ], 200);
        }
    }
}

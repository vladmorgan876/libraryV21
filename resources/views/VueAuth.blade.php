@extends('layouts.app')
@section('content')
    <authcomponent></authcomponent>

    <div style="display:flex;align-items: center;justify-content: center;margin-top: 1em">
        <button type="button" class="btn btn-outline-info">Войти через <a href="{{ route('auth.social', 'facebook') }}"
                                                                          title="Facebook">
                <i><img src="{{asset('/storage/facebook.png')}}"></i>
            </a></button>
        <button type="button" class="btn btn-outline-info">Войти через <a href="{{ route('auth.social', 'google') }}"
                                                                          title="Google">
                <i><img src="{{asset('/storage/google.png')}}"></i>
            </a></button>
    </div>





    {{--    Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon"> www.flaticon.com</a>--}}
@endsection

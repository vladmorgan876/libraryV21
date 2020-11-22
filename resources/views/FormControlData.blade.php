@extends('layouts.app')
@section('content')
    <div style="">
        <div class="container ">
            <h2 style="text-align: center ;color: green">Форма загрузки новых данных</h2>
            {{------------------------------------ошибки валидации изображения-------------------------------------------}}
            @if(count($errors)>0)
                <div class="alert alert-danger">
                    <ul>
                        @foreach($errors->all() as $error)
                            <li>{{$error}}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            {{-- ----------------------------------------------------------------------------   --}}
            <form class="container" action="{{route('controldata')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                <label>Выберите изображение обложки книги</label><br>
                <input type="file" name="image"><br>
                <input type="text" class="form-control" name="name" id="name" placeholder="Введите название книги"><br>
                <input type="text" class="form-control" name="author" id="author"
                       placeholder="Введите автора книги"><br>
                <input type="text" class="form-control" name="category" id="category"
                       placeholder="Введите категория книги"><br>
                <div class="form-group">
                    <label for="text">краткое описание книги</label>
                    <textarea name="discription" class="form-control" rows="5"></textarea>
                </div>
                <button class="btn btn-success" name="do_signup" type="submit">сохранить данные</button>
            </form>
            {{--    @isset($newimage)--}}
            {{--        <img class="img-fluid" src="{{asset('/storage/'.$newimage)}}">--}}
            {{--    @endisset--}}
        </div>
    </div>
@endsection

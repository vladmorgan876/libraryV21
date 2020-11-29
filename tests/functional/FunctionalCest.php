<?php 

class FunctionalCest
{
    public function _before(FunctionalTester $I)
    {
    }

    // tests
    public function tryToAddUser(FunctionalTester $I)
    {
        $I->amOnPage('/');
        $I->see('Авторизация');
        $I->click('Авторизация');
        $I->amOnPage('/login');
        $I->submitForm('#login',[
        'email'=>'qwert@gmail.com',
            'password'=>'11111111'
        ]);
        $I->see('ivan , Вы вошли в систему на правах администратора');
        $I->see('ivan');
        $I->see('Форма добавления новых данных');
        $I->see('Форма редактирования и удаления данных');
        $I->see('Список зарегистрированных пльзователей');
        $I->see('Выход');
        $I->click('Список зарегистрированных пльзователей');
        $I->amOnPage('/AddEditUsers');
        $I->see('Список зарегистрированных пользователей');
        $I->click('#adduser');
        $I->amOnPage('/AddUser');
        $I->see('Форма добавления пользователя');

        $I->submitForm('#FormAddUser',array( 'name'=>'Barmaley',
            'email'=>'Barmaley@gmail.com',
            'password'=>'11111111'));
        $I->amOnPage('/AddEditUsers');
        $I->see('Barmaley');
        $I->see('Barmaley@gmail.com');
        $I->seeRecord('users',[
            'name'=>'Barmaley',
            'email'=>'Barmaley@gmail.com',
        ]);

    }
    public function TryingToRegister(FunctionalTester $I)
    {
        $I->amOnPage('/register');
        $I->see('Регистрация');
        $I->submitForm('#register',[
            'name'=>'Barmaley',
            'email'=>'Barmaley@gmail.com',
            'password'=>'22222222',
            'password_confirmation'=>'22222222'
        ]);
          $I->seeRecord('users',[
            'name'=>'Barmaley',
            'email'=>'Barmaley@gmail.com',
        ]);
    }
    public function TryingToDownloadBook(FunctionalTester $I)
    {
        $I->amOnPage('/');
        $I->see('Авторизация');
        $I->click('Авторизация');
        $I->amOnPage('/login');
        $I->submitForm('#login',[
            'email'=>'qwert@gmail.com',
            'password'=>'11111111'
        ]);
        $I->see('ivan , Вы вошли в систему на правах администратора');
        $I->see('ivan');
        $I->see('Форма добавления новых данных');
        $I->see('Форма редактирования и удаления данных');
        $I->see('Список зарегистрированных пльзователей');
        $I->see('Выход');
        $I->click('Форма добавления новых данных');
        $I->amOnPage('/FormControlData');
        $I->see('Форма загрузки новых данных');
        $I->click('#inputimage');
        $I->attachFile('input[name=image]', 'test.jpg');
        $I->fillField('name','Алиса в стране чудес');
        $I->fillField('author','Льюис Кэрол');
        $I->fillField('category','фэнтези');
        $I->fillField('discription','Приключения маленькой девочки после употребления галюциногенов');
        $I->click('do_signup');
        $I->seeRecord('books',[
            'name'=>'Алиса в стране чудес',
            'author'=>'Льюис Кэрол',
            'category'=>'фэнтези',
            'description'=>'Приключения маленькой девочки после употребления галюциногенов'
        ]);

    }
}

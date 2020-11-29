<?php 

class FirstCest
{
    public function _before(AcceptanceTester $I)
    {
    }

    // tests

    public function TryingToDownloadBook(AcceptanceTester $I)
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
        $I->fillField('category','фэнтази');
        $I->fillField('discription','Приключения маленькой девочки после употребления галюциногенов');
        $I->click('сохранить данные');
        $I->seeInDatabase('books',[
            'name'=>'Алиса в стране чудес',
            'author'=>'Льюис Кэрол',
            'category'=>'фэнтази',
            'description'=>'Приключения маленькой девочки после употребления галюциногенов'
        ]);
        $I->amConnectedToDatabase(Codeception\Module\Db::DEFAULT_DATABASE);

    }
    public function TryingLogin(AcceptanceTester $I){
        $I->amOnPage('/');
        $I->see('Главная');
        $I->see('Каталог');
        $I->see('Регистрация');
        $I->see('Авторизация');
        $I->click('Каталог');
        $I->dontSee('Наши новинки');
        $I->click('Авторизация');
        $I->amOnPage('/login');
        $I->see('Форма авторизации');
        $I->submitForm('#login',[
            'email'=>'gorby@gmail.com',
            'password'=>'11111111'
        ]);
        $I->amOnPage('/home');
        $I->see('Gorby , Вы вошли в систему ');
    }
}

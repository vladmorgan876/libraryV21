<?php 

class DeleteUserCest
{
    public function _before(UnitTester $I)
    {
    }

    // tests
    public function tryToDeleteUser(UnitTester $I)
    {
        $test=new App\Http\Controllers\AddEditUsersController;
        $id=13;
        $test->deleteuser($id);
        $I->dontSeeRecord('users', [
            'name' => 'unknow',
            'email' => 'unknow@gmail.com',
            'password' => '11111111',
        ]);
    }
}

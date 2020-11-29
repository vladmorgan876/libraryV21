<?php 
class EditUserTest extends \Codeception\Test\Unit
{
    /**
     * @var \UnitTester
     */
    protected $tester;
    
    protected function _before()
    {
    }

    protected function _after()
    {
    }

    // tests
    public function testSomeFeature()
    {
        $id=10;
        $test=new App\Http\Controllers\AddEditUsersController;
        $request=new App\Http\Requests\AddNewUserRequest(['name'=>'Boris2','email'=>'BorisJonson2@gmail.com']);
        $test->neweditionuser($id,$request);
        $this->tester->seeRecord('users',['name'=>'Boris2','email'=>'BorisJonson2@gmail.com']);
        $this->tester->dontSeeRecord('users',['name'=>'Gorby','email'=>'gorby@gmail.com']);
    }
}
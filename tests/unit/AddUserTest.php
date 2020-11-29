<?php 
class AddUserTest extends \Codeception\Test\Unit
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
        $test=new App\Http\Controllers\AddEditUsersController;
        $request=new App\Http\Requests\AddNewUserRequest(['name'=>'Tom','email'=>'Tom@gmail.com']);
        $test->addnewuser($request);
        $this->tester->seeRecord('users',['name'=>'Tom','email'=>'Tom@gmail.com']);
    }
}
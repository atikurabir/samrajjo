<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmployeesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employees', function (Blueprint $table) {
            $table->increments('id');
            $table->string('emp_username');
            $table->string('password');
            $table->string('emp_firstName');
            $table->string('emp_lastName');
            $table->string('emp_phone');
            $table->string('emp_email');
            $table->date('joiningDate');
            $table->string('emp_type');
            $table->string('emp_image');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('employees');
    }
}

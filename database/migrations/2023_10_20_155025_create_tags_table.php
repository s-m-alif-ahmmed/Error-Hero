<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('tags', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->tinyInteger('tag_status')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tags');
    }
};


$table->foreignId('category_id');
$table->foreignId('tag_id');
$table->string('author_name');
$table->text('image');
$table->string('alt');
$table->string('heading')->unique();
$table->text('short_description')->unique();
$table->text('description');
$table->tinyInteger('blog_status')->default(1);

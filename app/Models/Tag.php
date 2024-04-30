<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Str;

class Tag extends Model
{
    use HasFactory;

    private static $tag, $tags;

    public static function createTag($request)
    {
        try {
            self::$tag       = new Tag();
            self::saveBasicInfo(self::$tag, $request);
            self::$tag->save();
        } catch (ModelNotFoundException $e) {
            abort(404);
        }
    }

    public static function updateTag($request, $id)
    {
        try {
            self::$tag = Tag::find($id);
            self::saveBasicInfo(self::$tag, $request);
            self::$tag->save();
        } catch (ModelNotFoundException $e) {
            abort(404);
        }
    }

    public static function boot()
    {
        parent::boot();
        self::creating(function($tag){
            $tag->tag_slug = Str::slug($tag->name, '-');
        });
        self::updating(function($tag){
            $tag->tag_slug = Str::slug($tag->name, '-');
        });
    }

    public static function deleteTag($id)
    {
        try {
            self::$tag = Tag::find($id);
            self::$tag->delete();
        } catch (ModelNotFoundException $e) {
            abort(404);
        }
    }

    private static function saveBasicInfo($tag, $request)
    {
        self::$tag->name      = $request->name;
    }

    public function blogs()
    {
        return $this->belongsToMany(Blog::class);
    }

}

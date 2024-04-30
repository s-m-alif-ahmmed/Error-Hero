<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Models\Blog;
use App\Models\Category;
use App\Models\Comment;
use App\Models\Extra;
use App\Models\Tag;
use App\Models\User;
use App\Models\VisitorCount;
use Illuminate\Contracts\Encryption\DecryptException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;



class WebsiteController extends Controller
{
    public function index()
    {
        try {
            $blogs = Blog::where('blog_status', 1)->get();
            $categories = Category::all();
            $tags = Tag::all();

            $categoryCounts = [];

            // Count blogs for each category
            foreach ($categories as $category) {
                $categoryCounts[$category->id] = $blogs->where('category_id', $category->id)->count();
            }

//            // Increment the visitor count for the current page
//            $visitorCount = VisitorCount::firstOrNew(['page' => $page]);
//            $visitorCount->count += 1;
//            $visitorCount->save();

            return view('website.home.home', [
                'blogs' => $blogs,
                'categories' => $categories,
                'tags' => $tags,
                'categoryCounts' => $categoryCounts,
//                'visitorCount' => $visitorCount->count,
//                'currentPage' => $page,
            ]);
        } catch (DecryptException $e) {
            return abort(404);
        }
    }


    public function about()
    {
        try {
            return view('website.home.about');
        } catch (DecryptException $e) {
            return abort(404);
        }
    }

    public function contact()
    {
        try {
            return view('website.home.contact');
        } catch (DecryptException $e) {
            return abort(404);
        }

    }

    public function blogs(Request $request, string $category_slug)
    {
        try {
            $category = Category::where('category_slug', $category_slug)->first();

            if (!$category) {
                return abort(404);
            }

            $blogs = Blog::where('blog_status', 1)
                ->where('category_id', $category->id)
                ->latest()
                ->paginate(12);

            $tags = Tag::all();

            return view('website.home.blogs', [
                'category' => $category,
                'blogs' => $blogs,
                'tags' => $tags,
            ]);
        } catch (DecryptException $e) {
            return abort(404);
        }
    }


    public function blogTag(string $tag_slug)
    {
        try {
            $tag = Tag::where('tag_slug', $tag_slug)->first();

            if (!$tag) {
                return abort(404);
            }

            $categories = Category::all();
            $tags = Tag::all();

            $blogs = $tag->blogs()
                ->where('blog_status', 1)
                ->where('tag_id', $tag->id)
                ->latest()
                ->paginate(12);;

            return view('website.home.tag', [
                'tag' => $tag,
                'categories' => $categories,
                'tags' => $tags,
                'blogs' => $blogs,
            ]);
        } catch (DecryptException $e) {
            return abort(404);
        }
    }


    public function details(string $slug)
    {
        try {
            $blog = Blog::where('slug', $slug)->first();

            $comments = Comment::get();

            // Increment the view count
            $update = [
                'count' => $blog->count + 1,
            ];
            Blog::where('slug', $slug)->update($update);

//            share blog
            $shareButtons = \Share::page(
                url('/details/{$decryptID}'),

            )
                ->facebook()
                ->telegram()
                ->linkedin()
                ->whatsapp()
                ->reddit()
                ->twitter()
                ->pinterest();

            return view('website.home.details',[
                'blog' => $blog,
                'extras' => Extra::all(),
                'comments' => $comments,
                'shareButtons' => $shareButtons,
            ],compact('shareButtons'));
        } catch (DecryptException $e) {
            return abort(404);
        }
    }


    public function author()
    {
        try {
            $blogs = Blog::all();
            return view('website.home.author',compact('blogs'));
        } catch (DecryptException $e) {
            return abort(404);
        }
    }

    public function edit(string $id)
    {
        try {
            return view('website.dashboard.settings',[
                'user' => User::find($id),
            ]);
        } catch (DecryptException $e) {
            return abort(404);
        }
    }

}

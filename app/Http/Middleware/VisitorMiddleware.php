<?php

namespace App\Http\Middleware;

use App\Models\Visitor;
use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use DB;

class VisitorMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response) $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        $startTime = now('Asia/Dhaka');

        $response = $next($request);

        // Check if the user has a session ID
            $visitor = new Visitor();
            $visitor->ip_address = $request->ip();
            $visitor->url = $request->fullUrl();
            $visitor->start_time = $startTime;
            $visitor->save();

        return $response;

    }

}

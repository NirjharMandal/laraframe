<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Blade;
use Illuminate\Support\Str;
class BladeServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot(){
        Blade::directive('debug', function($data) {
            return "<?php dbg({$data}); ?>";
        });
        Blade::directive('dd', function($data) {
            return "<?php dd({$data}); ?>";
        });
        Blade::directive('dd', function($data) {
            return "<?php dd({$data}); ?>";
        });
    }
}

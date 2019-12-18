<?php
namespace ngine\audittrail;

use Illuminate\Support\ServiceProvider;

class AuditServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register(){
        $this->app->make('ngine\audittrail\AuditTrailEvent');
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot(){
        include __DIR__.'/routes.php';
    }
}

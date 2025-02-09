<?php

namespace App\Observers;

use Illuminate\Database\Eloquent\Model;

class VarsObserver
{
    public function saved(Model $model): void
    {
        cache()->forget('vars');
    }

    public function deleted(Model $model): void
    {
        cache()->forget('vars');
    }

    public function restored(Model $model): void
    {
        cache()->forget('vars');
    }

    public function forceDeleted(Model $model): void
    {
        cache()->forget('vars');
    }
}

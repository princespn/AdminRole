<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class Exporter extends Component
{
    public function __construct(
        public array $columns = [],
        public string $title = ''
    ) {}

    public function render(): View|Closure|string
    {
        return view('components.exporter');
    }
}

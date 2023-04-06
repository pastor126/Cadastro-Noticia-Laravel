<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use App\Models\Autor;
use App\Models\Categoria;


class Noticia extends Model
{
    use HasFactory;
    protected $table = 'noticia';
    protected $casts = ['created_at' => 'datetime: d-m-Y'];

    public function categoria(): BelongsTo
    {
        return $this->belongsTo(Categoria::class);
    }

    public function autor(): BelongsTo
    {
        return $this->belongsTo(Autor::class);
    }




    
}

<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'title'       => 'required|string|max:20',
            'description' => 'required|string|max:255',
            'category' => 'required|string', // Foreign key validation
            'price'       => 'required|numeric|min:0',
            'discount'       => 'required|numeric|min:0',
            'color'       => 'required|json', 
            'size'        => 'required|json',
            'image' => 'string',
        ];
    }
}

<?php

namespace App\Http\Requests;

use App\DTO\ContactDTO;
use App\Models\Vars;
use Illuminate\Contracts\Validation\ValidationRule;
use Illuminate\Foundation\Http\FormRequest;

class ContactRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, ValidationRule|array|string>
     */
    public function rules(): array
    {
        return [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255'],
            'phone' => ['nullable', 'string', 'max:255'],
            'message' => ['required', 'string'],
        ];
    }

    public function messages(): array
    {
        $vars = Vars::getList();

        return [
            'name.required' => $vars['name__required'] ?? 'The name field is required.',
            'name.string' => $vars['name__string'] ?? 'The name must be a string.',
            'name.max' => $vars['name__max'] ?? 'The name may not be greater than 255 characters.',
            'email.required' => $vars['email__required'] ?? 'The email field is required.',
            'email.string' => $vars['email__string'] ?? 'The email must be a string.',
            'email.email' => $vars['email__email'] ?? 'The email must be a valid email address.',
            'email.max' => $vars['email__max'] ?? 'The email may not be greater than 255 characters.',
            'phone.string' => $vars['phone__string'] ?? 'The phone must be a string.',
            'phone.max' => $vars['phone__max'] ?? 'The phone may not be greater than 255 characters.',
            'phone.nullable' => $vars['phone__nullable'] ?? 'The phone field is optional.',
            'message.required' => $vars['message__required'] ?? 'The message field is required.',
            'message.string' => $vars['message__string'] ?? 'The message must be a string.'
        ];
    }

    public function getDTO(): ContactDTO
    {
        return new ContactDTO(
            name: $this->input('name'),
            email: $this->input('email'),
            phone: $this->input('phone'),
            message: $this->input('message')
        );
    }
}

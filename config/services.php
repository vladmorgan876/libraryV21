<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Mailgun, Postmark, AWS and more. This file provides the de facto
    | location for this type of information, allowing packages to have
    | a conventional file to locate the various service credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
    ],

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    ],

    'facebook' => [
        'client_id' => '279413913495134',
        'client_secret' => 'b54cc2e7cf14009fc84159b952fc76df',
        'redirect' => '/social-auth/facebook/callback',
        ],
    'google' => [
        'client_id' => '709886586033-6knp8d5ts3lcm24l6mf806e6ebps7fgm.apps.googleusercontent.com',
        'client_secret' => 'LTAJMeEqwScKzHwbfUHE5QPV',
        'redirect' => '/social-auth/google/callback',
    ],

];

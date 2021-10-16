<?php

namespace App\Traits;
use Twilio\Rest\Client;

trait TwilioAPI
{
	public function sendMessage($message, $recipients)
    {
        $account_sid = "AC7f6dd0342041d3350254db0952b3859f";
        $auth_token = "dd2e4e502c55b749478e8a8b74df3eab";
        $twilio_number = "whatsapp:+14155238886";
        $client = new Client($account_sid, $auth_token);
        $client->messages->create($recipients,
                ['from' => $twilio_number, 'body' => $message] );
    }
}

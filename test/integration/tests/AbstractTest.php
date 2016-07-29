<?php

use Laracasts\Integrated\Extensions\Goutte;

Abstract class AbstractTest extends Goutte
{

    public function setUp()
    {
        //don't verify SSL is valid - without this, local self signed certs cause failure
        if (APPLICATION_ENV == 'development_vagrant') {
            //@todo I think this is only needed on dev environments
            $guzzleClient = new \GuzzleHttp\Client(['curl' => [
                CURLOPT_SSL_VERIFYPEER => false,
                CURLOPT_SSL_VERIFYHOST => false
            ]]);
            $this->client()->setClient($guzzleClient);
        }

        parent::setUp();
    }
}
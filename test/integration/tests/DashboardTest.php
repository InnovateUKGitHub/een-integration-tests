<?php

/**
 * Class DashboardTest
 */
class DashboardTest extends AbstractTest
{
    public function testDashboardIsNotError()
    {
        $this->visit('/')
            ->andSee('Estate Overview');
    }
}

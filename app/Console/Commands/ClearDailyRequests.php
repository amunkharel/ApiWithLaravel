<?php

namespace App\Console\Commands;

use App\ThrottleUser;

use Illuminate\Console\Command;

use Carbon\Carbon;

class ClearDailyRequests extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'check_daily_hours';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Updates number of hours in throttle_user table every hour and after 24 hours clears the number of responses made in a given day';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $throttle = ThrottleUser::find(1);

        $currentTime = Carbon::now();

        $request_time = $throttle->updated_at;

        $diff_in_hours = $request_time->diffInMinutes($currentTime, true);

        $diff_in_hours = $diff_in_hours/60;

        $current_hour = $throttle->hours;

        $current_hour = $current_hour + $diff_in_hours;

        $throttle->hours = $current_hour;

        $throttle->updated_at = Carbon::now();

        if($throttle->hours >= 24)
        {
            $throttle->requests = '0';
            $throttle->hours = '0.00';
            $throttle->email_sent = 'N';
        }

        $throttle->save();

    }
}

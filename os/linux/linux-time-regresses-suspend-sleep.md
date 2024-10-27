Linux might lose track of time when it goes into suspension. This happens since it relies on the [[rtc-realtime-clock]] to keep track of time, which is configured to local-tz by default by [[windows]]. Linux, however, likes RTC to be in UTC which is why you might see off-by-local-offset errors on waking up systems from suspend. To confirm
```shell
❯ timedatectl # check
               Local time: Mon 2024-06-10 10:38:01 IST
           Universal time: Mon 2024-06-10 05:08:01 UTC
                 RTC time: Mon 2024-06-10 10:38:01
                Time zone: Asia/Kolkata (IST, +0530)
System clock synchronized: yes
              NTP service: active
          RTC in local TZ: yes # uh oh

Warning: The system is configured to read the RTC time in the local time zone.
         This mode cannot be fully supported. It will create various problems
         with time zone changes and daylight saving time adjustments. The RTC
         time is never updated, it relies on external facilities to maintain it.
         If at all possible, use RTC in UTC by calling
         'timedatectl set-local-rtc 0'.

❯ timedatectl set-local-rtc 0 # tell linux to set rtc in utc always

❯ timedatectl                
               Local time: Mon 2024-06-10 10:41:35 IST
           Universal time: Mon 2024-06-10 05:11:35 UTC
                 RTC time: Mon 2024-06-10 05:11:35
                Time zone: Asia/Kolkata (IST, +0530)
System clock synchronized: yes
              NTP service: active
          RTC in local TZ: no # nice

```

One thing I couldn't answer is why linux picks up UTC at all when timedatectl is explicitly set to local tz. 🤷‍♂

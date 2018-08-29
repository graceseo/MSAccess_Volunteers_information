SELECT vinfo.First_Name, vinfo.last_name, vinfo.Phone1, Email, primary_area_volunteer, 
        IsAvailable(8,[Festival_Day1_shift_startTime],[Festival_Day1_shift_endTime]) AS 8AM, 
        IsAvailable(9,[Festival_Day1_shift_startTime],[Festival_Day1_shift_endTime]) AS 9AM, 
        IsAvailable(10,[Festival_Day1_shift_startTime],[Festival_Day1_shift_endTime]) AS 10AM, 
        IsAvailable(11,[Festival_Day1_shift_startTime],[Festival_Day1_shift_endTime]) AS 11AM, 
        IsAvailable(12,[Festival_Day1_shift_startTime],[Festival_Day1_shift_endTime]) AS 12PM, 
        IsAvailable(13,[Festival_Day1_shift_startTime],[Festival_Day1_shift_endTime]) AS 1PM, 
        IsAvailable(14,[Festival_Day1_shift_startTime],[Festival_Day1_shift_endTime]) AS 2PM, 
        IsAvailable(15,[Festival_Day1_shift_startTime],[Festival_Day1_shift_endTime]) AS 3PM, 
        IsAvailable(16,[Festival_Day1_shift_startTime],[Festival_Day1_shift_endTime]) AS 4PM, 
        IsAvailable(17,[Festival_Day1_shift_startTime],[Festival_Day1_shift_endTime]) AS 5PM, 
        IsAvailable(18,[Festival_Day1_shift_startTime],[Festival_Day1_shift_endTime]) AS 6PM, 
        IsAvailable(19,[Festival_Day1_shift_startTime],[Festival_Day1_shift_endTime]) AS 7PM, 
        IsAvailable(20,[Festival_Day1_shift_startTime],[Festival_Day1_shift_endTime]) AS 8PM, 
        IsAvailable(21,[Festival_Day1_shift_startTime],[Festival_Day1_shift_endTime]) AS 9PM, 
        IsAvailable(22,[Festival_Day1_shift_startTime],[Festival_Day1_shift_endTime]) AS 10PM
FROM Volunteer_info AS vinfo
WHERE Festival_Day1_shift is not null or Festival_Day1_shift_startTime is not null  or Festival_Day1_Other is not null
ORDER BY primary_area_volunteer, first_name;

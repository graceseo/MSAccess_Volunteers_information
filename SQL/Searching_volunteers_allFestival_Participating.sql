SELECT First_Name, Phone1, Email, primary_area_volunteer, Other_Area, iif(isnull( Festival_Day1_shift ) or isnull( Festival_Day1_shift_startTime ), "", "O") AS Day1, iif(isnull( Festival_Day2_shift ) or isnull( Festival_Day2_shift_startTime ), "", "O") AS Day2
FROM volunteer_info
WHERE Festival_Day1_shift is not null 
or Festival_Day2_shift is not null 
or Festival_Day1_shift_startTime is not null
or Festival_Day2_shift_startTime is not null
ORDER BY first_name;

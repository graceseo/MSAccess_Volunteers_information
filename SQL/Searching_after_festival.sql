SELECT volunteer_info.First_Name, volunteer_info.last_name, volunteer_info.Phone1, volunteer_info.Email, IIf(Adult,"O","X") AS IsAdult, volunteer_info.birthday, volunteer_info.After, volunteer_info.primary_area_volunteer, volunteer_info.Other_Area
FROM volunteer_info
WHERE (((volunteer_info.[After]) Is Not Null And (volunteer_info.[After]) Not Like "*N/A*"))
ORDER BY volunteer_info.First_Name;

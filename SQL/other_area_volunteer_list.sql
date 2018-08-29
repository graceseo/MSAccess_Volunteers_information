SELECT volunteer_info.First_Name, volunteer_info.last_name, volunteer_info.Phone1, volunteer_info.Email, volunteer_info.primary_area_volunteer, volunteer_info.Other_Area, IIf(IsNull(Festival_Day1_shift) Or IsNull(Festival_Day1_shift_startTime),"","O") AS Day1, IIf(IsNull(Festival_Day2_shift) Or IsNull(Festival_Day2_shift_startTime),"","O") AS Day2, IIf(IsNull(Canada_day),"","O") AS CanadaDay, IIf(IsNull(Kids_Park),"","O") AS KidsPark, IIf(IsNull(Multi_Culture),"","O") AS MultiCulture, IIf(Adult,"O","X") AS IsAdult, volunteer_info.birthday
FROM volunteer_info
WHERE (((volunteer_info.Other_Area)=[Forms]![Other Area]![primary_list]))
ORDER BY volunteer_info.First_Name;

SELECT Volunteer_info.[no], Volunteer_info.First_Name, Volunteer_info.Last_Name, Volunteer_info.Address, Volunteer_info.City, Volunteer_info.Phone1, Volunteer_info.Phone2, Volunteer_info.Email, Volunteer_info.Birthday, Volunteer_info.Strengths, Volunteer_info.primary_area_volunteer, Volunteer_info.Other_Area, Volunteer_info.Before_Available, Volunteer_info.Mas_Camp, Volunteer_info.Festival_Setup, Volunteer_info.Festival_Day1_shift, Volunteer_info.Festival_Day1_Other, Volunteer_info.Festival_Day2_shift, Volunteer_info.Festival_Day2_Other, Volunteer_info.T_Shirt, Volunteer_info.Comments, Volunteer_info.Marketing_Event, Volunteer_info.Contact_results, Volunteer_info.After, Volunteer_info.Returns, Volunteer_info.Festival_Day1_shift_startTime, Volunteer_info.Festival_Day1_shift_endTime, Volunteer_info.Festival_Day2_shift_startTime, Volunteer_info.Festival_Day2_shift_endTime, Volunteer_info.Canada_day, Volunteer_info.Workshop, Volunteer_info.Kids_Park, Volunteer_info.Multi_Culture, Setup_starTime, Setup_endTime
FROM Volunteer_info
WHERE (((Volunteer_info.First_Name) Like [Forms]![searchingVolunteer]![enterName] & "*"));

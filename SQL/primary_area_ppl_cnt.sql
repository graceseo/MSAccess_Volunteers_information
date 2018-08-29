SELECT areas.BriefNm, Count(vi.[no]) AS cnt
FROM areas LEFT JOIN volunteer_info AS vi ON areas.BriefNm = vi.primary_area_volunteer
GROUP BY areas.BriefNm;

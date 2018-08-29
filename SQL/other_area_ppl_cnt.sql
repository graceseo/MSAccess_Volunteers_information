SELECT areas.BriefNm, Count(vi.[no]) AS cnt
FROM areas LEFT JOIN volunteer_info AS vi ON areas.BriefNm = vi.Other_Area
GROUP BY areas.BriefNm;

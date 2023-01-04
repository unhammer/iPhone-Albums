-- select ZDIRECTORY,ZFILENAME,* from ZASSET limit 100;
select ZTITLE,(ZDIRECTORY||'/'||ZFILENAME) as ZPATH from ZGENERICALBUM a
inner join Z_26ASSETS j on a.Z_PK = j.Z_26ALBUMS
inner join ZASSET f on f.Z_PK = j.Z_3ASSETS
order by ZTITLE desc;

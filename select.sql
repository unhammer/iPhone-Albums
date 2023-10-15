-- Some times the albumassets table changes name, e.g. it used to be
-- Z_26ASSETS/Z_26ALBUMS, now it's 28.

-- select ZDIRECTORY,ZFILENAME,* from ZASSET limit 100;

select ZTITLE,(ZDIRECTORY||'/'||ZFILENAME) as ZPATH from ZGENERICALBUM albums
inner join Z_28ASSETS albumassets on albums.Z_PK = albumassets.Z_28ALBUMS
inner join ZASSET assets on assets.Z_PK = albumassets.Z_3ASSETS
order by ZTITLE desc

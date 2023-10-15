-- select ZDIRECTORY,ZFILENAME,* from ZASSET limit 100;

select ZTITLE,(ZDIRECTORY||'/'||ZFILENAME) as ZPATH from ZGENERICALBUM albums
inner join Z_28ASSETS albumassets on albums.Z_PK = albumassets.Z_28ALBUMS
inner join ZASSET assets on assets.Z_PK = albumassets.Z_3ASSETS
order by ZTITLE desc

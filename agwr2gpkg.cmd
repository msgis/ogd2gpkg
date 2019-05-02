pushd H:\PRJ\AUSTRIA\ETL

ogr2ogr -f GPKG ..\WH\import.gpkg .\04_AGWR\VRT\gwr_adr31256.vrt -overwrite -nln "imp.gwr_adr" -s_srs "EPSG:31256" -t_srs "EPSG:31287" -nlt POINT -oo ENCODING="cp1252"
ogr2ogr -f GPKG ..\WH\import.gpkg .\04_AGWR\VRT\gwr_adr31255.vrt -append -nln "imp.gwr_adr" -s_srs "EPSG:31255" -t_srs "EPSG:31287" -nlt POINT -oo ENCODING="cp1252"
ogr2ogr -f GPKG ..\WH\import.gpkg .\04_AGWR\VRT\gwr_adr31254.vrt -append -nln "imp.gwr_adr" -s_srs "EPSG:31254" -t_srs "EPSG:31287" -nlt POINT -oo ENCODING="cp1252"
ogr2ogr -f GPKG ..\WH\import.gpkg .\04_AGWR\VRT\gwr_geb31256.vrt -overwrite -nln "imp.gwr_geb" -s_srs "EPSG:31256" -t_srs "EPSG:31287" -nlt POINT -oo ENCODING="cp1252"
ogr2ogr -f GPKG ..\WH\import.gpkg .\04_AGWR\VRT\gwr_geb31255.vrt -append -nln "imp.gwr_geb" -s_srs "EPSG:31255" -t_srs "EPSG:31287" -nlt POINT -oo ENCODING="cp1252"
ogr2ogr -f GPKG ..\WH\import.gpkg .\04_AGWR\VRT\gwr_geb31254.vrt -append -nln "imp.gwr_geb" -s_srs "EPSG:31254" -t_srs "EPSG:31287" -nlt POINT -oo ENCODING="cp1252"

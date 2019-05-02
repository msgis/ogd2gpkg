REM pushd H:\PRJ\AUSTRIA\ETL

IF EXIST Adresse_Relationale_Tabellen-Stichtagsdaten.zip GOTO importdata
REM powershell -Command "Invoke-WebRequest -Uri 'http://www.bev.gv.at/pls/portal/docs/PAGE/BEV_PORTAL_CONTENT_ALLGEMEIN/0200_PRODUKTE/UNENTGELTLICHE_PRODUKTE_DES_BEV/Adresse_Relationale_Tabellen-Stichtagsdaten.zip' -OutFile 'Adresse_Relationale_Tabellen-Stichtagsdaten.zip'"
curl http://www.bev.gv.at/pls/portal/docs/PAGE/BEV_PORTAL_CONTENT_ALLGEMEIN/0200_PRODUKTE/UNENTGELTLICHE_PRODUKTE_DES_BEV/Adresse_Relationale_Tabellen-Stichtagsdaten.zip --output Adresse_Relationale_Tabellen-Stichtagsdaten.zip

:importdata
ogr2ogr -progress -f GPKG ..\ogd.gpkg .\gwr_adr31256.vrt -overwrite -nln "gwr_adr" -s_srs "EPSG:31256" -t_srs "EPSG:31287" -nlt POINT -oo ENCODING="cp1252"
ogr2ogr -progress -f GPKG ..\ogd.gpkg .\gwr_adr31255.vrt -append -nln "gwr_adr" -s_srs "EPSG:31255" -t_srs "EPSG:31287" -nlt POINT -oo ENCODING="cp1252"
ogr2ogr -progress -f GPKG ..\ogd.gpkg .\gwr_adr31254.vrt -append -nln "gwr_adr" -s_srs "EPSG:31254" -t_srs "EPSG:31287" -nlt POINT -oo ENCODING="cp1252"
ogr2ogr -progress -f GPKG ..\ogd.gpkg .\gwr_geb31256.vrt -overwrite -nln "gwr_geb" -s_srs "EPSG:31256" -t_srs "EPSG:31287" -nlt POINT -oo ENCODING="cp1252"
ogr2ogr -progress -f GPKG ..\ogd.gpkg .\gwr_geb31255.vrt -append -nln "gwr_geb" -s_srs "EPSG:31255" -t_srs "EPSG:31287" -nlt POINT -oo ENCODING="cp1252"
ogr2ogr -progress -f GPKG ..\ogd.gpkg .\gwr_geb31254.vrt -append -nln "gwr_geb" -s_srs "EPSG:31254" -t_srs "EPSG:31287" -nlt POINT -oo ENCODING="cp1252"


IF EXIST VGD-Oesterreich_gst.zip GOTO importdata
curl http://www.bev.gv.at/pls/portal/docs/PAGE/BEV_PORTAL_CONTENT_ALLGEMEIN/0200_PRODUKTE/UNENTGELTLICHE_PRODUKTE_DES_BEV/VGD-Oesterreich_gst.zip --output VGD-Oesterreich_gst.zip

:importdata
echo importiere Verwaltungsgrenzen. bitte warten...
ogr2ogr -f GPKG ..\ogd.gpkg .\vgd.vrt -overwrite -nln "vgd" -s_srs "EPSG:31287" -t_srs "EPSG:31287" -nlt POLYGON -oo ENCODING="cp1252"



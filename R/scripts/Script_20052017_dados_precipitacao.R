

library(raster)


trmm = brick("raw-data/trmm_rainfall/pa_br_precipitacao_3000_lapig.tif")

plot(trmm[[1:4]])


pem = extract(trmm, c(-18.1255, -52.9139))
plot.ts(as.numeric(pem))


c(x = -52.9139, y = -18.1255)

trmm[]

cellFromXY(trmm, c(x = -52.9139, y = -18.1255))

plot.ts(as.numeric(extract(trmm, cellFromXY(trmm, c(x = -52.9139, y = -18.1255)))))


shp.trmm = rasterToPolygons(trmm[[1]])
shapefile(shp.trmm, file = "raw-data/trmm_rainfall/shape_TRMM_pa_br_precipitacao_3000_lapig.shp")


writeOGR(shp.trmm, dsn = "raw-data/trmm_rainfall/shape_TRMM_pa_br_precipitacao_3000_lapig.kml", layer = "TRMM", 
         driver = "KML")


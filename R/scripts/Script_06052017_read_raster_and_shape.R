#Importando arquivos
#O pacote "raster" é um dos principais pacotes para se trabalhar com dados de sensoriamento remoto.
#Ele inclui contém funções para importar e salver raster e shapefile.


source("R/functions/ipak.R")

ipak(packages <- c("raster",
                   "rgdal"
                    ))


#Importar Shapefile
#O shapefile do Brasil e imagens de NDVI do sensor MODIS com os estados pode ser baixado no portal do Lapig, no link <http://#maps.lapig.iesa.ufg.br/>. Ainda estamos analisando se vamos incluir estes arquivos no GitHub ou não.

#Comandos para importar shapefiles
#importar shapes
shp_est <- shapefile("~\\pa_br_estados_250_2013_ibge.shp")
shp_jtb <- shapefile("~\\Faz._Jatobá.shp")

#Importar raster
#Comandos para importar raster
#importar raster
ndvi_br = raster("~\\pa_br_ndvi_250_2001001_lapig.tif")


#Gráficos
#plotar shape files, e colorir os estados GO, MT e SP com cores diferentes.

plot.shapes
plot(shp_est)
plot(shp_est[ shp_est$NM_UF %in% c("GO","MT",'SP') , ], add = TRUE, col = c("green", 'blue', 'red'))


#Recortar imagens de ndvi
#Recortar as imagens de NDVI para o estado de Goiás, seguindo os passos abaixo:

#<ol type = "1">
#  <li>Fazer subset do estado de Goiás</li>
#  <li>Mudar a projeção do Shapefile para a projeção do Raster</li>
#  <li>Recortar a imagem do Brasil para o estado de Goiás, utilizando extent</li>
#  <li>Recortar a imagem do Brasil para o estado de Goiás, utilizando o contorno do polígono</li>
#</ol>

#recortar goias
 shp_goi = shp_est[ shp_est$NM_UF == "GO", ]
 
 crs(shp_goi) = crs(ndvi_goi)
 
 ndvi_goi_c = crop(ndvi_br, shp_goi)
 plot(ndvi_goi)
 plot(shp_goi, add = TRUE)
 
 ndvi_goi_m = mask(ndvi_goi, shp_goi)
 plot(ndvi_goi_m)
 plot(shp_goi, add = TRUE)


#Importar e recortar várias imagens 
#Importar uma séries de imagens (368) de forma automatizada (em um loop), e fazer o recorte para a área de uma fazenda.

 setwd("H:\\DATASAN\\NDVI_TSA\\2_BHRV\\NDVI")
 
 ls.f = Sys.glob("*tif")
 
 temp.list = list()
 for (i in 1:length(ls.f)) {
   cat("loop", ls.f[i], "\n")
   
   temp.list[[i]] = raster(ls.f[i])
 }
 
 ndvi_bhrv = stack(temp.list)
 ndvi_bhrv[ 50 , 100, 1]
 ndvi_bhrv[[1:10]][90,200]
 pix = as.numeric(ndvi_bhrv[[1:100]][90,200])
 pix.ts = ts(pix, start = 2001, frequency = 23)
 plot(pix.ts)


#Recorte para uma fazenda
 shp_nsa = shp_bhrv [shp_bhrv$FID_certif == "5363", ]
 plot(shp_nsa)
 
 ndvi_jtb_c = crop(ndvi_bhrv, shp_jtb)
 plot(ndvi_jtb_c[[1:4]])
 
 writeRaster(ndvi_jtb_c, filename = "H:\\github\\studygroup-ufg\\cleaned-data\\raster\\NDVI_Faz_Jatoba_2001_2016.tif")




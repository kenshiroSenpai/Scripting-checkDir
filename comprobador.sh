#!/bin/bash
ls $1 > fichero1.txt
contadorImgJpg=0;
contadorImgJpeg=0;
contadorImgBpm=0;
contadorImgPng=0;
contadorDir=0;
contadorOtros=0;
for line in $(cat fichero1.txt); 
do
if [[ $(file $1/$line) == *"JPEG image data"* ]]; then
let contadorImgJpeg=contadorImgJpeg+1
elif [[ $(file $1/$line) == *"PNG image data"* ]]; then
let contadorImgPng=contadorImgPng+1
elif [[ $(file $1/$line) == *"BMP image data"* ]]; then
let contadorImgBmp=contadorImgBmp+1
elif [[ $(file $1/$line) == *"JPG image data"* ]]; then
let contadorImgJpg=contadorImgJpg+1
elif [[ $(file $1/$line) == *"directory"* ]]; then
let contadorDir=contadorDir+1
else
let contadorOtros=contadorOtros+1;
fi
done
if [ $contadorImgJpg -ne 0 ]; then
echo $contadorImgJpg "imagenes jpg";
fi
if [ $contadorImgJpeg -ne 0 ]; then
echo $contadorImgJpeg "imagenes jpeg";
fi
if [ $contadorImgPng -ne 0 ]; then
echo $contadorImgPng "imagenes png";
fi
if [ $contadorImgBpm -ne 0 ]; then
echo $contadorImgBpm "imagenes bmp";
fi
if [ $contadorImgJpg -ne 0 ]; then
echo $contadorImgJpg "imagenes jpg";
fi
if [ $contadorDir -ne 0 ]; then
echo $contadorDir "Directorios";
fi
if [ $contadorOtros -ne 0 ]; then
echo $contadorOtros "archivos de otro tipo.";
fi





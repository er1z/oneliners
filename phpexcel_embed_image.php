<?php
$image = new \PHPExcel_Worksheet_Drawing();
$image->setPath('/tmp/img.jpg);
$image->setWorksheet($decoration->getWorksheet());
$image->setCoordinates('A1');
$image->setWidth(200);

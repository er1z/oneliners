<?php
$d = new SimpleXMLElement(file_get_contents('circle.svg'));

$d->registerXPathNamespace("def", "http://www.w3.org/2000/svg");

$elements = $d->xpath("//def:path");

$x = '';

foreach ($elements as $k => $e) {
    $x .= 'item[' . $k . '] = paper.path(\'' . (string)$e['d'] . '\');' . PHP_EOL;
}

file_put_contents('converted', $x);

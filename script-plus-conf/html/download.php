<?php
 $uri= 'url';
 $path = 'data.txt';
 if (isset($_POST['url']) && isset($_POST['thread'])) {
    $fh = fopen($path,"a+");
    $string = 'url="'. $_POST['url'].'" ;thread="'.$_POST['thread'].'"';
    fwrite($fh,$string); 
    fclose($fh); 
 }
exec("cat /var/www/html/data.txt >>/home/url.txt; echo >/var/www/html/data.txt");
header('Location: index.html');

?>

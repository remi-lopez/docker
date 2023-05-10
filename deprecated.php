<?php

// Utilisation de la fonction ereg_replace(), dépréciée en PHP 8
$string = 'Bonjour, monde !';
$pattern = 'Bonjour';
$replacement = 'Hello';

$new_string = ereg_replace($pattern, $replacement, $string);
echo $new_string;
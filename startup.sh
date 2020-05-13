#!/bin/bash
FLAG1=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13 ; echo '')
FLAG2=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13 ; echo '')
FLAG3=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13 ; echo '')
FLAG4=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13 ; echo '')
FLAG5=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13 ; echo '')
FLAG6=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13 ; echo '')
FLAG7=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13 ; echo '')
useradd -m -p FLAG1 "harley"
useradd -m -p FLAG2 "joker"
useradd -m -p FLAG5 "batman"
echo 'harley {$FLAG1}' > /home/all.txt
echo 'joker {$FLAG2}' > /home/all.txt
echo 'batman {$FLAG5}' > /home/all.txt
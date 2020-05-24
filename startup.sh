#!/bin/bash
FLAG1=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13 ; echo '')
FLAG2=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13 ; echo '')
FLAG3=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13 ; echo '')
FLAG4=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13 ; echo '')
FLAG5=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13 ; echo '')
FLAG6=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13 ; echo '')
FLAG7=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13 ; echo '')

useradd -m "harley"
useradd -m "joker"
useradd -m "batman"
useradd -m "gordon"

echo "harley $FLAG1" > /home/all.txt
echo "joker $FLAG2" >> /home/all.txt
echo "batman $FLAG5" >> /home/all.txt
echo "gordon $FLAG3" >> /home/all.txt

echo "harley:$FLAG1" | chpasswd
echo "joker:$FLAG2" | chpasswd
echo "batman:$FLAG5" | chpasswd
echo "gordon:$FLAG3" | chpasswd
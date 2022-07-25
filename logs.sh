#!/bin/bash
weblogsraw=web-logs-raw
for log in $weblogsraw 
do
  
 cat $weblogsraw  | grep "coderbyte heroku/router" | cut -d' ' -f10,11 | awk -F'=' '{print $1,$2,$3} ' | awk -F\" '{print $1,$2}' | cut -d' ' -f1,2,5 | awk '{ if ( $3 == "MASKED") print $1,$2" [fwd=MASKED]"; else print $1,$2}'

done 
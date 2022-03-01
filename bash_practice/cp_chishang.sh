#!/bin/bash
for yy in 2013 2014 2015 2016 2017;do
      for jday in $(ls -d $yy/*);do
            for sta in CHS1 CHS2 CHS3 CHS4 CHS5;do
                  DIR=$jday/$sta
                  if [[ -d $DIR ]] ;then
                        echo $DIR
                        cp $DIR/*HH* /open/project/2013/2013CHISHANG/seed/$sta/.
                  else
                        continue
                  fi
            done
      done
done   

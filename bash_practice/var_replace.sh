#!/bin/bash

### reference https://linux.vbird.org/linux_basic/centos7/0320bash.php#variable_locale
echo '# 代表從頭開始刪除'
echo '${filename#*\_}  =${filename#*_} \代表後面符號沒有特殊作用'
# for filename in *; do
#    ext=${filename#*\_}
#    echo $filename $ext
# done
V=A_B_C_D_E_F
echo '${V}' ${V}
echo '${V#*_}' ${V#*_}
echo '${V##*_}' ${V##*_}
echo '${V#*\_}' ${V#*\_}
echo '${V##*\_}' ${V##*\_}

echo '################################'
echo '% 代表從尾開始刪除'
echo '${filename%_*}  =${filename%*} \代表後面符號沒有特殊作用'
V=A_B_C_D_E_F
echo '${V}' ${V}
echo '${V%_*}' ${V%_*}
echo '${V%%_*}' ${V%%_*}
echo '${V%\_*}' ${V%\_*}
echo '${V%%\_*}' ${V%%\_*}

### replace
#${變數/舊字串/新字串} 只改第一個
#${變數//舊字串/新字串} 改全部
echo ' '
echo '### replace '
VV=A_A_A_A_A_A
echo '${VV}' ${VV}
echo '${VV/A/a}' ${VV/A/a}
echo '${VV//A/a}' ${VV//A/a}
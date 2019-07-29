#!/usr/bin/env sh

mysqldump --user=root --password="1r;2sL_*67V0?P;a{ls-*56$:?;*XT" --host=127.0.0.1 elrepulgue > app/sql/elrepulgue.sql
cp app/sql/elrepulgue.sql app/sql/$(date +"%Y%m%d_%H%M%S")_elrepulgue.sql
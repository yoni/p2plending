#!/usr/bin/env sh
for name in LoanStatsNew InFunding2StatsNew RejectStats
do
  wget "https://www.lendingclub.com/fileDownload.action?file=$name.csv&type=gen" -O $name.csv
done

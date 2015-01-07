#!/bin/bash

hadoop fs -rmr -skipTrash /BI/warehouse/tmp.db/tran_statistics_not_realtime_test/_TEMP
hadoop fs -rmr -skipTrash /BI/warehouse/tmp.db/tran_statistics_not_realtime_test/*
hadoop fs -rmr -skipTrash /tmp/tran_statistics_not_realtime_test/

hadoop --config . jar combined.jar com.chinabank.wrycm.TransactionStatistic -r 100 -t

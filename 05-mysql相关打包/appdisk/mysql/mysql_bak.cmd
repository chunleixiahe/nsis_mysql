@echo off  

set bakname=bea_%time:~0,2%_%time:~3,2%_%time:~6,2%.sql

echo ���ڱ���
mysql5.0.90_hz\bin\mysqldump  -h127.0.0.1 -uroot -p!@#$%%12345 test>%bakname%

echo �������
echo �ļ�·��:%~dp0%bakname%
 
echo.

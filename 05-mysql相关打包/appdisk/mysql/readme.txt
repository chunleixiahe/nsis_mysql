
1)
����mysql.cmd
����mysql

2)
ֹͣmysql.cmd
ֹͣmysql


3)
heidisql.exe ��һ���򵥵�mysql�ͻ���
"\mysql5.0.90_hz\bin\heidisql.exe"

����\mysql5.0.90_hz\bin�е������ļ�����Ҫ����������·��ִ�С�



========================
mysql �����ܽ�
 
1��
���������ļ�ʹmysql�ı��������ִ�Сд
�����ļ���  /usr/share/mysql �¿����� my-medium.cnf �� /etc/my.cnf

��[mysqld]�����,ʵ�ֲ����ֱ�����Сд 
lower_case_table_names=1 

//�����windows���ù���

2��

���ı���ΪUTF-8
[client]
default-character-set=utf8    //������������

[mysqld]  
character_set_server=utf8    //������������
init_connect='SET NAMES utf8'   //������������


[mysql] 
default-character-set=utf8   //������������

 
3��
�������ݿ�����ΪInnoDB ��֧������
[mysqld]  


default-storage-engine =InnoDB #InnoDB MYISAM    //InnoDB��֧������
#skip-innodb                             //InnoDB��֧������
 
4��
������ʱ����Ҫʹ��   /usr/share/mysql/mysql.server   start 
Ĭ�����Զ��������������  chkconfig mysql on����Ϊ�Զ�����
 
5��
�������ݿ��ʱ����Ҫָ������
create  database  dbname  default charset utf8

 
6: 
mysql ��������
mysqladmin -u root -p password root   �س�����ʾ����ԭ����(���ԭ����Ϊ�գ�ֱ�ӻس��Ͱ�����ӿոĳ���root)

 
7:
����mysql ����Զ������
RENAME USER 'root'@'localhost' TO 'root'@'%';  
 
8��
���ݺͻ�ԭ

���ݣ�  mysqldump -h127.0.0.1 -uroot -proot dbname>dbname2012.bak.sql
��ԭ��  source  dbname2012.bak.sql





 
 
create database xsxk
on
(
	Name=xsxk,--���������ݿ������
	FileName="E:\xsxk_log.mdf",--���������ݿ�Ĵ洢·��
	size=5MB,
	MaxSize=30MB,
	FileGrowth=5%
)
log on
(
	Name=xsxk_log,--������־�ļ����߼���
	FileName="E:\xsxk_log.ldf",
	Size=3MB,
	MaxSize=20MB,
	FileGrowth=2  --FileGrowth=0��ʾ�������Զ�����
)
 CREATE SCHEMA aa
 
 use xsxk
 go
 CREATE TABLE xsxk.aa.temp
 (
	tno int primary key,
	tname varchar(12),
)
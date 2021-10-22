create database xsxk
on
(
	Name=xsxk,--创建的数据库的名字
	FileName="E:\xsxk_log.mdf",--创建的数据库的存储路径
	size=5MB,
	MaxSize=30MB,
	FileGrowth=5%
)
log on
(
	Name=xsxk_log,--数据日志文件的逻辑名
	FileName="E:\xsxk_log.ldf",
	Size=3MB,
	MaxSize=20MB,
	FileGrowth=2  --FileGrowth=0表示不启用自动增长
)
 CREATE SCHEMA aa
 
 use xsxk
 go
 CREATE TABLE xsxk.aa.temp
 (
	tno int primary key,
	tname varchar(12),
)
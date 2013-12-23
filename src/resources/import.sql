INSERT INTO wtf_navgroup (id,code,collapse,icon,name,url) VALUES ('000','000','Y','icon-dashboard','Dashboard','');
INSERT INTO wtf_navgroup (id,code,collapse,icon,name,url) VALUES ('010','010','Y','icon-dashboard','Thread Information','');
INSERT INTO wtf_navgroup (id,code,collapse,icon,name,url) VALUES ('020','020','Y','icon-question-sign','Ranking List','');
INSERT INTO wtf_navitem (id,groupId,name,target,url) VALUES ('0.010','000','Dashboard','Y','monitor/dashboard');
INSERT INTO wtf_navitem (id,groupId,name,target,url) VALUES ('0.020','000','My Favorate1','Y','monitor/dashboard');
INSERT INTO wtf_navitem (id,groupId,name,target,url) VALUES ('0.030','000','My Favorate2','Y','monitor/dashboard');
INSERT INTO wtf_navitem (id,groupId,name,target,url) VALUES ('1.010','010','Monitored Servers','Y','monitor/servers');
INSERT INTO wtf_navitem (id,groupId,name,target,url) VALUES ('1.020','010','Instant Threads','Y','monitor/threadinfo');
INSERT INTO wtf_navitem (id,groupId,name,target,url) VALUES ('1.030','010','History Threads','Y','monitor/threadinfohis');
INSERT INTO wtf_navitem (id,groupId,name,target,url) VALUES ('1.040','010','Action Recording','Y','monitor/actionrecord');
INSERT INTO wtf_navitem (id,groupId,name,target,url) VALUES ('2.010','020','Thread duration list ','Y','monitor/tduration');
INSERT INTO wtf_navitem (id,groupId,name,target,url) VALUES ('2.020','020','Thread db conns list','Y','monitor/tdbconns');
INSERT INTO wtf_navitem (id,groupId,name,target,url) VALUES ('2.030','020','Thread sql count list','Y','monitor/tsqlcount');
INSERT INTO wtf_navitem (id,groupId,name,target,url) VALUES ('2.040','020','Thread stage count list','Y','monitor/tstagescount');
INSERT INTO wtf_navitem (id,groupId,name,target,url) VALUES ('2.110','020','Sql duration list ','Y','monitor/sqlduration');
INSERT INTO wtf_navitem (id,groupId,name,target,url) VALUES ('2.120','020','Sql result count list','Y','monitor/sqlresultcount');
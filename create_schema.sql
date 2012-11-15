﻿drop table T_JIRA_CUSTOM_FIELD cascade;
drop table T_JIRA_ISSUE cascade;
drop sequence t_jira_issue_id_seq;

create sequence t_jira_issue_id_seq;
create table T_JIRA_ISSUE (
	ID INTEGER PRIMARY KEY DEFAULT nextval('t_jira_issue_id_seq')
	,ASSIGNEE TEXT
	,CREATION_DATE TIMESTAMP
	,DESCRIPTION TEXT
	,JIRA_URI TEXT
	,JIRA_KEY TEXT
	,PRIORITY TEXT
	,PROJECT TEXT
	,REPORTER TEXT
	,STATUS TEXT
	,SUMMARY TEXT
	,UPDATE_DATE TIMESTAMP
);


CREATE UNIQUE INDEX T_JIRA_ISSUE_key ON T_JIRA_ISSUE (JIRA_KEY);

create table T_JIRA_CUSTOM_FIELD (
	ID TEXT
	,JIRA_KEY TEXT
	,NAME TEXT
	,TYPE TEXT
	,VALUE TEXT
);

CREATE UNIQUE INDEX T_JIRA_CUSTOM_FIELD_key ON T_JIRA_CUSTOM_FIELD (JIRA_KEY,ID);



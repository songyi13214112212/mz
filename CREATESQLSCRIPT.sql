--����
CREATE	TABLE	CLINICROOM
(
	F_DM				VARCHAR(5)		NOT	NULL,
	F_CLINICMC			VARCHAR(50)		NOT NULL,
	F_ZJM				VARCHAR(20)		,
	PRIMARY KEY	(F_DM ASC),
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLINICROOM', @level2type=N'COLUMN',@level2name=N'F_DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����MC'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLINICROOM', @level2type=N'COLUMN',@level2name=N'F_CLINICMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLINICROOM', @level2type=N'COLUMN',@level2name=N'F_ZJM'
GO
--����
CREATE	TABLE	DEPARTMENT
(
	F_DM				VARCHAR(5)		NOT	NULL,
	F_DEPARTMC			VARCHAR(50)		NOT	NULL,
	F_CN				VARCHAR(10)		,
	F_ZJM				VARCHAR(20)		,
	F_TELEPHONE			VARCHAR(100)	,
	F_ROLE				VARCHAR(1)		,
	PRIMARY KEY(F_DM ASC),
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEPARTMENT', @level2type=N'COLUMN',@level2name=N'F_DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEPARTMENT', @level2type=N'COLUMN',@level2name=N'F_DEPARTMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Ҽ��'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEPARTMENT', @level2type=N'COLUMN',@level2name=N'F_CN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEPARTMENT', @level2type=N'COLUMN',@level2name=N'F_ZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ҵ绰'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEPARTMENT', @level2type=N'COLUMN',@level2name=N'F_TELEPHONE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�ְ�ܿ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEPARTMENT', @level2type=N'COLUMN',@level2name=N'F_ROLE'
GO
--�Һ�����
CREATE	TABLE	GHLB
(
	F_DM				VARCHAR(5)		NOT NULL,
	F_GHLBMC			VARCHAR(50)		NOT NULL,
	F_ZJM				VARCHAR(20)		,
	F_JE				FLOAT	DEFAULT	0,
	F_GBF				FLOAT	DEFAULT	0,
	PRIMARY KEY(F_DM ASC),
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Һ�����ID'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GHLB', @level2type=N'COLUMN',@level2name=N'F_DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GHLB', @level2type=N'COLUMN',@level2name=N'F_GHLBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GHLB', @level2type=N'COLUMN',@level2name=N'F_ZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���'			, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GHLB', @level2type=N'COLUMN',@level2name=N'F_JE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GHLB', @level2type=N'COLUMN',@level2name=N'F_GBF'
GO
--��Ա 
CREATE	TABLE	EMPLOYEE
(
	F_DM				VARCHAR(5)		NOT NULL,
	F_EMPMC				VARCHAR(50)		NOT	NULL,
	F_ZJM				VARCHAR(20)		,
	F_ENTRYTIME			VARCHAR(20)		,
	F_JOB				VARCHAR(50)		,
	F_CN				VARCHAR(10)		,
	F_GENDER			VARCHAR(2)		,
	F_AGE				VARCHAR(10)		,
	F_IDCARD			VARCHAR(18)		,
	F_TELEPHONE			VARCHAR(100)	,
	F_DEPART			VARCHAR(5)		,
	F_CLINIC			VARCHAR(5)		,
	F_GHLB				VARCHAR(5)		,
	PRIMARY KEY(F_DM ASC),
	FOREIGN	KEY(F_DEPART)	REFERENCES DEPARTMENT(F_DM),
	FOREIGN	KEY(F_CLINIC)	REFERENCES CLINICROOM(F_DM),
	FOREIGN KEY(F_GHLB)		REFERENCES GHLB(F_DM),

)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ԱID'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ա����'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_EMPMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_ZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְʱ��'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_ENTRYTIME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ְ�� '	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_JOB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ա���'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_CN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ա�'			, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_GENDER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����'			, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_AGE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����֤'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_IDCARD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_TELEPHONE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_DEPART'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_CLINIC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Һ�����'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_GHLB'
GO
--����Ա
CREATE	TABLE	USEROPERATOR
(
	F_DM				VARCHAR(5)		NOT NULL,
	F_USERMC			VARCHAR(50)		NOT NULL,
	F_PASSWORD			VARCHAR(20)		,
	F_EMP				VARCHAR(5)		,
	PRIMARY KEY(F_DM ASC),
	FOREIGN KEY(F_EMP)	REFERENCES	EMPLOYEE(F_DM)
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ԱID'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USEROPERATOR', @level2type=N'COLUMN',@level2name=N'F_DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ԱMC'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USEROPERATOR', @level2type=N'COLUMN',@level2name=N'F_USERMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USEROPERATOR', @level2type=N'COLUMN',@level2name=N'F_PASSWORD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ա'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USEROPERATOR', @level2type=N'COLUMN',@level2name=N'F_EMP'
GO
--�����ֲ�
CREATE	TABLE	[DIAGNOSIS TREATMENT MANUAL]
(
	F_DM				VARCHAR(30)			NOT	NULL,
	F_DATE				VARCHAR(10) DEFAULT CONVERT(VARCHAR(10),GETDATE(),120)	 ,
	F_TIME				VARCHAR(10) DEFAULT	CONVERT(VARCHAR(10),GETDATE(),108)	 ,
	F_FULLNAME			VARCHAR(50)			NOT NULL,
	F_ZJM				VARCHAR(20)			,
	F_TELEPHONE			VARCHAR(100)		,
	F_GENDER			VARCHAR(2)			,
	F_AGE				VARCHAR(10)			,
	F_CREATOR			VARCHAR(20)			,
	PRIMARY KEY (F_DM ASC),
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ֲ���'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS TREATMENT MANUAL', @level2type=N'COLUMN',@level2name=N'F_DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ֲ�����'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS TREATMENT MANUAL', @level2type=N'COLUMN',@level2name=N'F_DATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ֲ�ʱ��'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS TREATMENT MANUAL', @level2type=N'COLUMN',@level2name=N'F_TIME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ֲ�����'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS TREATMENT MANUAL', @level2type=N'COLUMN',@level2name=N'F_FULLNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ֲ�������'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS TREATMENT MANUAL', @level2type=N'COLUMN',@level2name=N'F_ZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ֲ���ϵ�绰'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS TREATMENT MANUAL', @level2type=N'COLUMN',@level2name=N'F_TELEPHONE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ֲ��Ա�'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS TREATMENT MANUAL', @level2type=N'COLUMN',@level2name=N'F_GENDER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ֲ�����'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS TREATMENT MANUAL', @level2type=N'COLUMN',@level2name=N'F_AGE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ֲᴴ����'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS TREATMENT MANUAL', @level2type=N'COLUMN',@level2name=N'F_CREATOR'
GO
--����
CREATE	TABLE	[PATIENT]
(
	F_DM				VARCHAR(30)			NOT NULL,
	F_PATIENTMC			VARCHAR(50)			NOT NULL,
	F_GENDER			VARCHAR(1)	CHECK(F_GENDER IN ('��','Ů')),
	F_AGE				VARCHAR(10)			,
	F_TELEPHONE			VARCHAR(100)		,
	F_IDCARD			VARCHAR(20)			,
	F_ZJM				VARCHAR(20)			,
	F_BIRTHTIME			VARCHAR(10)			,
	F_DATE				VARCHAR(10) DEFAULT CONVERT(VARCHAR(10),GETDATE(),120)	 ,
	F_TIME				VARCHAR(10) DEFAULT	CONVERT(VARCHAR(10),GETDATE(),108)	 ,
	PRIMARY KEY(F_DM ASC),	
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˱��'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PATIENT', @level2type=N'COLUMN',@level2name=N'F_DM'
GO																		    
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PATIENT', @level2type=N'COLUMN',@level2name=N'F_PATIENTMC'
GO																		    
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ա�'			, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PATIENT', @level2type=N'COLUMN',@level2name=N'F_GENDER'
GO																		    
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����'			, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PATIENT', @level2type=N'COLUMN',@level2name=N'F_AGE'
GO																		    
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�绰'			, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PATIENT', @level2type=N'COLUMN',@level2name=N'F_TELEPHONE'
GO																		    
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����֤'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PATIENT', @level2type=N'COLUMN',@level2name=N'F_IDCARD'
GO																		    
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PATIENT', @level2type=N'COLUMN',@level2name=N'F_ZJM'
GO																		    
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����'			, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PATIENT', @level2type=N'COLUMN',@level2name=N'F_BIRTHTIME'
GO																		    
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����'			, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PATIENT', @level2type=N'COLUMN',@level2name=N'F_DATE'
GO																		    
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ��'			, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PATIENT', @level2type=N'COLUMN',@level2name=N'F_TIME'
GO

--�Һ�ע��
CREATE	TABLE	REISGHB
(
	F_DJH				INT			NOT NULL,
	F_DATE				VARCHAR(10) DEFAULT CONVERT(VARCHAR(10),GETDATE(),120)	 ,
	F_TIME				VARCHAR(10) DEFAULT	CONVERT(VARCHAR(10),GETDATE(),108)	 ,
	F_STATE				VARCHAR(1)	CHECK	(F_STATE IN ('��','ƽ'))			 ,
	F_TYPE				VARCHAR(1)	CHECK	(F_TYPE	IN	('��','��','��'))		 ,
	F_GHLB				VARCHAR(5)	,
	F_DIAGNOSIS			VARCHAR(30)	,
	F_PATIENT			VARCHAR(30) ,
	F_DEPART			VARCHAR(5)	,
	F_EMP				VARCHAR(5)	,
	F_CLINIC			VARCHAR(5)	,
	F_JE				FLOAT		DEFAULT	0,
	F_GBF				FLOAT		DEFAULT	0,
	F_CREATOR			VARCHAR(20)	,
	FOREIGN	KEY(F_DIAGNOSIS)	REFERENCES [DIAGNOSIS TREATMENT MANUAL](F_DM),
	FOREIGN KEY(F_PATIENT)		REFERENCES	PATIENT(F_DM),
	FOREIGN KEY(F_DEPART)		REFERENCES	DEPARTMENT(F_DM),
	FOREIGN KEY(F_EMP)			REFERENCES	EMPLOYEE(F_DM),
	FOREIGN KEY(F_CLINIC)		REFERENCES	CLINICROOM(F_DM),
	FOREIGN KEY(F_GHLB)			REFERENCES	GHLB(F_DM),
	PRIMARY	KEY	(F_DJH),
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ݺ�'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_DJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_DATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ��'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_TIME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_STATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_TYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ֲ�'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_DIAGNOSIS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_PATIENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_DEPART'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ա'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_EMP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_CLINIC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_JE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_GBF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƶ���'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_CREATOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Һ�����'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_GHLB'
GO
--�Һ�ע����չ
CREATE	TABLE	REISGHBEXTEND
(
	F_DJH		INT		NOT	NULL,
	F_ISJZ		VARCHAR(1),
	F_ISSAVE	VARCHAR(1),
	F_BRACK		VARCHAR(1),
	F_ISZF		VARCHAR(1),
	PRIMARY KEY (F_DJH ASC),
	FOREIGN KEY(F_DJH)	REFERENCES REISGHB(F_DJH)
	ON UPDATE CASCADE 
	ON DELETE CASCADE
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Һ�ע�ᵥ�ݺ�'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHBEXTEND', @level2type=N'COLUMN',@level2name=N'F_DJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����'				, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHBEXTEND', @level2type=N'COLUMN',@level2name=N'F_ISJZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����'				, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHBEXTEND', @level2type=N'COLUMN',@level2name=N'F_ISSAVE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˺�'				, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHBEXTEND', @level2type=N'COLUMN',@level2name=N'F_BRACK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����'				, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHBEXTEND', @level2type=N'COLUMN',@level2name=N'F_ISZF'
GO
--������Ŀ���
CREATE	TABLE	DIAGNOSIS_ITEM_CATEGORY
(
	F_DM						VARCHAR(60)		NOT		NULL,
	[F_DIAGNOSIS ITEM CATEGORY] VARCHAR(100) NOT NULL,
	F_JC						INT			,
	F_KC						BIT			,
	PRIMARY KEY(F_DM ASC)					,
	
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ŀ�����'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS_ITEM_CATEGORY', @level2type=N'COLUMN',@level2name=N'F_DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ŀ�������'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS_ITEM_CATEGORY', @level2type=N'COLUMN',@level2name=N'F_DIAGNOSIS ITEM CATEGORY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����'				, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS_ITEM_CATEGORY', @level2type=N'COLUMN',@level2name=N'F_JC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���'				, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS_ITEM_CATEGORY', @level2type=N'COLUMN',@level2name=N'F_KC'
GO
--������Ŀ��ϸ
CREATE	TABLE	DIAGNOSIS_ITEM_DETAIL
(
	F_BH				VARCHAR(60)			NOT	NULL,
	F_DIAGNOSISITEMMC	VARCHAR(100)		NOT	NULL,



	PRIMARY KEY(F_BH ASC)				,
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ŀ���'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS_ITEM_DETAIL', @level2type=N'COLUMN',@level2name=N'F_BH'
GO

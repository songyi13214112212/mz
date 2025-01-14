CREATE DATABASE [fzdata]  ON (NAME = N'DATA_data', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL\Data\fzdata_data.mdf' , SIZE = 50, FILEGROWTH = 10%) LOG ON (NAME = N'DATA_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL\Data\fzdata_log.ldf' , SIZE = 10, FILEGROWTH = 10%)
 COLLATE Chinese_PRC_CI_AS
GO

exec sp_dboption N'fzdata', N'autoclose', N'false'
GO

exec sp_dboption N'fzdata', N'bulkcopy', N'false'
GO

exec sp_dboption N'fzdata', N'trunc. log', N'true'
GO

exec sp_dboption N'fzdata', N'torn page detection', N'false'
GO

exec sp_dboption N'fzdata', N'read only', N'false'
GO

exec sp_dboption N'fzdata', N'dbo use', N'false'
GO

exec sp_dboption N'fzdata', N'single', N'false'
GO

exec sp_dboption N'fzdata', N'autoshrink', N'false'
GO

exec sp_dboption N'fzdata', N'ANSI null default', N'true'
GO

exec sp_dboption N'fzdata', N'recursive triggers', N'false'
GO

exec sp_dboption N'fzdata', N'ANSI nulls', N'false'
GO

exec sp_dboption N'fzdata', N'concat null yields null', N'false'
GO

exec sp_dboption N'fzdata', N'cursor close on commit', N'false'
GO

exec sp_dboption N'fzdata', N'default to local cursor', N'false'
GO

exec sp_dboption N'fzdata', N'quoted identifier', N'false'
GO

exec sp_dboption N'fzdata', N'ANSI warnings', N'false'
GO

exec sp_dboption N'fzdata', N'auto create statistics', N'true'
GO

exec sp_dboption N'fzdata', N'auto update statistics', N'true'
GO

if( (@@microsoftversion / power(2, 24) = 8) and (@@microsoftversion & 0xffff >= 724) )
	exec sp_dboption N'fzdata', N'db chaining', N'false'
GO

use [fzdata]
GO

CREATE TABLE [dbo].[AINPUTSOURCE] (
	[F_name] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_caption] [char] (30) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[BBVAR] (
	[F_bbbh] [char] (3) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_varname] [char] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_Index] [int] NULL ,
	[F_caption] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_text] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_type] [int] NOT NULL ,
	[F_input] [int] NOT NULL ,
	[F_ass1] [char] (51) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ass2] [char] (51) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ass3] [char] (51) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dropsource] [char] (51) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_droptablename] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dropfield1] [varchar] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dropfield2] [varchar] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_textsql] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_textsource] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_preFix] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_postfix] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[BM] (
	[F_DM] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_MC] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_DE] [numeric](15, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[BM3] (
	[f_dm] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_date] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CBPOWER] (
	[f_formName] [char] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_Index] [int] NOT NULL ,
	[f_controlName] [varchar] (40) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_controlType] [int] NULL ,
	[f_ItemIndex] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CGD] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJH] [int] NOT NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_VENDOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JSFS] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JS] [numeric](15, 2) NULL ,
	[F_JSH] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SFZY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fpxz] [char] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HZ] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_type] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CGD2] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJH] [int] NOT NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_VENDOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JSFS] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JS] [numeric](15, 2) NULL ,
	[F_JSH] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SFZY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fpxz] [char] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HZ] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_type] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CGD3] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJH] [int] NOT NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_VENDOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JSFS] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JS] [numeric](15, 2) NULL ,
	[F_JSH] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SFZY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fpxz] [char] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HZ] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_type] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CGDMX] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_DJ] [float] NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_SLV] [numeric](15, 2) NULL ,
	[F_SE] [numeric](15, 2) NULL ,
	[F_HJ] [numeric](15, 2) NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UC] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UN] [numeric](15, 2) NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_sljc] [numeric](15, 3) NULL ,
	[f_sl2] [numeric](15, 2) NULL ,
	[f_dj3] [float] NULL ,
	[f_dj4] [float] NULL ,
	[f_dj5] [float] NULL ,
	[f_color] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_s1] [int] NULL ,
	[f_s2] [int] NULL ,
	[f_s3] [int] NULL ,
	[f_s4] [int] NULL ,
	[f_s5] [int] NULL ,
	[f_s6] [int] NULL ,
	[f_s7] [int] NULL ,
	[f_s8] [int] NULL ,
	[f_s9] [int] NULL ,
	[f_s10] [int] NULL ,
	[f_s11] [int] NULL ,
	[f_s12] [int] NULL ,
	[f_s13] [int] NULL ,
	[f_s14] [int] NULL ,
	[f_s15] [int] NULL ,
	[f_s16] [int] NULL ,
	[f_s17] [int] NULL ,
	[f_s18] [int] NULL ,
	[f_s19] [int] NULL ,
	[f_s20] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CGDMX2] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_DJ] [float] NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_SLV] [numeric](15, 2) NULL ,
	[F_SE] [numeric](15, 2) NULL ,
	[F_HJ] [numeric](15, 2) NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UC] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UN] [numeric](15, 2) NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_sljc] [numeric](15, 2) NULL ,
	[f_sl2] [numeric](15, 2) NULL ,
	[f_dj3] [float] NULL ,
	[f_dj4] [float] NULL ,
	[f_dj5] [float] NULL ,
	[f_color] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_s1] [int] NULL ,
	[f_s2] [int] NULL ,
	[f_s3] [int] NULL ,
	[f_s4] [int] NULL ,
	[f_s5] [int] NULL ,
	[f_s6] [int] NULL ,
	[f_s7] [int] NULL ,
	[f_s8] [int] NULL ,
	[f_s9] [int] NULL ,
	[f_s10] [int] NULL ,
	[f_s11] [int] NULL ,
	[f_s12] [int] NULL ,
	[f_s13] [int] NULL ,
	[f_s14] [int] NULL ,
	[f_s15] [int] NULL ,
	[f_s16] [int] NULL ,
	[f_s17] [int] NULL ,
	[f_s18] [int] NULL ,
	[f_s19] [int] NULL ,
	[f_s20] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CGDMX3] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_DJ] [float] NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_SLV] [numeric](15, 2) NULL ,
	[F_SE] [numeric](15, 2) NULL ,
	[F_HJ] [numeric](15, 2) NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UC] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UN] [numeric](15, 2) NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_sljc] [numeric](15, 2) NULL ,
	[f_sl2] [numeric](15, 2) NULL ,
	[F_DJ3] [float] NULL ,
	[F_DJ4] [float] NULL ,
	[F_DJ5] [float] NULL ,
	[f_color] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_s1] [int] NULL ,
	[f_s2] [int] NULL ,
	[f_s3] [int] NULL ,
	[f_s4] [int] NULL ,
	[f_s5] [int] NULL ,
	[f_s6] [int] NULL ,
	[f_s7] [int] NULL ,
	[f_s8] [int] NULL ,
	[f_s9] [int] NULL ,
	[f_s10] [int] NULL ,
	[f_s11] [int] NULL ,
	[f_s12] [int] NULL ,
	[f_s13] [int] NULL ,
	[f_s14] [int] NULL ,
	[f_s15] [int] NULL ,
	[f_s16] [int] NULL ,
	[f_s17] [int] NULL ,
	[f_s18] [int] NULL ,
	[f_s19] [int] NULL ,
	[f_s20] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CGDMXMX] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TYPE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SIZE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL] [int] NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CGDMXMX2] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TYPE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SIZE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL] [int] NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CGDMXMX3] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TYPE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SIZE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL] [int] NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CKD] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_DJH] [int] NOT NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SFZY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djlb] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fpxz] [char] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djh0] [int] NULL ,
	[f_memo] [char] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_sl2] [numeric](15, 2) NULL ,
	[f_type] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CKD2] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_DJH] [int] NOT NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SFZY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djlb] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fpxz] [char] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djh0] [int] NULL ,
	[f_memo] [char] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_sl2] [numeric](15, 2) NULL ,
	[f_type] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CKD3] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_DJH] [int] NOT NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SFZY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djlb] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fpxz] [char] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djh0] [int] NULL ,
	[f_memo] [char] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_sl2] [numeric](15, 2) NULL ,
	[f_type] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CKDMX] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_DJ] [float] NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_SLV] [numeric](15, 2) NULL ,
	[F_SE] [numeric](15, 2) NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ISCB] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UC] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UN] [numeric](15, 2) NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_dj3] [float] NULL ,
	[f_dj4] [float] NULL ,
	[f_dj5] [float] NULL ,
	[f_sljc] [numeric](15, 3) NULL ,
	[f_sl2] [numeric](15, 2) NULL ,
	[f_color] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_s1] [int] NULL ,
	[f_s2] [int] NULL ,
	[f_s3] [int] NULL ,
	[f_s4] [int] NULL ,
	[f_s5] [int] NULL ,
	[f_s6] [int] NULL ,
	[f_s7] [int] NULL ,
	[f_s8] [int] NULL ,
	[f_s9] [int] NULL ,
	[f_s10] [int] NULL ,
	[f_s11] [int] NULL ,
	[f_s12] [int] NULL ,
	[f_s13] [int] NULL ,
	[f_s14] [int] NULL ,
	[f_s15] [int] NULL ,
	[f_s16] [int] NULL ,
	[f_s17] [int] NULL ,
	[f_s18] [int] NULL ,
	[f_s19] [int] NULL ,
	[f_s20] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CKDMX2] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_DJ] [float] NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_SLV] [numeric](15, 2) NULL ,
	[F_SE] [numeric](15, 2) NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ISCB] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UC] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UN] [numeric](15, 2) NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_dj3] [float] NULL ,
	[f_dj4] [float] NULL ,
	[f_dj5] [float] NULL ,
	[f_sljc] [numeric](15, 3) NULL ,
	[f_sl2] [numeric](15, 2) NULL ,
	[f_color] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_s1] [int] NULL ,
	[f_s2] [int] NULL ,
	[f_s3] [int] NULL ,
	[f_s4] [int] NULL ,
	[f_s5] [int] NULL ,
	[f_s6] [int] NULL ,
	[f_s7] [int] NULL ,
	[f_s8] [int] NULL ,
	[f_s9] [int] NULL ,
	[f_s10] [int] NULL ,
	[f_s11] [int] NULL ,
	[f_s12] [int] NULL ,
	[f_s13] [int] NULL ,
	[f_s14] [int] NULL ,
	[f_s15] [int] NULL ,
	[f_s16] [int] NULL ,
	[f_s17] [int] NULL ,
	[f_s18] [int] NULL ,
	[f_s19] [int] NULL ,
	[f_s20] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CKDMX3] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_DJ] [float] NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_SLV] [numeric](15, 2) NULL ,
	[F_SE] [numeric](15, 2) NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ISCB] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UC] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UN] [numeric](15, 2) NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_dj3] [float] NULL ,
	[f_dj4] [float] NULL ,
	[f_dj5] [float] NULL ,
	[f_sljc] [numeric](15, 3) NULL ,
	[f_sl2] [numeric](15, 2) NULL ,
	[f_color] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_s1] [int] NULL ,
	[f_s2] [int] NULL ,
	[f_s3] [int] NULL ,
	[f_s4] [int] NULL ,
	[f_s5] [int] NULL ,
	[f_s6] [int] NULL ,
	[f_s7] [int] NULL ,
	[f_s8] [int] NULL ,
	[f_s9] [int] NULL ,
	[f_s10] [int] NULL ,
	[f_s11] [int] NULL ,
	[f_s12] [int] NULL ,
	[f_s13] [int] NULL ,
	[f_s14] [int] NULL ,
	[f_s15] [int] NULL ,
	[f_s16] [int] NULL ,
	[f_s17] [int] NULL ,
	[f_s18] [int] NULL ,
	[f_s19] [int] NULL ,
	[f_s20] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CKDMXMX] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TYPE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SIZE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL] [int] NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CKDMXMX2] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TYPE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SIZE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL] [int] NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CKDMXMX3] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TYPE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SIZE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL] [int] NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[COMBBVAR] (
	[F_varname] [char] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_caption] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_text] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_type] [int] NOT NULL ,
	[F_input] [int] NOT NULL ,
	[F_ass1] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ass2] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ass3] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dropsource] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_droptablename] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dropfield1] [varchar] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dropfield2] [varchar] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_textsql] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_textsource] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_preFix] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_postfix] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[COMFIELD] (
	[f_name] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_index] [int] NULL ,
	[f_fieldname] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_displayLabel] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_width] [int] NULL ,
	[f_format] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_type] [char] (1) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[COMXZ] (
	[f_name] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_sql] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_result1] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_result2] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_result3] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_title] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_memo] [char] (80) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_prefix] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_Postfix] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_formWidth] [int] NOT NULL ,
	[f_formHeight] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CUSTOM] (
	[F_DM] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_MC] [varchar] (80) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_KHXH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TEL] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_POSTCODE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ADDRESS] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_LXR] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZH] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SH] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_KHH] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_QCYE] [numeric](15, 2) NULL ,
	[F_QMYE] [numeric](15, 2) NULL ,
	[F_SXED] [numeric](15, 2) NULL ,
	[F_J1] [numeric](15, 2) NULL ,
	[F_D1] [numeric](15, 2) NULL ,
	[F_J2] [numeric](15, 2) NULL ,
	[F_D2] [numeric](15, 2) NULL ,
	[F_J3] [numeric](15, 2) NULL ,
	[F_D3] [numeric](15, 2) NULL ,
	[F_J4] [numeric](15, 2) NULL ,
	[F_D4] [numeric](15, 2) NULL ,
	[F_J5] [numeric](15, 2) NULL ,
	[F_D5] [numeric](15, 2) NULL ,
	[F_J6] [numeric](15, 2) NULL ,
	[F_D6] [numeric](15, 2) NULL ,
	[F_J7] [numeric](15, 2) NULL ,
	[F_D7] [numeric](15, 2) NULL ,
	[F_J8] [numeric](15, 2) NULL ,
	[F_D8] [numeric](15, 2) NULL ,
	[F_J9] [numeric](15, 2) NULL ,
	[F_D9] [numeric](15, 2) NULL ,
	[F_J10] [numeric](15, 2) NULL ,
	[F_D10] [numeric](15, 2) NULL ,
	[F_J11] [numeric](15, 2) NULL ,
	[F_D11] [numeric](15, 2) NULL ,
	[F_J12] [numeric](15, 2) NULL ,
	[F_D12] [numeric](15, 2) NULL ,
	[F_GROUP] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZJM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb1] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb2] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb3] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb4] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_uc1] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_uc2] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_uc3] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_uc4] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_uc5] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_un1] [numeric](15, 2) NULL ,
	[f_un2] [numeric](15, 2) NULL ,
	[f_un3] [numeric](15, 2) NULL ,
	[f_un4] [numeric](15, 2) NULL ,
	[f_un5] [numeric](15, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CUSTOM3] (
	[f_dm] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_date] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CUSTOMDJ] (
	[f_djlx] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_index] [int] NOT NULL ,
	[f_field] [varchar] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_displaylabel] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_caption] [varchar] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_width] [int] NULL ,
	[f_readonly] [char] (5) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_visible] [char] (5) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_panel] [char] (5) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CUSTOMGRADE] (
	[f_dm] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_mc] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_kl] [int] NULL ,
	[f_priceNumber] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CUSTOMGROUP] (
	[F_DM] [char] (2) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_MC] [varchar] (40) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CUSTOMLB] (
	[f_dm] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_mc] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_jc] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CUS_SP] (
	[F_CUSTOM] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_MINDJ] [float] NULL ,
	[F_MAXDJ] [float] NULL ,
	[F_RECENTDJ] [float] NULL ,
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJH] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBD] (
	[F_DJH] [int] NOT NULL ,
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW1] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW2] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djh0] [int] NULL ,
	[f_type] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBD2] (
	[F_DJH] [int] NOT NULL ,
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW1] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW2] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djh0] [int] NULL ,
	[f_type] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBD3] (
	[F_DJH] [int] NOT NULL ,
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW1] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW2] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djh0] [int] NULL ,
	[f_type] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBDMX] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SLJC] [numeric](15, 3) NULL ,
	[F_DJ] [float] NULL ,
	[F_ISCB] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UC] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UN] [numeric](15, 2) NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_sl2] [numeric](15, 2) NULL ,
	[f_dj3] [float] NULL ,
	[f_dj4] [float] NULL ,
	[f_dj5] [float] NULL ,
	[f_color] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_s1] [int] NULL ,
	[f_s2] [int] NULL ,
	[f_s3] [int] NULL ,
	[f_s4] [int] NULL ,
	[f_s5] [int] NULL ,
	[f_s6] [int] NULL ,
	[f_s7] [int] NULL ,
	[f_s8] [int] NULL ,
	[f_s9] [int] NULL ,
	[f_s10] [int] NULL ,
	[f_s11] [int] NULL ,
	[f_s12] [int] NULL ,
	[f_s13] [int] NULL ,
	[f_s14] [int] NULL ,
	[f_s15] [int] NULL ,
	[f_s16] [int] NULL ,
	[f_s17] [int] NULL ,
	[f_s18] [int] NULL ,
	[f_s19] [int] NULL ,
	[f_s20] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBDMX2] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SLJC] [numeric](15, 3) NULL ,
	[F_DJ] [float] NULL ,
	[F_ISCB] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UC] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UN] [numeric](15, 2) NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_sl2] [numeric](15, 2) NULL ,
	[f_dj3] [float] NULL ,
	[f_dj4] [float] NULL ,
	[f_dj5] [float] NULL ,
	[f_color] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_s1] [int] NULL ,
	[f_s2] [int] NULL ,
	[f_s3] [int] NULL ,
	[f_s4] [int] NULL ,
	[f_s5] [int] NULL ,
	[f_s6] [int] NULL ,
	[f_s7] [int] NULL ,
	[f_s8] [int] NULL ,
	[f_s9] [int] NULL ,
	[f_s10] [int] NULL ,
	[f_s11] [int] NULL ,
	[f_s12] [int] NULL ,
	[f_s13] [int] NULL ,
	[f_s14] [int] NULL ,
	[f_s15] [int] NULL ,
	[f_s16] [int] NULL ,
	[f_s17] [int] NULL ,
	[f_s18] [int] NULL ,
	[f_s19] [int] NULL ,
	[f_s20] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBDMX3] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SLJC] [numeric](15, 3) NULL ,
	[F_DJ] [float] NULL ,
	[F_ISCB] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UC] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UN] [numeric](15, 2) NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_sl2] [numeric](15, 2) NULL ,
	[f_dj3] [float] NULL ,
	[f_dj4] [float] NULL ,
	[f_dj5] [float] NULL ,
	[f_color] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_s1] [int] NULL ,
	[f_s2] [int] NULL ,
	[f_s3] [int] NULL ,
	[f_s4] [int] NULL ,
	[f_s5] [int] NULL ,
	[f_s6] [int] NULL ,
	[f_s7] [int] NULL ,
	[f_s8] [int] NULL ,
	[f_s9] [int] NULL ,
	[f_s10] [int] NULL ,
	[f_s11] [int] NULL ,
	[f_s12] [int] NULL ,
	[f_s13] [int] NULL ,
	[f_s14] [int] NULL ,
	[f_s15] [int] NULL ,
	[f_s16] [int] NULL ,
	[f_s17] [int] NULL ,
	[f_s18] [int] NULL ,
	[f_s19] [int] NULL ,
	[f_s20] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBDMXMX] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TYPE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SIZE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL] [int] NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBDMXMX2] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TYPE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SIZE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL] [int] NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBDMXMX3] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TYPE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SIZE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL] [int] NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DBZZ] (
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SLS1] [numeric](15, 3) NULL ,
	[F_SLS2] [numeric](15, 3) NULL ,
	[F_SLS3] [numeric](15, 3) NULL ,
	[F_SLS4] [numeric](15, 3) NULL ,
	[F_SLS5] [numeric](15, 3) NULL ,
	[F_SLS6] [numeric](15, 3) NULL ,
	[F_SLS7] [numeric](15, 3) NULL ,
	[F_SLS8] [numeric](15, 3) NULL ,
	[F_SLS9] [numeric](15, 3) NULL ,
	[F_SLS10] [numeric](15, 3) NULL ,
	[F_SLS11] [numeric](15, 3) NULL ,
	[F_SLS12] [numeric](15, 3) NULL ,
	[F_JES1] [numeric](15, 2) NULL ,
	[F_JES2] [numeric](15, 2) NULL ,
	[F_JES3] [numeric](15, 2) NULL ,
	[F_JES4] [numeric](15, 2) NULL ,
	[F_JES5] [numeric](15, 2) NULL ,
	[F_JES6] [numeric](15, 2) NULL ,
	[F_JES7] [numeric](15, 2) NULL ,
	[F_JES8] [numeric](15, 2) NULL ,
	[F_JES9] [numeric](15, 2) NULL ,
	[F_JES10] [numeric](15, 2) NULL ,
	[F_JES11] [numeric](15, 2) NULL ,
	[F_JES12] [numeric](15, 2) NULL ,
	[F_SLF1] [numeric](15, 3) NULL ,
	[F_SLF2] [numeric](15, 3) NULL ,
	[F_SLF3] [numeric](15, 3) NULL ,
	[F_SLF4] [numeric](15, 3) NULL ,
	[F_SLF5] [numeric](15, 3) NULL ,
	[F_SLF6] [numeric](15, 3) NULL ,
	[F_SLF7] [numeric](15, 3) NULL ,
	[F_SLF8] [numeric](15, 3) NULL ,
	[F_SLF9] [numeric](15, 3) NULL ,
	[F_SLF10] [numeric](15, 3) NULL ,
	[F_SLF11] [numeric](15, 3) NULL ,
	[F_SLF12] [numeric](15, 3) NULL ,
	[F_JEF1] [numeric](15, 2) NULL ,
	[F_JEF2] [numeric](15, 2) NULL ,
	[F_JEF3] [numeric](15, 2) NULL ,
	[F_JEF4] [numeric](15, 2) NULL ,
	[F_JEF5] [numeric](15, 2) NULL ,
	[F_JEF6] [numeric](15, 2) NULL ,
	[F_JEF7] [numeric](15, 2) NULL ,
	[F_JEF8] [numeric](15, 2) NULL ,
	[F_JEF9] [numeric](15, 2) NULL ,
	[F_JEF10] [numeric](15, 2) NULL ,
	[F_JEF11] [numeric](15, 2) NULL ,
	[F_JEF12] [numeric](15, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DELETED] (
	[F_DATE1] [datetime] NULL ,
	[F_DATE2] [datetime] NULL ,
	[F_PZH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DELETED] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DHD] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJH] [int] NOT NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CUSTOM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JS] [numeric](15, 2) NULL ,
	[F_JSH] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_XSLB] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SFZY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JSFS] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HZ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_FPLX] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fpxz] [char] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djh0] [int] NULL ,
	[F_NEWSP] [char] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DHD2] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJH] [int] NOT NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CUSTOM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JS] [numeric](15, 2) NULL ,
	[F_JSH] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_XSLB] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SFZY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JSFS] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HZ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_FPLX] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fpxz] [char] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djh0] [int] NULL ,
	[F_NEWSP] [char] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DHD3] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJH] [int] NOT NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CUSTOM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JS] [numeric](15, 2) NULL ,
	[F_JSH] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_XSLB] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SFZY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JSFS] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HZ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_FPLX] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fpxz] [char] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djh0] [int] NULL ,
	[F_NEWSP] [char] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DHDMX] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_DJ] [float] NULL ,
	[F_KL] [int] NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_SLV] [numeric](15, 2) NULL ,
	[F_SE] [numeric](15, 2) NULL ,
	[F_CB] [numeric](15, 2) NULL ,
	[F_HJ] [numeric](15, 2) NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ISCB] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UC] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UN] [numeric](15, 2) NULL ,
	[f_sljc] [numeric](14, 3) NULL ,
	[f_fph] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_zf] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dwcb] [float] NULL ,
	[f_rate] [numeric](15, 2) NULL ,
	[f_sl2] [numeric](14, 2) NULL ,
	[f_dj3] [float] NULL ,
	[f_dj4] [float] NULL ,
	[f_dj5] [float] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DHDMX2] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_DJ] [float] NULL ,
	[F_KL] [int] NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_SLV] [numeric](15, 2) NULL ,
	[F_SE] [numeric](15, 2) NULL ,
	[F_CB] [numeric](15, 2) NULL ,
	[F_HJ] [numeric](15, 2) NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ISCB] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UC] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UN] [numeric](15, 2) NULL ,
	[f_sljc] [numeric](14, 3) NULL ,
	[f_fph] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_zf] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dwcb] [float] NULL ,
	[f_rate] [numeric](15, 2) NULL ,
	[f_sl2] [numeric](14, 2) NULL ,
	[f_dj3] [float] NULL ,
	[f_dj4] [float] NULL ,
	[f_dj5] [float] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DHDMX3] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_DJ] [float] NULL ,
	[F_KL] [int] NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_SLV] [numeric](15, 2) NULL ,
	[F_SE] [numeric](15, 2) NULL ,
	[F_CB] [numeric](15, 2) NULL ,
	[F_HJ] [numeric](15, 2) NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ISCB] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UC] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UN] [numeric](15, 2) NULL ,
	[f_sljc] [numeric](14, 3) NULL ,
	[f_fph] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_zf] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dwcb] [float] NULL ,
	[f_rate] [numeric](15, 2) NULL ,
	[f_sl2] [numeric](14, 2) NULL ,
	[f_dj3] [float] NULL ,
	[f_dj4] [float] NULL ,
	[f_dj5] [float] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DJH] (
	[F_JHD] [int] NULL ,
	[F_XHD] [int] NULL ,
	[F_CGD] [int] NULL ,
	[F_RKD] [int] NULL ,
	[F_CKD] [int] NULL ,
	[F_DBD] [int] NULL ,
	[F_XSBB] [int] NULL ,
	[F_PC] [int] NULL ,
	[F_YSJSD] [int] NULL ,
	[F_YFJSD] [int] NULL ,
	[F_ZZD] [int] NULL ,
	[F_TJD] [int] NULL ,
	[F_PSD] [int] NULL ,
	[f_jiez] [int] NULL ,
	[f_dhd] [int] NULL ,
	[f_ysqc] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_yfqc] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_cx] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DROPSOURCE] (
	[F_name] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_tablename] [char] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_field1] [char] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_field2] [char] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_field3] [char] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_bbbh] [char] (3) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ENV] (
	[F_BH] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_MC] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DATA] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[EVENT] (
	[f_djlx] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_index] [int] NOT NULL ,
	[f_condition] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_type] [char] (4) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_hint] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[FJXX] (
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_XX] [varchar] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BH] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[FPCOL] (
	[F_BH] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_INDEX] [int] NOT NULL ,
	[F_COLCAPTION] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_X] [int] NULL ,
	[F_Y] [int] NULL ,
	[F_ALIGNMENT] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[FPITEM] (
	[F_BH] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_ITEMBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_FONT] [char] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_X] [int] NULL ,
	[F_Y] [int] NULL ,
	[F_VISIBLE] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_INDEX] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[FPMODEL] (
	[F_BH] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_MC] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_LEFT] [int] NULL ,
	[F_TOP] [int] NULL ,
	[F_BBFONT] [char] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ROWS] [int] NULL ,
	[F_PAPERSIZE] [int] NULL ,
	[F_PAPERWIDTH] [int] NULL ,
	[F_PAPERLENGTH] [int] NULL ,
	[F_ORIENT] [int] NULL ,
	[F_COLS] [int] NULL ,
	[F_COLX] [int] NULL ,
	[F_COLY] [int] NULL ,
	[F_ROWHEIGHT] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[FZZZ] (
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_COLOR] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SIZE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL0] [int] NULL ,
	[F_SLS1] [int] NULL ,
	[F_SLS2] [int] NULL ,
	[F_SLS3] [int] NULL ,
	[F_SLS4] [int] NULL ,
	[F_SLS5] [int] NULL ,
	[F_SLS6] [int] NULL ,
	[F_SLS7] [int] NULL ,
	[F_SLS8] [int] NULL ,
	[F_SLS9] [int] NULL ,
	[F_SLS10] [int] NULL ,
	[F_SLS11] [int] NULL ,
	[F_SLS12] [int] NULL ,
	[F_SLF1] [int] NULL ,
	[F_SLF2] [int] NULL ,
	[F_SLF3] [int] NULL ,
	[F_SLF4] [int] NULL ,
	[F_SLF5] [int] NULL ,
	[F_SLF6] [int] NULL ,
	[F_SLF7] [int] NULL ,
	[F_SLF8] [int] NULL ,
	[F_SLF9] [int] NULL ,
	[F_SLF10] [int] NULL ,
	[F_SLF11] [int] NULL ,
	[F_SLF12] [int] NULL ,
	[F_SLYE] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[HW] (
	[F_DM] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_MC] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_local] [char] (1) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[HW3] (
	[f_dm] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_date] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[JGZZ] (
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SLS1] [numeric](15, 3) NULL ,
	[F_SLS2] [numeric](15, 3) NULL ,
	[F_SLS3] [numeric](15, 3) NULL ,
	[F_SLS4] [numeric](15, 3) NULL ,
	[F_SLS5] [numeric](15, 3) NULL ,
	[F_SLS6] [numeric](15, 3) NULL ,
	[F_SLS7] [numeric](15, 3) NULL ,
	[F_SLS8] [numeric](15, 3) NULL ,
	[F_SLS9] [numeric](15, 3) NULL ,
	[F_SLS10] [numeric](15, 3) NULL ,
	[F_SLS11] [numeric](15, 3) NULL ,
	[F_SLS12] [numeric](15, 3) NULL ,
	[F_JES1] [numeric](15, 2) NULL ,
	[F_JES2] [numeric](15, 2) NULL ,
	[F_JES3] [numeric](15, 2) NULL ,
	[F_JES4] [numeric](15, 2) NULL ,
	[F_JES5] [numeric](15, 2) NULL ,
	[F_JES6] [numeric](15, 2) NULL ,
	[F_JES7] [numeric](15, 2) NULL ,
	[F_JES8] [numeric](15, 2) NULL ,
	[F_JES9] [numeric](15, 2) NULL ,
	[F_JES10] [numeric](15, 2) NULL ,
	[F_JES11] [numeric](15, 2) NULL ,
	[F_JES12] [numeric](15, 2) NULL ,
	[F_SLF1] [numeric](15, 3) NULL ,
	[F_SLF2] [numeric](15, 3) NULL ,
	[F_SLF3] [numeric](15, 3) NULL ,
	[F_SLF4] [numeric](15, 3) NULL ,
	[F_SLF5] [numeric](15, 3) NULL ,
	[F_SLF6] [numeric](15, 3) NULL ,
	[F_SLF7] [numeric](15, 3) NULL ,
	[F_SLF8] [numeric](15, 3) NULL ,
	[F_SLF9] [numeric](15, 3) NULL ,
	[F_SLF10] [numeric](15, 3) NULL ,
	[F_SLF11] [numeric](15, 3) NULL ,
	[F_SLF12] [numeric](15, 3) NULL ,
	[F_JEF1] [numeric](15, 2) NULL ,
	[F_JEF2] [numeric](15, 2) NULL ,
	[F_JEF3] [numeric](15, 2) NULL ,
	[F_JEF4] [numeric](15, 2) NULL ,
	[F_JEF5] [numeric](15, 2) NULL ,
	[F_JEF6] [numeric](15, 2) NULL ,
	[F_JEF7] [numeric](15, 2) NULL ,
	[F_JEF8] [numeric](15, 2) NULL ,
	[F_JEF9] [numeric](15, 2) NULL ,
	[F_JEF10] [numeric](15, 2) NULL ,
	[F_JEF11] [numeric](15, 2) NULL ,
	[F_JEF12] [numeric](15, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[JHBB] (
	[F_CAPTION] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SP] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CB] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TOP] [int] NULL ,
	[F_LEFT] [int] NULL ,
	[F_ROWS] [int] NULL ,
	[F_SIZE] [int] NULL ,
	[F_LENGTH] [int] NULL ,
	[F_WIDTH] [int] NULL ,
	[F_ORIENT] [int] NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BH] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SPLB] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HZ] [smallint] NULL ,
	[F_TITLEFONT] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BBFONT] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLNUMBER] [int] NULL ,
	[F_COLCAPTION] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLWIDTH] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_VENDOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[JHD] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJH] [int] NOT NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_VENDOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JSFS] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JS] [numeric](15, 2) NULL ,
	[F_JSH] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SFZY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fpxz] [char] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djh0] [int] NULL ,
	[f_fplx] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_type] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[JHD2] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJH] [int] NOT NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_VENDOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JSFS] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JS] [numeric](15, 2) NULL ,
	[F_JSH] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SFZY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fpxz] [char] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djh0] [int] NULL ,
	[f_fplx] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_type] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[JHD3] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJH] [int] NOT NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_VENDOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JSFS] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JS] [numeric](15, 2) NULL ,
	[F_JSH] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SFZY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fpxz] [char] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djh0] [int] NULL ,
	[f_fplx] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_type] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[JHDMX] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_DJ] [float] NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_SLV] [numeric](15, 2) NULL ,
	[F_SE] [numeric](15, 2) NULL ,
	[F_HJ] [numeric](15, 2) NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UC] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UN] [numeric](15, 2) NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_sljc] [numeric](15, 3) NULL ,
	[f_sl2] [numeric](15, 2) NULL ,
	[f_dj3] [float] NULL ,
	[f_dj4] [float] NULL ,
	[f_dj5] [float] NULL ,
	[f_hsdj] [numeric](15, 4) NULL ,
	[f_kl] [int] NULL ,
	[f_color] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_s1] [int] NULL ,
	[f_s2] [int] NULL ,
	[f_s3] [int] NULL ,
	[f_s4] [int] NULL ,
	[f_s5] [int] NULL ,
	[f_s6] [int] NULL ,
	[f_s7] [int] NULL ,
	[f_s8] [int] NULL ,
	[f_s9] [int] NULL ,
	[f_s10] [int] NULL ,
	[f_s11] [int] NULL ,
	[f_s12] [int] NULL ,
	[f_s13] [int] NULL ,
	[f_s14] [int] NULL ,
	[f_s15] [int] NULL ,
	[f_s16] [int] NULL ,
	[f_s17] [int] NULL ,
	[f_s18] [int] NULL ,
	[f_s19] [int] NULL ,
	[f_s20] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[JHDMX2] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_DJ] [float] NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_SLV] [numeric](15, 2) NULL ,
	[F_SE] [numeric](15, 2) NULL ,
	[F_HJ] [numeric](15, 2) NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UC] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UN] [numeric](15, 2) NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_sljc] [numeric](15, 3) NULL ,
	[f_sl2] [numeric](15, 2) NULL ,
	[f_dj3] [float] NULL ,
	[f_dj4] [float] NULL ,
	[f_dj5] [float] NULL ,
	[f_hsdj] [numeric](15, 4) NULL ,
	[f_kl] [int] NULL ,
	[f_color] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_s1] [int] NULL ,
	[f_s2] [int] NULL ,
	[f_s3] [int] NULL ,
	[f_s4] [int] NULL ,
	[f_s5] [int] NULL ,
	[f_s6] [int] NULL ,
	[f_s7] [int] NULL ,
	[f_s8] [int] NULL ,
	[f_s9] [int] NULL ,
	[f_s10] [int] NULL ,
	[f_s11] [int] NULL ,
	[f_s12] [int] NULL ,
	[f_s13] [int] NULL ,
	[f_s14] [int] NULL ,
	[f_s15] [int] NULL ,
	[f_s16] [int] NULL ,
	[f_s17] [int] NULL ,
	[f_s18] [int] NULL ,
	[f_s19] [int] NULL ,
	[f_s20] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[JHDMX3] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_DJ] [float] NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_SLV] [numeric](15, 2) NULL ,
	[F_SE] [numeric](15, 2) NULL ,
	[F_HJ] [numeric](15, 2) NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UC] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UN] [numeric](15, 2) NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_sljc] [numeric](15, 3) NULL ,
	[f_sl2] [numeric](15, 2) NULL ,
	[f_dj3] [float] NULL ,
	[f_dj4] [float] NULL ,
	[f_dj5] [float] NULL ,
	[f_hsdj] [numeric](15, 4) NULL ,
	[f_kl] [int] NULL ,
	[f_color] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_s1] [int] NULL ,
	[f_s2] [int] NULL ,
	[f_s3] [int] NULL ,
	[f_s4] [int] NULL ,
	[f_s5] [int] NULL ,
	[f_s6] [int] NULL ,
	[f_s7] [int] NULL ,
	[f_s8] [int] NULL ,
	[f_s9] [int] NULL ,
	[f_s10] [int] NULL ,
	[f_s11] [int] NULL ,
	[f_s12] [int] NULL ,
	[f_s13] [int] NULL ,
	[f_s14] [int] NULL ,
	[f_s15] [int] NULL ,
	[f_s16] [int] NULL ,
	[f_s17] [int] NULL ,
	[f_s18] [int] NULL ,
	[f_s19] [int] NULL ,
	[f_s20] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[JHDMXMX] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TYPE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SIZE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL] [int] NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[JHDMXMX2] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TYPE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SIZE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL] [int] NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[JHDMXMX3] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TYPE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SIZE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL] [int] NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[JHZZ] (
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL1] [numeric](15, 3) NULL ,
	[F_SL2] [numeric](15, 3) NULL ,
	[F_SL3] [numeric](15, 3) NULL ,
	[F_SL4] [numeric](15, 3) NULL ,
	[F_SL5] [numeric](15, 3) NULL ,
	[F_SL6] [numeric](15, 3) NULL ,
	[F_SL7] [numeric](15, 3) NULL ,
	[F_SL8] [numeric](15, 3) NULL ,
	[F_SL9] [numeric](15, 3) NULL ,
	[F_SL10] [numeric](15, 3) NULL ,
	[F_SL11] [numeric](15, 3) NULL ,
	[F_SL12] [numeric](15, 3) NULL ,
	[F_JE1] [numeric](15, 2) NULL ,
	[F_JE2] [numeric](15, 2) NULL ,
	[F_JE3] [numeric](15, 2) NULL ,
	[F_JE4] [numeric](15, 2) NULL ,
	[F_JE5] [numeric](15, 2) NULL ,
	[F_JE6] [numeric](15, 2) NULL ,
	[F_JE7] [numeric](15, 2) NULL ,
	[F_JE8] [numeric](15, 2) NULL ,
	[F_JE9] [numeric](15, 2) NULL ,
	[F_JE10] [numeric](15, 2) NULL ,
	[F_JE11] [numeric](15, 2) NULL ,
	[F_JE12] [numeric](15, 2) NULL ,
	[F_SE1] [numeric](15, 2) NULL ,
	[F_SE2] [numeric](15, 2) NULL ,
	[F_SE3] [numeric](15, 2) NULL ,
	[F_SE4] [numeric](15, 2) NULL ,
	[F_SE5] [numeric](15, 2) NULL ,
	[F_SE6] [numeric](15, 2) NULL ,
	[F_SE7] [numeric](15, 2) NULL ,
	[F_SE8] [numeric](15, 2) NULL ,
	[F_SE9] [numeric](15, 2) NULL ,
	[F_SE10] [numeric](15, 2) NULL ,
	[F_SE11] [numeric](15, 2) NULL ,
	[F_SE12] [numeric](15, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[JSFS] (
	[F_DM] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_MC] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_JC] [char] (4) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[JXCBB1] (
	[f_bh] [char] (4) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_mc] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_rows] [int] NOT NULL ,
	[f_cols] [int] NOT NULL ,
	[f_ifbm] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifywy] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifhw] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifspfw] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifspjb] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifdate] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifkjqj] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_design] [image] NULL ,
	[f_ifsp] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifcustom] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifVendor] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifspsx1] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifspsx2] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifspsx3] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifspsx4] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifspsx5] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_memo] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifcustomgroup] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_sydw] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_sysm] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[JXCBB2] (
	[f_bh] [char] (3) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_mc] [varchar] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_sql] [image] NULL ,
	[f_cols] [int] NULL ,
	[f_headers] [int] NULL ,
	[f_ifbm] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifywy] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifhw] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifspfw] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifsp] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifdate] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifspjb] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifkjqj] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_sortcol] [int] NULL ,
	[f_ifcustom] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifVendor] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifspsx1] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifspsx2] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifspsx3] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifspsx4] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifspsx5] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_title] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TOP] [int] NULL ,
	[F_LEFT] [int] NULL ,
	[F_ROWS] [int] NULL ,
	[F_SIZE] [int] NULL ,
	[F_LENGTH] [int] NULL ,
	[F_WIDTH] [int] NULL ,
	[F_ORIENT] [int] NULL ,
	[F_TITLEFONT] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BBFONT] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_rowspace] [int] NULL ,
	[f_memo] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifcustomgroup] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_sydw] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_sysm] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifpagesum] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifAddBlank] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_blankchar] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_hcWidth] [int] NULL ,
	[f_Hjoption] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_autoexpand] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_expandsql] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_expandlist] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_expandcaption] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_autodyparam] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[JXCBBCOLS] (
	[f_bbbh] [char] (3) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_index] [int] NOT NULL ,
	[f_name] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fieldindex] [int] NULL ,
	[f_alignment] [int] NULL ,
	[f_type] [int] NULL ,
	[f_decimals] [int] NULL ,
	[f_Tseparator] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_width] [int] NULL ,
	[f_printWidth] [int] NULL ,
	[f_fieldname] [char] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_visible] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifHj] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_style] [char] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifkey] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifexpand] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifexpanded] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_expandfield] [char] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_keyvalue] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_sum] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_express] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[JXCBBDIC] (
	[f_field] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_caption] [char] (30) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[JXCBBHEADERS] (
	[f_bbbh] [char] (3) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_index] [int] NOT NULL ,
	[f_name] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_startcol] [int] NOT NULL ,
	[f_endcol] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[JXCBBPAGEFOOTER] (
	[f_bbbh] [char] (3) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_index] [int] NOT NULL ,
	[f_left] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_center] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_right] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[JXCBBPAGEHEADER] (
	[f_bbbh] [char] (3) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_index] [int] NOT NULL ,
	[f_left] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_center] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_right] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[JXCMENU] (
	[f_Aname] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_Name] [int] NOT NULL ,
	[f_jc] [int] NOT NULL ,
	[f_caption] [varchar] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_bblx] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_bbbh] [char] (3) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_jb] [int] NOT NULL ,
	[f_fixed] [char] (1) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[KCMXZ] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJH] [int] NOT NULL ,
	[F_ZY] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SLS] [numeric](15, 3) NULL ,
	[F_JES] [numeric](15, 2) NULL ,
	[F_SLF] [numeric](15, 3) NULL ,
	[F_JEF] [numeric](15, 2) NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJLX] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_hc] [int] NULL ,
	[F_CX] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[KCMXZMX] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJH] [int] NOT NULL ,
	[F_ZY] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SLS] [numeric](15, 3) NULL ,
	[F_SLF] [numeric](15, 3) NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJLX] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_hc] [int] NULL ,
	[F_CX] [int] NULL ,
	[F_COLOR] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SIZE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[KCYE] (
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SLYE] [numeric](15, 3) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[KCZZ] (
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL0] [numeric](15, 3) NULL ,
	[F_JE0] [numeric](15, 2) NULL ,
	[F_SLYE] [numeric](15, 3) NULL ,
	[F_JEYE] [numeric](15, 2) NULL ,
	[F_PJDJ] [numeric](13, 5) NULL ,
	[f_je] [numeric](15, 2) NULL ,
	[f_jj] [numeric](15, 2) NULL ,
	[F_SLS1] [numeric](15, 3) NULL ,
	[F_SLS2] [numeric](15, 3) NULL ,
	[F_SLS3] [numeric](15, 3) NULL ,
	[F_SLS4] [numeric](15, 3) NULL ,
	[F_SLS5] [numeric](15, 3) NULL ,
	[F_SLS6] [numeric](15, 3) NULL ,
	[F_SLS7] [numeric](15, 3) NULL ,
	[F_SLS8] [numeric](15, 3) NULL ,
	[F_SLS9] [numeric](15, 3) NULL ,
	[F_SLS10] [numeric](15, 3) NULL ,
	[F_SLS11] [numeric](15, 3) NULL ,
	[F_SLS12] [numeric](15, 3) NULL ,
	[F_JES1] [numeric](15, 2) NULL ,
	[F_JES2] [numeric](15, 2) NULL ,
	[F_JES3] [numeric](15, 2) NULL ,
	[F_JES4] [numeric](15, 2) NULL ,
	[F_JES5] [numeric](15, 2) NULL ,
	[F_JES6] [numeric](15, 2) NULL ,
	[F_JES7] [numeric](15, 2) NULL ,
	[F_JES8] [numeric](15, 2) NULL ,
	[F_JES9] [numeric](15, 2) NULL ,
	[F_JES10] [numeric](15, 2) NULL ,
	[F_JES11] [numeric](15, 2) NULL ,
	[F_JES12] [numeric](15, 2) NULL ,
	[F_SLF1] [numeric](15, 3) NULL ,
	[F_SLF2] [numeric](15, 3) NULL ,
	[F_SLF3] [numeric](15, 3) NULL ,
	[F_SLF4] [numeric](15, 3) NULL ,
	[F_SLF5] [numeric](15, 3) NULL ,
	[F_SLF6] [numeric](15, 3) NULL ,
	[F_SLF7] [numeric](15, 3) NULL ,
	[F_SLF8] [numeric](15, 3) NULL ,
	[F_SLF9] [numeric](15, 3) NULL ,
	[F_SLF10] [numeric](15, 3) NULL ,
	[F_SLF11] [numeric](15, 3) NULL ,
	[F_SLF12] [numeric](15, 3) NULL ,
	[F_JEF1] [numeric](15, 2) NULL ,
	[F_JEF2] [numeric](15, 2) NULL ,
	[F_JEF3] [numeric](15, 2) NULL ,
	[F_JEF4] [numeric](15, 2) NULL ,
	[F_JEF5] [numeric](15, 2) NULL ,
	[F_JEF6] [numeric](15, 2) NULL ,
	[F_JEF7] [numeric](15, 2) NULL ,
	[F_JEF8] [numeric](15, 2) NULL ,
	[F_JEF9] [numeric](15, 2) NULL ,
	[F_JEF10] [numeric](15, 2) NULL ,
	[F_JEF11] [numeric](15, 2) NULL ,
	[F_JEF12] [numeric](15, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[KJQJ] (
	[F_YF] [int] NOT NULL ,
	[F_START] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_END] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JZ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[LSH] (
	[F_J1] [int] NULL ,
	[F_J2] [int] NULL ,
	[F_J3] [int] NULL ,
	[F_J4] [int] NULL ,
	[F_J5] [int] NULL ,
	[F_R1] [int] NULL ,
	[F_R2] [int] NULL ,
	[F_R3] [int] NULL ,
	[F_R4] [int] NULL ,
	[F_R5] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[OPERATOR] (
	[F_BH] [char] (2) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_NAME] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_PASSWORD] [char] (15) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BM] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZN] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_red] [char] (1) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PAD] (
	[F_DM] [int] NOT NULL ,
	[F_TEXT] [image] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDD] (
	[f_djh] [int] NOT NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_date] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_zd] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_bgy] [char] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDD2] (
	[f_djh] [int] NOT NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_date] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_zd] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_bgy] [char] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDD3] (
	[f_djh] [int] NOT NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_date] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_zd] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BGY] [char] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDDMX] (
	[f_djh] [int] NOT NULL ,
	[f_hc] [int] NOT NULL ,
	[f_spbh] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_pc] [int] NULL ,
	[f_ph] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dq] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_slye] [numeric](15, 3) NULL ,
	[f_pdsl] [numeric](15, 3) NULL ,
	[f_pysl] [numeric](15, 3) NULL ,
	[f_tj] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dj2] [float] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDDMX2] (
	[f_djh] [int] NOT NULL ,
	[f_hc] [int] NOT NULL ,
	[f_spbh] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_pc] [int] NULL ,
	[f_ph] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dq] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_slye] [numeric](15, 3) NULL ,
	[f_pdsl] [numeric](15, 3) NULL ,
	[f_pysl] [numeric](15, 3) NULL ,
	[f_tj] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dj2] [float] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PDDMX3] (
	[f_djh] [int] NOT NULL ,
	[f_hc] [int] NOT NULL ,
	[f_spbh] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_pc] [int] NULL ,
	[f_ph] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dq] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_slye] [numeric](15, 3) NULL ,
	[f_pdsl] [numeric](15, 3) NULL ,
	[f_pysl] [numeric](15, 3) NULL ,
	[f_tj] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dj2] [float] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[POWER] (
	[F_CZY] [char] (2) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_ZT] [char] (2) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_QX] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_GN] [char] (4) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SY] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SH] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JZ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DY] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_bj] [char] (1) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[POWERITEM] (
	[F_BH] [char] (4) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_NAME] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CAPTION] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_classname] [char] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PRINTCOLHEADER] (
	[f_bh] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_index] [int] NOT NULL ,
	[f_caption] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_startcol] [int] NULL ,
	[f_endcol] [int] NULL ,
	[f_font] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_alignment] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PRINTFIELD] (
	[f_bh] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_Index] [int] NOT NULL ,
	[f_fieldName] [char] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_fieldLabel] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_fieldCaption] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_fieldWidth] [int] NULL ,
	[f_font] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_captionFont] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_Alignment] [int] NULL ,
	[f_format] [int] NULL ,
	[f_fieldtype] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_decimal] [int] NULL ,
	[f_seperator] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_wordwarp] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_blank0] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_visible] [char] (1) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PRINTMACRO] (
	[f_bh] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_name] [char] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_caption] [char] (50) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PRINTPAGEFOOTER] (
	[f_bh] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_index] [int] NOT NULL ,
	[f_strLeft] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fontLeft] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_aLeft] [int] NULL ,
	[f_strCenter] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fontCenter] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_aCenter] [int] NULL ,
	[f_strRight] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fontRight] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_aRight] [int] NULL ,
	[f_rowSpace] [numeric](14, 2) NULL ,
	[f_oLeft] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_oCenter] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_oRight] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_TitleHeight] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PRINTPAGEHEADER] (
	[f_bh] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_index] [int] NOT NULL ,
	[f_strLeft] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fontLeft] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_aLeft] [int] NULL ,
	[f_strCenter] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fontCenter] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_aCenter] [int] NULL ,
	[f_strRight] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fontRight] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_aRight] [int] NULL ,
	[f_rowSpace] [numeric](14, 2) NULL ,
	[f_oLeft] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_oCenter] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_oRight] [char] (1) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PRINTPARAM] (
	[F_BH] [char] (2) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_MC] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TITLE] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TOP] [int] NULL ,
	[F_LEFT] [int] NULL ,
	[F_PAPERSIZE] [int] NULL ,
	[F_PAPERWIDTH] [int] NULL ,
	[F_PAPERLENGTH] [int] NULL ,
	[F_ORIENT] [int] NULL ,
	[F_ROWS] [int] NULL ,
	[F_TITLEFONT] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BBFONT] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLNUMBER] [int] NULL ,
	[F_COLCAPTION] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLWIDTH] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PRINTPARAME] (
	[f_bh] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_defaultFont] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_Title] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_TitleVisible] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_TitleHeight] [float] NULL ,
	[f_TitleFont] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_paperSize] [int] NULL ,
	[f_orient] [int] NULL ,
	[f_PaperWidth] [int] NULL ,
	[f_PaperLength] [int] NULL ,
	[f_paperLeft] [int] NULL ,
	[f_paperTop] [int] NULL ,
	[f_printquality] [int] NULL ,
	[f_FixRow] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_MaxRow] [int] NULL ,
	[f_lastRow] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_rowHeight] [float] NULL ,
	[f_headerWidth1] [float] NULL ,
	[f_headerWidth2] [float] NULL ,
	[f_headerWidth3] [float] NULL ,
	[f_footerWidth1] [float] NULL ,
	[f_footerWidth2] [float] NULL ,
	[f_footerWidth3] [float] NULL ,
	[f_CaptionHeight] [float] NULL ,
	[f_HeaderHeight] [float] NULL ,
	[f_bodyLineOption] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_frameHLine] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_frameVline] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_captionHLine] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_CaptionVline] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_bodyHLine] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_bodyVline] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lastRowLine] [char] (1) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PSD] (
	[F_DATE] [datetime] NULL ,
	[F_DJH] [int] NOT NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PSDMX] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [numeric](15, 2) NOT NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SPMC] [char] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW1] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW2] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CS] [numeric](15, 2) NULL ,
	[F_CD] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_GG] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL1] [numeric](15, 2) NULL ,
	[F_SL2] [numeric](15, 2) NULL ,
	[F_SL3] [numeric](15, 2) NULL ,
	[F_SL4] [numeric](15, 2) NULL ,
	[F_SL5] [numeric](15, 2) NULL ,
	[F_SL6] [numeric](15, 2) NULL ,
	[F_SL7] [numeric](15, 2) NULL ,
	[F_SL] [numeric](15, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[RETAIL] (
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPMC] [char] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 2) NULL ,
	[F_DJ] [numeric](15, 2) NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CZY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CD] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_GG] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CUSTOM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JS] [numeric](15, 2) NULL ,
	[F_TIME] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djh] [int] NULL ,
	[f_kl] [int] NULL ,
	[f_dj2] [numeric](14, 4) NULL ,
	[f_color] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_size] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_type] [char] (2) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[RETAIL11] (
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPMC] [char] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 2) NULL ,
	[F_DJ] [numeric](15, 2) NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CZY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CD] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_GG] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CUSTOM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JS] [numeric](15, 2) NULL ,
	[F_TIME] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djh] [int] NULL ,
	[f_kl] [int] NULL ,
	[f_dj2] [numeric](14, 4) NULL ,
	[f_color] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_size] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_type] [char] (2) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[RETAIL2] (
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SPMC] [char] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 2) NULL ,
	[F_DJ] [numeric](15, 2) NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CZY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CD] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_GG] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CUSTOM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JS] [numeric](15, 2) NULL ,
	[F_TIME] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djh] [int] NULL ,
	[f_kl] [int] NULL ,
	[f_dj2] [numeric](14, 4) NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_color] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_size] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_type] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_hc] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[RETAILC] (
	[f_date] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_custom] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_je] [numeric](14, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[RETAILC11] (
	[f_date] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_custom] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_je] [numeric](14, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[RETAILC2] (
	[f_date] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_custom] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_je] [numeric](14, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[RETAILDJ] (
	[f_date] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_djh] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[RKD] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJH] [int] NOT NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SFZY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJLB] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fpxz] [char] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djh0] [int] NULL ,
	[f_memo] [char] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_sl2] [numeric](15, 2) NULL ,
	[f_type] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[RKD2] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJH] [int] NOT NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SFZY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJLB] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fpxz] [char] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djh0] [int] NULL ,
	[f_memo] [char] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_sl2] [numeric](15, 2) NULL ,
	[f_type] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[RKD3] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJH] [int] NOT NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SFZY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJLB] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fpxz] [char] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djh0] [int] NULL ,
	[f_memo] [char] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_sl2] [numeric](15, 2) NULL ,
	[f_type] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[RKDMX] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_DJ] [float] NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ISCB] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UC] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UN] [numeric](15, 2) NULL ,
	[F_YLF] [numeric](15, 2) NULL ,
	[F_JGF] [numeric](15, 2) NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_dj3] [float] NULL ,
	[f_dj4] [float] NULL ,
	[f_dj5] [float] NULL ,
	[f_sljc] [numeric](15, 3) NULL ,
	[f_sl2] [numeric](15, 2) NULL ,
	[f_kl] [int] NULL ,
	[f_color] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_s1] [int] NULL ,
	[f_s2] [int] NULL ,
	[f_s3] [int] NULL ,
	[f_s4] [int] NULL ,
	[f_s5] [int] NULL ,
	[f_s6] [int] NULL ,
	[f_s7] [int] NULL ,
	[f_s8] [int] NULL ,
	[f_s9] [int] NULL ,
	[f_s10] [int] NULL ,
	[f_s11] [int] NULL ,
	[f_s12] [int] NULL ,
	[f_s13] [int] NULL ,
	[f_s14] [int] NULL ,
	[f_s15] [int] NULL ,
	[f_s16] [int] NULL ,
	[f_s17] [int] NULL ,
	[f_s18] [int] NULL ,
	[f_s19] [int] NULL ,
	[f_s20] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[RKDMX2] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_DJ] [float] NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ISCB] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UC] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UN] [numeric](15, 2) NULL ,
	[F_YLF] [numeric](15, 2) NULL ,
	[F_JGF] [numeric](15, 2) NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_dj3] [float] NULL ,
	[f_dj4] [float] NULL ,
	[f_dj5] [float] NULL ,
	[f_sljc] [numeric](15, 3) NULL ,
	[f_sl2] [numeric](15, 2) NULL ,
	[f_kl] [int] NULL ,
	[f_color] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_s1] [int] NULL ,
	[f_s2] [int] NULL ,
	[f_s3] [int] NULL ,
	[f_s4] [int] NULL ,
	[f_s5] [int] NULL ,
	[f_s6] [int] NULL ,
	[f_s7] [int] NULL ,
	[f_s8] [int] NULL ,
	[f_s9] [int] NULL ,
	[f_s10] [int] NULL ,
	[f_s11] [int] NULL ,
	[f_s12] [int] NULL ,
	[f_s13] [int] NULL ,
	[f_s14] [int] NULL ,
	[f_s15] [int] NULL ,
	[f_s16] [int] NULL ,
	[f_s17] [int] NULL ,
	[f_s18] [int] NULL ,
	[f_s19] [int] NULL ,
	[f_s20] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[RKDMX3] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_DJ] [float] NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ISCB] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UC] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UN] [numeric](15, 2) NULL ,
	[F_YLF] [numeric](15, 2) NULL ,
	[F_JGF] [numeric](15, 2) NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_dj3] [float] NULL ,
	[f_dj4] [float] NULL ,
	[f_dj5] [float] NULL ,
	[f_sljc] [numeric](15, 3) NULL ,
	[f_sl2] [numeric](15, 2) NULL ,
	[f_kl] [int] NULL ,
	[f_color] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_s1] [int] NULL ,
	[f_s2] [int] NULL ,
	[f_s3] [int] NULL ,
	[f_s4] [int] NULL ,
	[f_s5] [int] NULL ,
	[f_s6] [int] NULL ,
	[f_s7] [int] NULL ,
	[f_s8] [int] NULL ,
	[f_s9] [int] NULL ,
	[f_s10] [int] NULL ,
	[f_s11] [int] NULL ,
	[f_s12] [int] NULL ,
	[f_s13] [int] NULL ,
	[f_s14] [int] NULL ,
	[f_s15] [int] NULL ,
	[f_s16] [int] NULL ,
	[f_s17] [int] NULL ,
	[f_s18] [int] NULL ,
	[f_s19] [int] NULL ,
	[f_s20] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[RKDMXMX] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TYPE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SIZE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL] [int] NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[RKDMXMX2] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TYPE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SIZE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL] [int] NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[RKDMXMX3] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TYPE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SIZE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL] [int] NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[SFZY] (
	[F_DM] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_MC] [varchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SF] [char] (1) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[SJMXZ] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJLX] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJH] [int] NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZY] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JXSE] [numeric](15, 2) NULL ,
	[F_XXSE] [numeric](15, 2) NULL ,
	[F_ZCSE] [numeric](15, 2) NULL ,
	[f_hc] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[SJZZ] (
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_JXS1] [numeric](15, 2) NULL ,
	[F_JXS2] [numeric](15, 2) NULL ,
	[F_JXS3] [numeric](15, 2) NULL ,
	[F_JXS4] [numeric](15, 2) NULL ,
	[F_JXS5] [numeric](15, 2) NULL ,
	[F_JXS6] [numeric](15, 2) NULL ,
	[F_JXS7] [numeric](15, 2) NULL ,
	[F_JXS8] [numeric](15, 2) NULL ,
	[F_JXS9] [numeric](15, 2) NULL ,
	[F_JXS10] [numeric](15, 2) NULL ,
	[F_JXS11] [numeric](15, 2) NULL ,
	[F_JXS12] [numeric](15, 2) NULL ,
	[F_XXS1] [numeric](15, 2) NULL ,
	[F_XXS2] [numeric](15, 2) NULL ,
	[F_XXS3] [numeric](15, 2) NULL ,
	[F_XXS4] [numeric](15, 2) NULL ,
	[F_XXS5] [numeric](15, 2) NULL ,
	[F_XXS6] [numeric](15, 2) NULL ,
	[F_XXS7] [numeric](15, 2) NULL ,
	[F_XXS8] [numeric](15, 2) NULL ,
	[F_XXS9] [numeric](15, 2) NULL ,
	[F_XXS10] [numeric](15, 2) NULL ,
	[F_XXS11] [numeric](15, 2) NULL ,
	[F_XXS12] [numeric](15, 2) NULL ,
	[F_ZCS1] [numeric](15, 2) NULL ,
	[F_ZCS2] [numeric](15, 2) NULL ,
	[F_ZCS3] [numeric](15, 2) NULL ,
	[F_ZCS4] [numeric](15, 2) NULL ,
	[F_ZCS5] [numeric](15, 2) NULL ,
	[F_ZCS6] [numeric](15, 2) NULL ,
	[F_ZCS7] [numeric](15, 2) NULL ,
	[F_ZCS8] [numeric](15, 2) NULL ,
	[F_ZCS9] [numeric](15, 2) NULL ,
	[F_ZCS10] [numeric](15, 2) NULL ,
	[F_ZCS11] [numeric](15, 2) NULL ,
	[F_ZCS12] [numeric](15, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[SP] (
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SPMC] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CBFF] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_MAXSL] [numeric](15, 2) NULL ,
	[F_MINSL] [numeric](15, 2) NULL ,
	[F_SPGG] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SLV] [numeric](15, 2) NULL ,
	[F_DW2] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CS] [numeric](15, 2) NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CD] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BZQ] [int] NULL ,
	[F_ZJM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BGY] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJ1] [float] NULL ,
	[F_DJ2] [float] NULL ,
	[F_DJ3] [float] NULL ,
	[F_DJ4] [float] NULL ,
	[F_DJ5] [float] NULL ,
	[F_DWCB] [numeric](15, 2) NULL ,
	[F_IFPH] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_spsx1] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_spsx2] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_spsx3] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_spsx4] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_spsx5] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb1] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb2] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb3] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb4] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb5] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb6] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb7] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb8] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb9] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb10] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_maxpc] [int] NULL ,
	[f_ifsj] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_rate] [numeric](15, 2) NULL ,
	[f_function] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_phcb] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_uc1] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_uc2] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_uc3] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_uc4] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_uc5] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_un1] [numeric](15, 2) NULL ,
	[f_un2] [numeric](15, 2) NULL ,
	[f_un3] [numeric](15, 2) NULL ,
	[f_un4] [numeric](15, 2) NULL ,
	[f_un5] [numeric](15, 2) NULL ,
	[f_maxjj] [float] NULL ,
	[f_minjj] [float] NULL ,
	[f_recentjj] [float] NULL ,
	[f_gnzz] [char] (80) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_yf] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_spbm] [char] (80) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TYPE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[SP2] (
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_date] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[SP3] (
	[f_spbh] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_date] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[SPCOLOR] (
	[F_DM] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_MC] [char] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_TYPE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_INDEX] [int] NULL ,
	[F_ZJM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_NOUSE] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_sx] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[SPDOWN] (
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SPMC] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CBFF] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_MAXSL] [numeric](15, 2) NULL ,
	[F_MINSL] [numeric](15, 2) NULL ,
	[F_SPGG] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SLV] [numeric](15, 2) NULL ,
	[F_DW2] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CS] [numeric](15, 2) NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CD] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BZQ] [int] NULL ,
	[F_ZJM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BGY] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJ1] [float] NULL ,
	[F_DJ2] [float] NULL ,
	[F_DJ3] [float] NULL ,
	[F_DJ4] [float] NULL ,
	[F_DJ5] [float] NULL ,
	[F_DWCB] [numeric](15, 2) NULL ,
	[F_IFPH] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_spsx1] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_spsx2] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_spsx3] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_spsx4] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_spsx5] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb1] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb2] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb3] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb4] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb5] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb6] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb7] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb8] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb9] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb10] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_maxpc] [int] NULL ,
	[f_ifsj] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_rate] [numeric](15, 2) NULL ,
	[f_function] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_phcb] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_uc1] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_uc2] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_uc3] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_uc4] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_uc5] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_un1] [numeric](15, 2) NULL ,
	[f_un2] [numeric](15, 2) NULL ,
	[f_un3] [numeric](15, 2) NULL ,
	[f_un4] [numeric](15, 2) NULL ,
	[f_un5] [numeric](15, 2) NULL ,
	[f_tj] [char] (1) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[SPLB] (
	[F_LBBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_LBBC] [varchar] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_QCSL] [numeric](15, 3) NULL ,
	[F_QCCB] [numeric](15, 2) NULL ,
	[F_JC] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[SPPC] (
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_JE] [numeric](15, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[SPSIZE] (
	[F_DM] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_MC] [char] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_TYPE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_INDEX] [int] NULL ,
	[F_ZJM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_NOUSE] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_sx] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[SPTYPE] (
	[F_DM] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_MC] [char] (30) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[SYZZ] (
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SLS1] [numeric](15, 3) NULL ,
	[F_SLS2] [numeric](15, 3) NULL ,
	[F_SLS3] [numeric](15, 3) NULL ,
	[F_SLS4] [numeric](15, 3) NULL ,
	[F_SLS5] [numeric](15, 3) NULL ,
	[F_SLS6] [numeric](15, 3) NULL ,
	[F_SLS7] [numeric](15, 3) NULL ,
	[F_SLS8] [numeric](15, 3) NULL ,
	[F_SLS9] [numeric](15, 3) NULL ,
	[F_SLS10] [numeric](15, 3) NULL ,
	[F_SLS11] [numeric](15, 3) NULL ,
	[F_SLS12] [numeric](15, 3) NULL ,
	[F_JES1] [numeric](15, 2) NULL ,
	[F_JES2] [numeric](15, 2) NULL ,
	[F_JES3] [numeric](15, 2) NULL ,
	[F_JES4] [numeric](15, 2) NULL ,
	[F_JES5] [numeric](15, 2) NULL ,
	[F_JES6] [numeric](15, 2) NULL ,
	[F_JES7] [numeric](15, 2) NULL ,
	[F_JES8] [numeric](15, 2) NULL ,
	[F_JES9] [numeric](15, 2) NULL ,
	[F_JES10] [numeric](15, 2) NULL ,
	[F_JES11] [numeric](15, 2) NULL ,
	[F_JES12] [numeric](15, 2) NULL ,
	[F_SLF1] [numeric](15, 3) NULL ,
	[F_SLF2] [numeric](15, 3) NULL ,
	[F_SLF3] [numeric](15, 3) NULL ,
	[F_SLF4] [numeric](15, 3) NULL ,
	[F_SLF5] [numeric](15, 3) NULL ,
	[F_SLF6] [numeric](15, 3) NULL ,
	[F_SLF7] [numeric](15, 3) NULL ,
	[F_SLF8] [numeric](15, 3) NULL ,
	[F_SLF9] [numeric](15, 3) NULL ,
	[F_SLF10] [numeric](15, 3) NULL ,
	[F_SLF11] [numeric](15, 3) NULL ,
	[F_SLF12] [numeric](15, 3) NULL ,
	[F_JEF1] [numeric](15, 2) NULL ,
	[F_JEF2] [numeric](15, 2) NULL ,
	[F_JEF3] [numeric](15, 2) NULL ,
	[F_JEF4] [numeric](15, 2) NULL ,
	[F_JEF5] [numeric](15, 2) NULL ,
	[F_JEF6] [numeric](15, 2) NULL ,
	[F_JEF7] [numeric](15, 2) NULL ,
	[F_JEF8] [numeric](15, 2) NULL ,
	[F_JEF9] [numeric](15, 2) NULL ,
	[F_JEF10] [numeric](15, 2) NULL ,
	[F_JEF11] [numeric](15, 2) NULL ,
	[F_JEF12] [numeric](15, 2) NULL ,
	[F_SE1] [numeric](15, 2) NULL ,
	[F_SE2] [numeric](15, 2) NULL ,
	[F_SE3] [numeric](15, 2) NULL ,
	[F_SE4] [numeric](15, 2) NULL ,
	[F_SE5] [numeric](15, 2) NULL ,
	[F_SE6] [numeric](15, 2) NULL ,
	[F_SE7] [numeric](15, 2) NULL ,
	[F_SE8] [numeric](15, 2) NULL ,
	[F_SE9] [numeric](15, 2) NULL ,
	[F_SE10] [numeric](15, 2) NULL ,
	[F_SE11] [numeric](15, 2) NULL ,
	[F_SE12] [numeric](15, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TEXTSOURCE] (
	[F_name] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_sql] [varchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TJD] (
	[F_DJH] [int] NOT NULL ,
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JZ] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TJDMX] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPMC] [char] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_GG] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CD] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJ11] [float] NULL ,
	[F_DJ12] [float] NULL ,
	[F_DJ21] [float] NULL ,
	[F_DJ22] [float] NULL ,
	[f_sl] [numeric](15, 3) NULL ,
	[f_dj31] [float] NULL ,
	[f_dj32] [float] NULL ,
	[f_dj42] [float] NULL ,
	[f_dj41] [float] NULL ,
	[f_dj51] [float] NULL ,
	[f_dj52] [float] NULL ,
	[f_sljc] [numeric](15, 3) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[VENDOR] (
	[F_DM] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_MC] [varchar] (80) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_TEL] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_POSTCODE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ADDRESS] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_LXR] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZH] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SH] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_KHH] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_QCYE] [numeric](15, 2) NULL ,
	[F_QMYE] [numeric](15, 2) NULL ,
	[F_J1] [numeric](15, 2) NULL ,
	[F_D1] [numeric](15, 2) NULL ,
	[F_J2] [numeric](15, 2) NULL ,
	[F_D2] [numeric](15, 2) NULL ,
	[F_J3] [numeric](15, 2) NULL ,
	[F_D3] [numeric](15, 2) NULL ,
	[F_J4] [numeric](15, 2) NULL ,
	[F_D4] [numeric](15, 2) NULL ,
	[F_J5] [numeric](15, 2) NULL ,
	[F_D5] [numeric](15, 2) NULL ,
	[F_J6] [numeric](15, 2) NULL ,
	[F_D6] [numeric](15, 2) NULL ,
	[F_J7] [numeric](15, 2) NULL ,
	[F_D7] [numeric](15, 2) NULL ,
	[F_J8] [numeric](15, 2) NULL ,
	[F_D8] [numeric](15, 2) NULL ,
	[F_J9] [numeric](15, 2) NULL ,
	[F_D9] [numeric](15, 2) NULL ,
	[F_J10] [numeric](15, 2) NULL ,
	[F_D10] [numeric](15, 2) NULL ,
	[F_J11] [numeric](15, 2) NULL ,
	[F_D11] [numeric](15, 2) NULL ,
	[F_J12] [numeric](15, 2) NULL ,
	[F_D12] [numeric](15, 2) NULL ,
	[F_ZJM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_group] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb1] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb2] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb3] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lb4] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_uc1] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_uc2] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_uc3] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_uc4] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_uc5] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_un1] [numeric](15, 2) NULL ,
	[f_un2] [numeric](15, 2) NULL ,
	[f_un3] [numeric](15, 2) NULL ,
	[f_un4] [numeric](15, 2) NULL ,
	[f_un5] [numeric](15, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[VENDOR3] (
	[f_dm] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_date] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[VENDORGROUP] (
	[F_DM] [char] (2) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_MC] [varchar] (40) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[VENDORLB] (
	[f_dm] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_mc] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_jc] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[VEN_SP] (
	[F_VENDOR] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPGG] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CD] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJ1] [float] NULL ,
	[F_DJ2] [float] NULL ,
	[F_DJ] [float] NULL ,
	[F_SPMC] [char] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_date] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[VIP] (
	[F_DM] [char] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_MC] [varchar] (80) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_zjm] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_sfz] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TEL] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_POSTCODE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ADDRESS] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZH] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SH] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_KHH] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ljxf] [numeric](14, 2) NULL ,
	[f_grade] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_used] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_Cancel] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifyh] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_isyh] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_bz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_zd] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[VIP2] (
	[F_DM] [char] (30) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_MC] [varchar] (80) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_zjm] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_sfz] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TEL] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_POSTCODE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ADDRESS] [varchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZH] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SH] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_KHH] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ljxf] [numeric](14, 2) NULL ,
	[f_grade] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_used] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_Cancel] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ifyh] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_isyh] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_bz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_zd] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[XHD] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJH] [int] NOT NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CUSTOM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JS] [numeric](15, 2) NULL ,
	[F_JSH] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_XSLB] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SFZY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JSFS] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HZ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_FPLX] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fpxz] [char] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djh0] [int] NULL ,
	[f_dhdjh] [int] NULL ,
	[f_type] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[XHD2] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJH] [int] NOT NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CUSTOM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JS] [numeric](15, 2) NULL ,
	[F_JSH] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_XSLB] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SFZY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JSFS] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HZ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_FPLX] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fpxz] [char] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djh0] [int] NULL ,
	[f_dhdjh] [int] NULL ,
	[f_type] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[XHD3] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJH] [int] NOT NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CUSTOM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JS] [numeric](15, 2) NULL ,
	[F_JSH] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_XSLB] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SFZY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JSFS] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HZ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_FPLX] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_fpxz] [char] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_djh0] [int] NULL ,
	[f_dhdjh] [int] NULL ,
	[f_type] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[XHDMX] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_DJ] [float] NULL ,
	[F_KL] [int] NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_SLV] [numeric](15, 2) NULL ,
	[F_SE] [numeric](15, 2) NULL ,
	[F_CB] [numeric](15, 2) NULL ,
	[F_HJ] [numeric](15, 2) NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ISCB] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UC] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UN] [numeric](15, 2) NULL ,
	[f_sljc] [numeric](14, 3) NULL ,
	[f_fph] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_zf] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dwcb] [float] NULL ,
	[f_rate] [numeric](15, 2) NULL ,
	[f_sl2] [numeric](14, 2) NULL ,
	[f_dj3] [float] NULL ,
	[f_dj4] [float] NULL ,
	[f_dj5] [float] NULL ,
	[f_pc] [int] NULL ,
	[f_color] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_s1] [int] NULL ,
	[f_s2] [int] NULL ,
	[f_s3] [int] NULL ,
	[f_s4] [int] NULL ,
	[f_s5] [int] NULL ,
	[f_s6] [int] NULL ,
	[f_s7] [int] NULL ,
	[f_s8] [int] NULL ,
	[f_s9] [int] NULL ,
	[f_s10] [int] NULL ,
	[f_s11] [int] NULL ,
	[f_s12] [int] NULL ,
	[f_s13] [int] NULL ,
	[f_s14] [int] NULL ,
	[f_s15] [int] NULL ,
	[f_s16] [int] NULL ,
	[f_s17] [int] NULL ,
	[f_s18] [int] NULL ,
	[f_s19] [int] NULL ,
	[f_s20] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[XHDMX2] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_DJ] [float] NULL ,
	[F_KL] [int] NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_SLV] [numeric](15, 2) NULL ,
	[F_SE] [numeric](15, 2) NULL ,
	[F_CB] [numeric](15, 2) NULL ,
	[F_HJ] [numeric](15, 2) NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ISCB] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UC] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UN] [numeric](15, 2) NULL ,
	[f_sljc] [numeric](14, 3) NULL ,
	[f_fph] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_zf] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dwcb] [float] NULL ,
	[f_rate] [numeric](15, 2) NULL ,
	[f_sl2] [numeric](14, 2) NULL ,
	[f_dj3] [float] NULL ,
	[f_dj4] [float] NULL ,
	[f_dj5] [float] NULL ,
	[f_pc] [int] NULL ,
	[f_color] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_s1] [int] NULL ,
	[f_s2] [int] NULL ,
	[f_s3] [int] NULL ,
	[f_s4] [int] NULL ,
	[f_s5] [int] NULL ,
	[f_s6] [int] NULL ,
	[f_s7] [int] NULL ,
	[f_s8] [int] NULL ,
	[f_s9] [int] NULL ,
	[f_s10] [int] NULL ,
	[f_s11] [int] NULL ,
	[f_s12] [int] NULL ,
	[f_s13] [int] NULL ,
	[f_s14] [int] NULL ,
	[f_s15] [int] NULL ,
	[f_s16] [int] NULL ,
	[f_s17] [int] NULL ,
	[f_s18] [int] NULL ,
	[f_s19] [int] NULL ,
	[f_s20] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[XHDMX3] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_DJ] [float] NULL ,
	[F_KL] [int] NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_SLV] [numeric](15, 2) NULL ,
	[F_SE] [numeric](15, 2) NULL ,
	[F_CB] [numeric](15, 2) NULL ,
	[F_HJ] [numeric](15, 2) NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ISCB] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UC] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_UN] [numeric](15, 2) NULL ,
	[f_sljc] [numeric](14, 3) NULL ,
	[f_fph] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_zf] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dwcb] [float] NULL ,
	[f_rate] [numeric](15, 2) NULL ,
	[f_sl2] [numeric](14, 2) NULL ,
	[f_dj3] [float] NULL ,
	[f_dj4] [float] NULL ,
	[f_dj5] [float] NULL ,
	[f_pc] [int] NULL ,
	[f_color] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_s1] [int] NULL ,
	[f_s2] [int] NULL ,
	[f_s3] [int] NULL ,
	[f_s4] [int] NULL ,
	[f_s5] [int] NULL ,
	[f_s6] [int] NULL ,
	[f_s7] [int] NULL ,
	[f_s8] [int] NULL ,
	[f_s9] [int] NULL ,
	[f_s10] [int] NULL ,
	[f_s11] [int] NULL ,
	[f_s12] [int] NULL ,
	[f_s13] [int] NULL ,
	[f_s14] [int] NULL ,
	[f_s15] [int] NULL ,
	[f_s16] [int] NULL ,
	[f_s17] [int] NULL ,
	[f_s18] [int] NULL ,
	[f_s19] [int] NULL ,
	[f_s20] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[XHDMXMX] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TYPE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SIZE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL] [int] NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[XHDMXMX2] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TYPE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SIZE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL] [int] NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[XHDMXMX3] (
	[F_DJH] [int] NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_TYPE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SIZE] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL] [int] NULL ,
	[f_hw] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[XSBB] (
	[F_CAPTION] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SP] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CB] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TOP] [int] NULL ,
	[F_LEFT] [int] NULL ,
	[F_ROWS] [int] NULL ,
	[F_SIZE] [int] NULL ,
	[F_LENGTH] [int] NULL ,
	[F_WIDTH] [int] NULL ,
	[F_ORIENT] [int] NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BH] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SPLB] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HZ] [smallint] NULL ,
	[F_TITLEFONT] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BBFONT] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLNUMBER] [int] NULL ,
	[F_COLCAPTION] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_COLWIDTH] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CUSTOM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[XSLB] (
	[F_DM] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_MC] [varchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_DJ] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[XSMXZ] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJH] [int] NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_ZY] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_CB] [numeric](15, 2) NULL ,
	[F_DJ] [numeric](15, 2) NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CUSTOM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SE] [numeric](15, 2) NULL ,
	[F_HC] [int] NULL ,
	[F_CX] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[XSZZ] (
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_HW] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SL1] [numeric](15, 3) NULL ,
	[F_SL2] [numeric](15, 3) NULL ,
	[F_SL3] [numeric](15, 3) NULL ,
	[F_SL4] [numeric](15, 3) NULL ,
	[F_SL5] [numeric](15, 3) NULL ,
	[F_SL6] [numeric](15, 3) NULL ,
	[F_SL7] [numeric](15, 3) NULL ,
	[F_SL8] [numeric](15, 3) NULL ,
	[F_SL9] [numeric](15, 3) NULL ,
	[F_SL10] [numeric](15, 3) NULL ,
	[F_SL11] [numeric](15, 3) NULL ,
	[F_SL12] [numeric](15, 3) NULL ,
	[F_JE1] [numeric](15, 2) NULL ,
	[F_JE2] [numeric](15, 2) NULL ,
	[F_JE3] [numeric](15, 2) NULL ,
	[F_JE4] [numeric](15, 2) NULL ,
	[F_JE5] [numeric](15, 2) NULL ,
	[F_JE6] [numeric](15, 2) NULL ,
	[F_JE7] [numeric](15, 2) NULL ,
	[F_JE8] [numeric](15, 2) NULL ,
	[F_JE9] [numeric](15, 2) NULL ,
	[F_JE10] [numeric](15, 2) NULL ,
	[F_JE11] [numeric](15, 2) NULL ,
	[F_JE12] [numeric](15, 2) NULL ,
	[F_CB1] [numeric](15, 2) NULL ,
	[F_CB2] [numeric](15, 2) NULL ,
	[F_CB3] [numeric](15, 2) NULL ,
	[F_CB4] [numeric](15, 2) NULL ,
	[F_CB5] [numeric](15, 2) NULL ,
	[F_CB6] [numeric](15, 2) NULL ,
	[F_CB7] [numeric](15, 2) NULL ,
	[F_CB8] [numeric](15, 2) NULL ,
	[F_CB9] [numeric](15, 2) NULL ,
	[F_CB10] [numeric](15, 2) NULL ,
	[F_CB11] [numeric](15, 2) NULL ,
	[F_CB12] [numeric](15, 2) NULL ,
	[F_SE1] [numeric](15, 2) NULL ,
	[F_SE2] [numeric](15, 2) NULL ,
	[F_SE3] [numeric](15, 2) NULL ,
	[F_SE4] [numeric](15, 2) NULL ,
	[F_SE5] [numeric](15, 2) NULL ,
	[F_SE6] [numeric](15, 2) NULL ,
	[F_SE7] [numeric](15, 2) NULL ,
	[F_SE8] [numeric](15, 2) NULL ,
	[F_SE9] [numeric](15, 2) NULL ,
	[F_SE10] [numeric](15, 2) NULL ,
	[F_SE11] [numeric](15, 2) NULL ,
	[F_SE12] [numeric](15, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[YFHXZ] (
	[f_date] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_datejh] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_datefk] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_djhjh] [int] NOT NULL ,
	[f_djhfk] [int] NOT NULL ,
	[f_vendor] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_bm] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_jh] [numeric](14, 2) NULL ,
	[f_fk] [numeric](14, 2) NULL ,
	[f_hxje] [numeric](14, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[YFJSD2] (
	[F_DJH] [int] NOT NULL ,
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SKR] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CN] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_VENDOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JSFS] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JSH] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JSJE] [numeric](15, 2) NULL ,
	[F_BZ] [varchar] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ye] [numeric](14, 2) NULL ,
	[f_hxje] [numeric](15, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[YFMXZ] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_VENDOR] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJLX] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJH] [int] NULL ,
	[F_ZY] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SR] [numeric](15, 2) NULL ,
	[F_FC] [numeric](15, 2) NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ye] [numeric](14, 2) NULL ,
	[f_hxje] [numeric](15, 2) NULL ,
	[F_CX] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[YFZZ] (
	[F_DM] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_QCYE] [numeric](15, 2) NULL ,
	[F_QMYE] [numeric](15, 2) NULL ,
	[F_J1] [numeric](15, 2) NULL ,
	[F_D1] [numeric](15, 2) NULL ,
	[F_J2] [numeric](15, 2) NULL ,
	[F_D2] [numeric](15, 2) NULL ,
	[F_J3] [numeric](15, 2) NULL ,
	[F_D3] [numeric](15, 2) NULL ,
	[F_J4] [numeric](15, 2) NULL ,
	[F_D4] [numeric](15, 2) NULL ,
	[F_J5] [numeric](15, 2) NULL ,
	[F_D5] [numeric](15, 2) NULL ,
	[F_J6] [numeric](15, 2) NULL ,
	[F_D6] [numeric](15, 2) NULL ,
	[F_J7] [numeric](15, 2) NULL ,
	[F_D7] [numeric](15, 2) NULL ,
	[F_J8] [numeric](15, 2) NULL ,
	[F_D8] [numeric](15, 2) NULL ,
	[F_J9] [numeric](15, 2) NULL ,
	[F_D9] [numeric](15, 2) NULL ,
	[F_J10] [numeric](15, 2) NULL ,
	[F_D10] [numeric](15, 2) NULL ,
	[F_J11] [numeric](15, 2) NULL ,
	[F_D11] [numeric](15, 2) NULL ,
	[F_J12] [numeric](15, 2) NULL ,
	[F_D12] [numeric](15, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[YSHXZ] (
	[f_date] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_datexs] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_datesk] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_djhxs] [int] NOT NULL ,
	[f_djhsk] [int] NOT NULL ,
	[f_custom] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_bm] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_xs] [numeric](14, 2) NULL ,
	[f_sk] [numeric](14, 2) NULL ,
	[f_hxje] [numeric](14, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[YSJSD2] (
	[F_DJH] [int] NOT NULL ,
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SKR] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CN] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CUSTOM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JSFS] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JSH] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JSJE] [numeric](15, 2) NULL ,
	[F_BZ] [varchar] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ye] [numeric](14, 2) NULL ,
	[f_hxje] [numeric](15, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[YSMXZ] (
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CUSTOM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJLX] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DJH] [int] NULL ,
	[F_ZY] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SR] [numeric](15, 2) NULL ,
	[F_FC] [numeric](15, 2) NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_ye] [numeric](14, 2) NULL ,
	[f_hxje] [numeric](15, 2) NULL ,
	[F_CX] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[YSZZ] (
	[F_DM] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_QCYE] [numeric](15, 2) NULL ,
	[F_QMYE] [numeric](15, 2) NULL ,
	[F_J1] [numeric](15, 2) NULL ,
	[F_D1] [numeric](15, 2) NULL ,
	[F_J2] [numeric](15, 2) NULL ,
	[F_D2] [numeric](15, 2) NULL ,
	[F_J3] [numeric](15, 2) NULL ,
	[F_D3] [numeric](15, 2) NULL ,
	[F_J4] [numeric](15, 2) NULL ,
	[F_D4] [numeric](15, 2) NULL ,
	[F_J5] [numeric](15, 2) NULL ,
	[F_D5] [numeric](15, 2) NULL ,
	[F_J6] [numeric](15, 2) NULL ,
	[F_D6] [numeric](15, 2) NULL ,
	[F_J7] [numeric](15, 2) NULL ,
	[F_D7] [numeric](15, 2) NULL ,
	[F_J8] [numeric](15, 2) NULL ,
	[F_D8] [numeric](15, 2) NULL ,
	[F_J9] [numeric](15, 2) NULL ,
	[F_D9] [numeric](15, 2) NULL ,
	[F_J10] [numeric](15, 2) NULL ,
	[F_D10] [numeric](15, 2) NULL ,
	[F_J11] [numeric](15, 2) NULL ,
	[F_D11] [numeric](15, 2) NULL ,
	[F_J12] [numeric](15, 2) NULL ,
	[F_D12] [numeric](15, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[YWY] (
	[F_DM] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_MC] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_DE] [numeric](15, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[YWY3] (
	[f_dm] [char] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_date] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ZLFX_C_DAY] (
	[f_index] [int] NOT NULL ,
	[f_caption] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_day] [int] NOT NULL ,
	[f_date1] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_date2] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ZLFX_C_KJQJ] (
	[f_index] [int] NOT NULL ,
	[f_caption] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_day] [int] NOT NULL ,
	[f_date1] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_date2] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ZLFX_C_YEAR] (
	[f_index] [int] NOT NULL ,
	[f_caption] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_day] [int] NOT NULL ,
	[f_date1] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_date2] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ZLFX_V_DAY] (
	[f_index] [int] NOT NULL ,
	[f_caption] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_day] [int] NOT NULL ,
	[f_date1] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_date2] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ZLFX_V_KJQJ] (
	[f_index] [int] NOT NULL ,
	[f_caption] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_day] [int] NOT NULL ,
	[f_date1] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_date2] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ZLFX_V_YEAR] (
	[f_index] [int] NOT NULL ,
	[f_caption] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[f_day] [int] NOT NULL ,
	[f_date1] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_date2] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ZNPOWER] (
	[F_DM] [char] (2) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_GN] [char] (4) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SY] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SH] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_JZ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DY] [char] (1) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ZNXX] (
	[F_DM] [char] (2) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_MC] [char] (12) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ZTCS] (
	[f_ztbh] [char] (2) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_name] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_lblength] [smallint] NULL ,
	[f_lb1] [smallint] NULL ,
	[f_lb2] [smallint] NULL ,
	[f_lb3] [smallint] NULL ,
	[f_lb4] [smallint] NULL ,
	[f_lb5] [smallint] NULL ,
	[f_lb6] [smallint] NULL ,
	[f_lb7] [smallint] NULL ,
	[f_lb8] [smallint] NULL ,
	[f_lb9] [smallint] NULL ,
	[f_lb10] [smallint] NULL ,
	[f_splength] [smallint] NULL ,
	[f_pricenumber] [smallint] NULL ,
	[f_price1] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_price2] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_price3] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_price4] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_price5] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_cb] [smallint] NULL ,
	[f_clength] [int] NULL ,
	[f_clb1] [int] NULL ,
	[f_clb2] [int] NULL ,
	[f_clb3] [int] NULL ,
	[f_clb4] [int] NULL ,
	[f_vlength] [int] NULL ,
	[f_vlb1] [int] NULL ,
	[f_vlb2] [int] NULL ,
	[f_vlb3] [int] NULL ,
	[f_vlb4] [int] NULL ,
	[f_yc] [char] (1) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ZZD] (
	[F_DJH] [int] NOT NULL ,
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW1] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW2] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_SPMC] [char] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_GG] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SHL] [numeric](15, 2) NULL ,
	[F_DW1] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW2] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CS] [float] NULL ,
	[f_djh0] [int] NULL ,
	[f_ph] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dq] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ZZD2] (
	[F_DJH] [int] NOT NULL ,
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW1] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW2] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_SPMC] [char] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_GG] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SHL] [numeric](15, 2) NULL ,
	[F_DW1] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW2] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CS] [float] NULL ,
	[f_djh0] [int] NULL ,
	[f_ph] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dq] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ZZD3] (
	[F_DJH] [int] NOT NULL ,
	[F_DATE] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_BM] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_YWY] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW1] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_HW2] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_FPH] [char] (12) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_TJ] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_ZD] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_SPMC] [char] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_GG] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SHL] [numeric](15, 2) NULL ,
	[F_DW1] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW2] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CS] [float] NULL ,
	[f_djh0] [int] NULL ,
	[f_ph] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_dq] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ZZDMX] (
	[F_DJH] [int] NOT NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_DJ] [float] NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPMC] [char] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CD] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_GG] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW1] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW2] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CS] [float] NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_iscb] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_sljc] [numeric](15, 3) NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_dj3] [float] NULL ,
	[f_dj4] [float] NULL ,
	[f_dj5] [float] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ZZDMX2] (
	[F_DJH] [int] NOT NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_DJ] [float] NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPMC] [char] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CD] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_GG] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW1] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW2] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CS] [float] NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_iscb] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_sljc] [numeric](15, 3) NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_dj3] [float] NULL ,
	[f_dj4] [float] NULL ,
	[f_dj5] [float] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ZZDMX3] (
	[F_DJH] [int] NOT NULL ,
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_HC] [int] NOT NULL ,
	[F_DJ] [float] NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_JE] [numeric](15, 2) NULL ,
	[F_TM] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SPMC] [char] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CD] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_GG] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW1] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW2] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_CS] [float] NULL ,
	[F_PH] [char] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DQ] [char] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_iscb] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_sljc] [numeric](15, 3) NULL ,
	[f_dj1] [float] NULL ,
	[f_dj2] [float] NULL ,
	[f_dj3] [float] NULL ,
	[f_dj4] [float] NULL ,
	[f_dj5] [float] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ZZMB] (
	[F_SPBH] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SPMC] [char] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ZZMBMX] (
	[F_SPBH1] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SPBH2] [char] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[F_SPMC] [char] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_DW] [char] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[F_SL] [numeric](15, 3) NULL ,
	[F_FIXED] [char] (1) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_hc] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tmwh] (
	[f_tm] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_spbh] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_color] [char] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[f_size] [char] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[AINPUTSOURCE] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_name]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[BBVAR] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_bbbh],
		[F_varname]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[BM] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DM]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[BM3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_dm]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CBPOWER] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_formName],
		[f_Index]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CGD] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CGD2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CGD3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CGDMX] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CGDMX2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CGDMX3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CGDMXMX] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC],
		[F_SIZE]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CGDMXMX2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC],
		[F_SIZE]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CGDMXMX3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC],
		[F_SIZE]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CKD] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CKD2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CKD3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CKDMX] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CKDMX2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CKDMX3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CKDMXMX] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC],
		[F_SIZE]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CKDMXMX2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC],
		[F_SIZE]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CKDMXMX3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC],
		[F_SIZE]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[COMBBVAR] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_varname]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[COMXZ] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_name]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CUSTOM] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DM]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CUSTOM3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_dm]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CUSTOMDJ] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_djlx],
		[f_index]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CUSTOMGRADE] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_dm]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CUSTOMGROUP] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DM]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CUSTOMLB] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_dm]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CUS_SP] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_CUSTOM],
		[F_SPBH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DBD] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DBD2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DBD3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DBDMX] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DBDMX2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DBDMX3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DBDMXMX] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC],
		[F_SIZE]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DBDMXMX2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC],
		[F_SIZE]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DBDMXMX3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC],
		[F_SIZE]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DBZZ] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_SPBH],
		[F_HW]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DHD] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DHD2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DHD3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DHDMX] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DHDMX2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DHDMX3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DROPSOURCE] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_name]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ENV] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_BH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[EVENT] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_djlx],
		[f_index]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[FJXX] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_SPBH],
		[F_BH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[FPCOL] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_BH],
		[F_INDEX]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[FPITEM] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_BH],
		[F_ITEMBH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[FPMODEL] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_BH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[FZZZ] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_SPBH],
		[F_HW],
		[F_COLOR],
		[F_SIZE]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[HW] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DM]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[HW3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_dm]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JGZZ] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_SPBH],
		[F_HW]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JHBB] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_BH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JHD] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JHD2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JHD3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JHDMX] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JHDMX2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JHDMX3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JHDMXMX] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC],
		[F_SIZE]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JHDMXMX2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC],
		[F_SIZE]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JHDMXMX3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC],
		[F_SIZE]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JHZZ] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_SPBH],
		[F_HW]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JSFS] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DM]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JXCBB1] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_bh]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JXCBB2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_bh]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JXCBBCOLS] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_bbbh],
		[f_index]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JXCBBDIC] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_field]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JXCBBHEADERS] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_bbbh],
		[f_index]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JXCBBPAGEFOOTER] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_bbbh],
		[f_index]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JXCBBPAGEHEADER] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_bbbh],
		[f_index]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JXCMENU] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_Aname],
		[f_Name]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[KCYE] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_SPBH],
		[F_HW]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[KCZZ] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_SPBH],
		[F_HW]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[KJQJ] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_YF]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[OPERATOR] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_BH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PAD] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DM]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDD] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_djh]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDD2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_djh]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDD3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_djh]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDDMX] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_djh],
		[f_hc]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDDMX2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_djh],
		[f_hc]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PDDMX3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_djh],
		[f_hc]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PRINTCOLHEADER] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_bh],
		[f_index]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PRINTFIELD] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_bh],
		[f_Index]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PRINTMACRO] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_bh],
		[f_name]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PRINTPAGEFOOTER] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_bh],
		[f_index]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PRINTPAGEHEADER] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_bh],
		[f_index]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PRINTPARAM] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_BH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PRINTPARAME] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_bh]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PSD] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PSDMX] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[RETAILDJ] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_date]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[RKD] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[RKD2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[RKD3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[RKDMX] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[RKDMX2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[RKDMX3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[RKDMXMX] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC],
		[F_SIZE]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[RKDMXMX2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC],
		[F_SIZE]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[RKDMXMX3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC],
		[F_SIZE]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SFZY] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DM]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SJZZ] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_SPBH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SP] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_SPBH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SP2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_BM],
		[F_SPBH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SP3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_spbh]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SPCOLOR] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DM]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SPDOWN] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_SPBH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SPLB] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_LBBH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SPPC] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_SPBH],
		[F_HW],
		[F_PH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SPSIZE] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DM]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SPTYPE] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DM]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SYZZ] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_SPBH],
		[F_HW]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TEXTSOURCE] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_name]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TJD] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TJDMX] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[VENDOR] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DM]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[VENDOR3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_dm]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[VENDORLB] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_dm]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[VEN_SP] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_VENDOR],
		[F_SPBH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[VIP] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DM]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[VIP2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DM]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[XHD] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[XHD2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[XHD3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[XHDMX] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[XHDMX2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[XHDMX3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[XHDMXMX] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC],
		[F_SIZE]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[XHDMXMX2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC],
		[F_SIZE]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[XHDMXMX3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC],
		[F_SIZE]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[XSBB] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_BH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[XSLB] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DM]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[XSZZ] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_SPBH],
		[F_HW]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[YFJSD2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[YFZZ] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DM],
		[F_BM]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[YSJSD2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[YSZZ] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DM],
		[F_BM]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[YWY] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DM]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[YWY3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_dm]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ZLFX_C_DAY] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_index]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ZLFX_C_KJQJ] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_index]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ZLFX_C_YEAR] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_index]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ZLFX_V_DAY] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_index]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ZLFX_V_KJQJ] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_index]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ZLFX_V_YEAR] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[f_index]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ZNPOWER] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DM],
		[F_GN]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ZNXX] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DM]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ZZD] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ZZD2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ZZD3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ZZDMX] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ZZDMX2] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ZZDMX3] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[F_DJH],
		[F_HC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[BM] ADD 
	CONSTRAINT [DF__BM__F_DE__0DAF0CB0] DEFAULT (0) FOR [F_DE]
GO

ALTER TABLE [dbo].[CBPOWER] ADD 
	CONSTRAINT [DF__CBPOWER__f_ItemI__108B795B] DEFAULT (0) FOR [f_ItemIndex]
GO

ALTER TABLE [dbo].[CGD] ADD 
	CONSTRAINT [DF__CGD__F_JS__1273C1CD] DEFAULT (0) FOR [F_JS],
	CONSTRAINT [DF__CGD__f_fpxz__1367E606] DEFAULT ('') FOR [f_fpxz]
GO

ALTER TABLE [dbo].[CGD2] ADD 
	CONSTRAINT [DF__CGD2__F_JS__15502E78] DEFAULT (0) FOR [F_JS],
	CONSTRAINT [DF__CGD2__f_fpxz__164452B1] DEFAULT ('') FOR [f_fpxz]
GO

ALTER TABLE [dbo].[CGD3] ADD 
	CONSTRAINT [DF__CGD3__F_JS__182C9B23] DEFAULT (0) FOR [F_JS],
	CONSTRAINT [DF__CGD3__f_fpxz__1920BF5C] DEFAULT ('') FOR [f_fpxz]
GO

ALTER TABLE [dbo].[CGDMX] ADD 
	CONSTRAINT [DF__CGDMX__F_SL__1B0907CE] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__CGDMX__F_DJ__1BFD2C07] DEFAULT (0) FOR [F_DJ],
	CONSTRAINT [DF__CGDMX__F_JE__1CF15040] DEFAULT (0) FOR [F_JE],
	CONSTRAINT [DF__CGDMX__F_SLV__1DE57479] DEFAULT (0) FOR [F_SLV],
	CONSTRAINT [DF__CGDMX__F_SE__1ED998B2] DEFAULT (0) FOR [F_SE],
	CONSTRAINT [DF__CGDMX__F_HJ__1FCDBCEB] DEFAULT (0) FOR [F_HJ],
	CONSTRAINT [DF__CGDMX__f_dj1__20C1E124] DEFAULT (0) FOR [f_dj1],
	CONSTRAINT [DF__CGDMX__f_dj2__21B6055D] DEFAULT (0) FOR [f_dj2],
	CONSTRAINT [DF__CGDMX__f_sljc__22AA2996] DEFAULT (0) FOR [f_sljc],
	CONSTRAINT [DF__CGDMX__f_sl2__239E4DCF] DEFAULT (0) FOR [f_sl2],
	CONSTRAINT [DF__CGDMX__f_color__24927208] DEFAULT ('') FOR [f_color],
	CONSTRAINT [DF__CGDMX__f_s1__25869641] DEFAULT (0) FOR [f_s1],
	CONSTRAINT [DF__CGDMX__f_s2__267ABA7A] DEFAULT (0) FOR [f_s2],
	CONSTRAINT [DF__CGDMX__f_s3__276EDEB3] DEFAULT (0) FOR [f_s3],
	CONSTRAINT [DF__CGDMX__f_s4__286302EC] DEFAULT (0) FOR [f_s4],
	CONSTRAINT [DF__CGDMX__f_s5__29572725] DEFAULT (0) FOR [f_s5],
	CONSTRAINT [DF__CGDMX__f_s6__2A4B4B5E] DEFAULT (0) FOR [f_s6],
	CONSTRAINT [DF__CGDMX__f_s7__2B3F6F97] DEFAULT (0) FOR [f_s7],
	CONSTRAINT [DF__CGDMX__f_s8__2C3393D0] DEFAULT (0) FOR [f_s8],
	CONSTRAINT [DF__CGDMX__f_s9__2D27B809] DEFAULT (0) FOR [f_s9],
	CONSTRAINT [DF__CGDMX__f_s10__2E1BDC42] DEFAULT (0) FOR [f_s10],
	CONSTRAINT [DF__CGDMX__f_s11__2F10007B] DEFAULT (0) FOR [f_s11],
	CONSTRAINT [DF__CGDMX__f_s12__300424B4] DEFAULT (0) FOR [f_s12],
	CONSTRAINT [DF__CGDMX__f_s13__30F848ED] DEFAULT (0) FOR [f_s13],
	CONSTRAINT [DF__CGDMX__f_s14__31EC6D26] DEFAULT (0) FOR [f_s14],
	CONSTRAINT [DF__CGDMX__f_s15__32E0915F] DEFAULT (0) FOR [f_s15],
	CONSTRAINT [DF__CGDMX__f_s16__33D4B598] DEFAULT (0) FOR [f_s16],
	CONSTRAINT [DF__CGDMX__f_s17__34C8D9D1] DEFAULT (0) FOR [f_s17],
	CONSTRAINT [DF__CGDMX__f_s18__35BCFE0A] DEFAULT (0) FOR [f_s18],
	CONSTRAINT [DF__CGDMX__f_s19__36B12243] DEFAULT (0) FOR [f_s19],
	CONSTRAINT [DF__CGDMX__f_s20__37A5467C] DEFAULT (0) FOR [f_s20]
GO

ALTER TABLE [dbo].[CGDMX2] ADD 
	CONSTRAINT [DF__CGDMX2__F_SL__398D8EEE] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__CGDMX2__F_DJ__3A81B327] DEFAULT (0) FOR [F_DJ],
	CONSTRAINT [DF__CGDMX2__F_JE__3B75D760] DEFAULT (0) FOR [F_JE],
	CONSTRAINT [DF__CGDMX2__F_SLV__3C69FB99] DEFAULT (0) FOR [F_SLV],
	CONSTRAINT [DF__CGDMX2__F_SE__3D5E1FD2] DEFAULT (0) FOR [F_SE],
	CONSTRAINT [DF__CGDMX2__F_HJ__3E52440B] DEFAULT (0) FOR [F_HJ],
	CONSTRAINT [DF__CGDMX2__f_dj1__3F466844] DEFAULT (0) FOR [f_dj1],
	CONSTRAINT [DF__CGDMX2__f_dj2__403A8C7D] DEFAULT (0) FOR [f_dj2],
	CONSTRAINT [DF__CGDMX2__f_sljc__412EB0B6] DEFAULT (0) FOR [f_sljc],
	CONSTRAINT [DF__CGDMX2__f_sl2__4222D4EF] DEFAULT (0) FOR [f_sl2],
	CONSTRAINT [DF__CGDMX2__f_color__4316F928] DEFAULT ('') FOR [f_color],
	CONSTRAINT [DF__CGDMX2__f_s1__440B1D61] DEFAULT (0) FOR [f_s1],
	CONSTRAINT [DF__CGDMX2__f_s2__44FF419A] DEFAULT (0) FOR [f_s2],
	CONSTRAINT [DF__CGDMX2__f_s3__45F365D3] DEFAULT (0) FOR [f_s3],
	CONSTRAINT [DF__CGDMX2__f_s4__46E78A0C] DEFAULT (0) FOR [f_s4],
	CONSTRAINT [DF__CGDMX2__f_s5__47DBAE45] DEFAULT (0) FOR [f_s5],
	CONSTRAINT [DF__CGDMX2__f_s6__48CFD27E] DEFAULT (0) FOR [f_s6],
	CONSTRAINT [DF__CGDMX2__f_s7__49C3F6B7] DEFAULT (0) FOR [f_s7],
	CONSTRAINT [DF__CGDMX2__f_s8__4AB81AF0] DEFAULT (0) FOR [f_s8],
	CONSTRAINT [DF__CGDMX2__f_s9__4BAC3F29] DEFAULT (0) FOR [f_s9],
	CONSTRAINT [DF__CGDMX2__f_s10__4CA06362] DEFAULT (0) FOR [f_s10],
	CONSTRAINT [DF__CGDMX2__f_s11__4D94879B] DEFAULT (0) FOR [f_s11],
	CONSTRAINT [DF__CGDMX2__f_s12__4E88ABD4] DEFAULT (0) FOR [f_s12],
	CONSTRAINT [DF__CGDMX2__f_s13__4F7CD00D] DEFAULT (0) FOR [f_s13],
	CONSTRAINT [DF__CGDMX2__f_s14__5070F446] DEFAULT (0) FOR [f_s14],
	CONSTRAINT [DF__CGDMX2__f_s15__5165187F] DEFAULT (0) FOR [f_s15],
	CONSTRAINT [DF__CGDMX2__f_s16__52593CB8] DEFAULT (0) FOR [f_s16],
	CONSTRAINT [DF__CGDMX2__f_s17__534D60F1] DEFAULT (0) FOR [f_s17],
	CONSTRAINT [DF__CGDMX2__f_s18__5441852A] DEFAULT (0) FOR [f_s18],
	CONSTRAINT [DF__CGDMX2__f_s19__5535A963] DEFAULT (0) FOR [f_s19],
	CONSTRAINT [DF__CGDMX2__f_s20__5629CD9C] DEFAULT (0) FOR [f_s20]
GO

ALTER TABLE [dbo].[CGDMX3] ADD 
	CONSTRAINT [DF__CGDMX3__F_SL__5812160E] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__CGDMX3__F_DJ__59063A47] DEFAULT (0) FOR [F_DJ],
	CONSTRAINT [DF__CGDMX3__F_JE__59FA5E80] DEFAULT (0) FOR [F_JE],
	CONSTRAINT [DF__CGDMX3__F_SLV__5AEE82B9] DEFAULT (0) FOR [F_SLV],
	CONSTRAINT [DF__CGDMX3__F_SE__5BE2A6F2] DEFAULT (0) FOR [F_SE],
	CONSTRAINT [DF__CGDMX3__F_HJ__5CD6CB2B] DEFAULT (0) FOR [F_HJ],
	CONSTRAINT [DF__CGDMX3__f_dj1__5DCAEF64] DEFAULT (0) FOR [f_dj1],
	CONSTRAINT [DF__CGDMX3__f_dj2__5EBF139D] DEFAULT (0) FOR [f_dj2],
	CONSTRAINT [DF__CGDMX3__f_sljc__5FB337D6] DEFAULT (0) FOR [f_sljc],
	CONSTRAINT [DF__CGDMX3__f_sl2__60A75C0F] DEFAULT (0) FOR [f_sl2],
	CONSTRAINT [DF__CGDMX3__f_color__619B8048] DEFAULT ('') FOR [f_color],
	CONSTRAINT [DF__CGDMX3__f_s1__628FA481] DEFAULT (0) FOR [f_s1],
	CONSTRAINT [DF__CGDMX3__f_s2__6383C8BA] DEFAULT (0) FOR [f_s2],
	CONSTRAINT [DF__CGDMX3__f_s3__6477ECF3] DEFAULT (0) FOR [f_s3],
	CONSTRAINT [DF__CGDMX3__f_s4__656C112C] DEFAULT (0) FOR [f_s4],
	CONSTRAINT [DF__CGDMX3__f_s5__66603565] DEFAULT (0) FOR [f_s5],
	CONSTRAINT [DF__CGDMX3__f_s6__6754599E] DEFAULT (0) FOR [f_s6],
	CONSTRAINT [DF__CGDMX3__f_s7__68487DD7] DEFAULT (0) FOR [f_s7],
	CONSTRAINT [DF__CGDMX3__f_s8__693CA210] DEFAULT (0) FOR [f_s8],
	CONSTRAINT [DF__CGDMX3__f_s9__6A30C649] DEFAULT (0) FOR [f_s9],
	CONSTRAINT [DF__CGDMX3__f_s10__6B24EA82] DEFAULT (0) FOR [f_s10],
	CONSTRAINT [DF__CGDMX3__f_s11__6C190EBB] DEFAULT (0) FOR [f_s11],
	CONSTRAINT [DF__CGDMX3__f_s12__6D0D32F4] DEFAULT (0) FOR [f_s12],
	CONSTRAINT [DF__CGDMX3__f_s13__6E01572D] DEFAULT (0) FOR [f_s13],
	CONSTRAINT [DF__CGDMX3__f_s14__6EF57B66] DEFAULT (0) FOR [f_s14],
	CONSTRAINT [DF__CGDMX3__f_s15__6FE99F9F] DEFAULT (0) FOR [f_s15],
	CONSTRAINT [DF__CGDMX3__f_s16__70DDC3D8] DEFAULT (0) FOR [f_s16],
	CONSTRAINT [DF__CGDMX3__f_s17__71D1E811] DEFAULT (0) FOR [f_s17],
	CONSTRAINT [DF__CGDMX3__f_s18__72C60C4A] DEFAULT (0) FOR [f_s18],
	CONSTRAINT [DF__CGDMX3__f_s19__73BA3083] DEFAULT (0) FOR [f_s19],
	CONSTRAINT [DF__CGDMX3__f_s20__74AE54BC] DEFAULT (0) FOR [f_s20]
GO

ALTER TABLE [dbo].[CGDMXMX] ADD 
	CONSTRAINT [DF__CGDMXMX__F_SL__76969D2E] DEFAULT (0) FOR [F_SL]
GO

ALTER TABLE [dbo].[CGDMXMX2] ADD 
	CONSTRAINT [DF__CGDMXMX2__F_SL__787EE5A0] DEFAULT (0) FOR [F_SL]
GO

ALTER TABLE [dbo].[CGDMXMX3] ADD 
	CONSTRAINT [DF__CGDMXMX3__F_SL__7A672E12] DEFAULT (0) FOR [F_SL]
GO

ALTER TABLE [dbo].[CKD] ADD 
	CONSTRAINT [DF__CKD__f_fpxz__7C4F7684] DEFAULT ('') FOR [f_fpxz],
	CONSTRAINT [DF__CKD__f_sl2__7D439ABD] DEFAULT (0) FOR [f_sl2]
GO

ALTER TABLE [dbo].[CKD2] ADD 
	CONSTRAINT [DF__CKD2__f_fpxz__7F2BE32F] DEFAULT ('') FOR [f_fpxz],
	CONSTRAINT [DF__CKD2__f_sl2__00200768] DEFAULT (0) FOR [f_sl2]
GO

ALTER TABLE [dbo].[CKD3] ADD 
	CONSTRAINT [DF__CKD3__f_fpxz__02084FDA] DEFAULT ('') FOR [f_fpxz],
	CONSTRAINT [DF__CKD3__f_sl2__02FC7413] DEFAULT (0) FOR [f_sl2]
GO

ALTER TABLE [dbo].[CKDMX] ADD 
	CONSTRAINT [DF__CKDMX__F_SL__04E4BC85] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__CKDMX__F_DJ__05D8E0BE] DEFAULT (0) FOR [F_DJ],
	CONSTRAINT [DF__CKDMX__F_JE__06CD04F7] DEFAULT (0) FOR [F_JE],
	CONSTRAINT [DF__CKDMX__F_SLV__07C12930] DEFAULT (0) FOR [F_SLV],
	CONSTRAINT [DF__CKDMX__F_SE__08B54D69] DEFAULT (0) FOR [F_SE],
	CONSTRAINT [DF__CKDMX__F_UN__09A971A2] DEFAULT (0) FOR [F_UN],
	CONSTRAINT [DF__CKDMX__f_sl2__0A9D95DB] DEFAULT (0) FOR [f_sl2],
	CONSTRAINT [DF__CKDMX__f_color__0B91BA14] DEFAULT ('') FOR [f_color],
	CONSTRAINT [DF__CKDMX__f_s1__0C85DE4D] DEFAULT (0) FOR [f_s1],
	CONSTRAINT [DF__CKDMX__f_s2__0D7A0286] DEFAULT (0) FOR [f_s2],
	CONSTRAINT [DF__CKDMX__f_s3__0E6E26BF] DEFAULT (0) FOR [f_s3],
	CONSTRAINT [DF__CKDMX__f_s4__0F624AF8] DEFAULT (0) FOR [f_s4],
	CONSTRAINT [DF__CKDMX__f_s5__10566F31] DEFAULT (0) FOR [f_s5],
	CONSTRAINT [DF__CKDMX__f_s6__114A936A] DEFAULT (0) FOR [f_s6],
	CONSTRAINT [DF__CKDMX__f_s7__123EB7A3] DEFAULT (0) FOR [f_s7],
	CONSTRAINT [DF__CKDMX__f_s8__1332DBDC] DEFAULT (0) FOR [f_s8],
	CONSTRAINT [DF__CKDMX__f_s9__14270015] DEFAULT (0) FOR [f_s9],
	CONSTRAINT [DF__CKDMX__f_s10__151B244E] DEFAULT (0) FOR [f_s10],
	CONSTRAINT [DF__CKDMX__f_s11__160F4887] DEFAULT (0) FOR [f_s11],
	CONSTRAINT [DF__CKDMX__f_s12__17036CC0] DEFAULT (0) FOR [f_s12],
	CONSTRAINT [DF__CKDMX__f_s13__17F790F9] DEFAULT (0) FOR [f_s13],
	CONSTRAINT [DF__CKDMX__f_s14__18EBB532] DEFAULT (0) FOR [f_s14],
	CONSTRAINT [DF__CKDMX__f_s15__19DFD96B] DEFAULT (0) FOR [f_s15],
	CONSTRAINT [DF__CKDMX__f_s16__1AD3FDA4] DEFAULT (0) FOR [f_s16],
	CONSTRAINT [DF__CKDMX__f_s17__1BC821DD] DEFAULT (0) FOR [f_s17],
	CONSTRAINT [DF__CKDMX__f_s18__1CBC4616] DEFAULT (0) FOR [f_s18],
	CONSTRAINT [DF__CKDMX__f_s19__1DB06A4F] DEFAULT (0) FOR [f_s19],
	CONSTRAINT [DF__CKDMX__f_s20__1EA48E88] DEFAULT (0) FOR [f_s20]
GO

ALTER TABLE [dbo].[CKDMX2] ADD 
	CONSTRAINT [DF__CKDMX2__F_SL__208CD6FA] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__CKDMX2__F_DJ__2180FB33] DEFAULT (0) FOR [F_DJ],
	CONSTRAINT [DF__CKDMX2__F_JE__22751F6C] DEFAULT (0) FOR [F_JE],
	CONSTRAINT [DF__CKDMX2__F_SLV__236943A5] DEFAULT (0) FOR [F_SLV],
	CONSTRAINT [DF__CKDMX2__F_SE__245D67DE] DEFAULT (0) FOR [F_SE],
	CONSTRAINT [DF__CKDMX2__F_UN__25518C17] DEFAULT (0) FOR [F_UN],
	CONSTRAINT [DF__CKDMX2__f_sl2__2645B050] DEFAULT (0) FOR [f_sl2],
	CONSTRAINT [DF__CKDMX2__f_color__2739D489] DEFAULT ('') FOR [f_color],
	CONSTRAINT [DF__CKDMX2__f_s1__282DF8C2] DEFAULT (0) FOR [f_s1],
	CONSTRAINT [DF__CKDMX2__f_s2__29221CFB] DEFAULT (0) FOR [f_s2],
	CONSTRAINT [DF__CKDMX2__f_s3__2A164134] DEFAULT (0) FOR [f_s3],
	CONSTRAINT [DF__CKDMX2__f_s4__2B0A656D] DEFAULT (0) FOR [f_s4],
	CONSTRAINT [DF__CKDMX2__f_s5__2BFE89A6] DEFAULT (0) FOR [f_s5],
	CONSTRAINT [DF__CKDMX2__f_s6__2CF2ADDF] DEFAULT (0) FOR [f_s6],
	CONSTRAINT [DF__CKDMX2__f_s7__2DE6D218] DEFAULT (0) FOR [f_s7],
	CONSTRAINT [DF__CKDMX2__f_s8__2EDAF651] DEFAULT (0) FOR [f_s8],
	CONSTRAINT [DF__CKDMX2__f_s9__2FCF1A8A] DEFAULT (0) FOR [f_s9],
	CONSTRAINT [DF__CKDMX2__f_s10__30C33EC3] DEFAULT (0) FOR [f_s10],
	CONSTRAINT [DF__CKDMX2__f_s11__31B762FC] DEFAULT (0) FOR [f_s11],
	CONSTRAINT [DF__CKDMX2__f_s12__32AB8735] DEFAULT (0) FOR [f_s12],
	CONSTRAINT [DF__CKDMX2__f_s13__339FAB6E] DEFAULT (0) FOR [f_s13],
	CONSTRAINT [DF__CKDMX2__f_s14__3493CFA7] DEFAULT (0) FOR [f_s14],
	CONSTRAINT [DF__CKDMX2__f_s15__3587F3E0] DEFAULT (0) FOR [f_s15],
	CONSTRAINT [DF__CKDMX2__f_s16__367C1819] DEFAULT (0) FOR [f_s16],
	CONSTRAINT [DF__CKDMX2__f_s17__37703C52] DEFAULT (0) FOR [f_s17],
	CONSTRAINT [DF__CKDMX2__f_s18__3864608B] DEFAULT (0) FOR [f_s18],
	CONSTRAINT [DF__CKDMX2__f_s19__395884C4] DEFAULT (0) FOR [f_s19],
	CONSTRAINT [DF__CKDMX2__f_s20__3A4CA8FD] DEFAULT (0) FOR [f_s20]
GO

ALTER TABLE [dbo].[CKDMX3] ADD 
	CONSTRAINT [DF__CKDMX3__f_sl2__3C34F16F] DEFAULT (0) FOR [f_sl2],
	CONSTRAINT [DF__CKDMX3__f_color__3D2915A8] DEFAULT ('') FOR [f_color],
	CONSTRAINT [DF__CKDMX3__f_s1__3E1D39E1] DEFAULT (0) FOR [f_s1],
	CONSTRAINT [DF__CKDMX3__f_s2__3F115E1A] DEFAULT (0) FOR [f_s2],
	CONSTRAINT [DF__CKDMX3__f_s3__40058253] DEFAULT (0) FOR [f_s3],
	CONSTRAINT [DF__CKDMX3__f_s4__40F9A68C] DEFAULT (0) FOR [f_s4],
	CONSTRAINT [DF__CKDMX3__f_s5__41EDCAC5] DEFAULT (0) FOR [f_s5],
	CONSTRAINT [DF__CKDMX3__f_s6__42E1EEFE] DEFAULT (0) FOR [f_s6],
	CONSTRAINT [DF__CKDMX3__f_s7__43D61337] DEFAULT (0) FOR [f_s7],
	CONSTRAINT [DF__CKDMX3__f_s8__44CA3770] DEFAULT (0) FOR [f_s8],
	CONSTRAINT [DF__CKDMX3__f_s9__45BE5BA9] DEFAULT (0) FOR [f_s9],
	CONSTRAINT [DF__CKDMX3__f_s10__46B27FE2] DEFAULT (0) FOR [f_s10],
	CONSTRAINT [DF__CKDMX3__f_s11__47A6A41B] DEFAULT (0) FOR [f_s11],
	CONSTRAINT [DF__CKDMX3__f_s12__489AC854] DEFAULT (0) FOR [f_s12],
	CONSTRAINT [DF__CKDMX3__f_s13__498EEC8D] DEFAULT (0) FOR [f_s13],
	CONSTRAINT [DF__CKDMX3__f_s14__4A8310C6] DEFAULT (0) FOR [f_s14],
	CONSTRAINT [DF__CKDMX3__f_s15__4B7734FF] DEFAULT (0) FOR [f_s15],
	CONSTRAINT [DF__CKDMX3__f_s16__4C6B5938] DEFAULT (0) FOR [f_s16],
	CONSTRAINT [DF__CKDMX3__f_s17__4D5F7D71] DEFAULT (0) FOR [f_s17],
	CONSTRAINT [DF__CKDMX3__f_s18__4E53A1AA] DEFAULT (0) FOR [f_s18],
	CONSTRAINT [DF__CKDMX3__f_s19__4F47C5E3] DEFAULT (0) FOR [f_s19],
	CONSTRAINT [DF__CKDMX3__f_s20__503BEA1C] DEFAULT (0) FOR [f_s20]
GO

ALTER TABLE [dbo].[CKDMXMX] ADD 
	CONSTRAINT [DF__CKDMXMX__F_SL__5224328E] DEFAULT (0) FOR [F_SL]
GO

ALTER TABLE [dbo].[CKDMXMX2] ADD 
	CONSTRAINT [DF__CKDMXMX2__F_SL__540C7B00] DEFAULT (0) FOR [F_SL]
GO

ALTER TABLE [dbo].[CKDMXMX3] ADD 
	CONSTRAINT [DF__CKDMXMX3__F_SL__55F4C372] DEFAULT (0) FOR [F_SL]
GO

ALTER TABLE [dbo].[COMXZ] ADD 
	CONSTRAINT [DF__COMXZ__f_formWid__59C55456] DEFAULT (200) FOR [f_formWidth],
	CONSTRAINT [DF__COMXZ__f_formHei__5AB9788F] DEFAULT (200) FOR [f_formHeight]
GO

ALTER TABLE [dbo].[CUSTOM] ADD 
	CONSTRAINT [DF__CUSTOM__F_QCYE__5D95E53A] DEFAULT (0) FOR [F_QCYE],
	CONSTRAINT [DF__CUSTOM__F_QMYE__5E8A0973] DEFAULT (0) FOR [F_QMYE],
	CONSTRAINT [DF__CUSTOM__F_SXED__5F7E2DAC] DEFAULT (0) FOR [F_SXED],
	CONSTRAINT [DF__CUSTOM__F_J1__607251E5] DEFAULT (0) FOR [F_J1],
	CONSTRAINT [DF__CUSTOM__F_D1__6166761E] DEFAULT (0) FOR [F_D1],
	CONSTRAINT [DF__CUSTOM__F_J2__625A9A57] DEFAULT (0) FOR [F_J2],
	CONSTRAINT [DF__CUSTOM__F_D2__634EBE90] DEFAULT (0) FOR [F_D2],
	CONSTRAINT [DF__CUSTOM__F_J3__6442E2C9] DEFAULT (0) FOR [F_J3],
	CONSTRAINT [DF__CUSTOM__F_D3__65370702] DEFAULT (0) FOR [F_D3],
	CONSTRAINT [DF__CUSTOM__F_J4__662B2B3B] DEFAULT (0) FOR [F_J4],
	CONSTRAINT [DF__CUSTOM__F_D4__671F4F74] DEFAULT (0) FOR [F_D4],
	CONSTRAINT [DF__CUSTOM__F_J5__681373AD] DEFAULT (0) FOR [F_J5],
	CONSTRAINT [DF__CUSTOM__F_D5__690797E6] DEFAULT (0) FOR [F_D5],
	CONSTRAINT [DF__CUSTOM__F_J6__69FBBC1F] DEFAULT (0) FOR [F_J6],
	CONSTRAINT [DF__CUSTOM__F_D6__6AEFE058] DEFAULT (0) FOR [F_D6],
	CONSTRAINT [DF__CUSTOM__F_J7__6BE40491] DEFAULT (0) FOR [F_J7],
	CONSTRAINT [DF__CUSTOM__F_D7__6CD828CA] DEFAULT (0) FOR [F_D7],
	CONSTRAINT [DF__CUSTOM__F_J8__6DCC4D03] DEFAULT (0) FOR [F_J8],
	CONSTRAINT [DF__CUSTOM__F_D8__6EC0713C] DEFAULT (0) FOR [F_D8],
	CONSTRAINT [DF__CUSTOM__F_J9__6FB49575] DEFAULT (0) FOR [F_J9],
	CONSTRAINT [DF__CUSTOM__F_D9__70A8B9AE] DEFAULT (0) FOR [F_D9],
	CONSTRAINT [DF__CUSTOM__F_J10__719CDDE7] DEFAULT (0) FOR [F_J10],
	CONSTRAINT [DF__CUSTOM__F_D10__72910220] DEFAULT (0) FOR [F_D10],
	CONSTRAINT [DF__CUSTOM__F_J11__73852659] DEFAULT (0) FOR [F_J11],
	CONSTRAINT [DF__CUSTOM__F_D11__74794A92] DEFAULT (0) FOR [F_D11],
	CONSTRAINT [DF__CUSTOM__F_J12__756D6ECB] DEFAULT (0) FOR [F_J12],
	CONSTRAINT [DF__CUSTOM__F_D12__76619304] DEFAULT (0) FOR [F_D12]
GO

ALTER TABLE [dbo].[CUSTOMGRADE] ADD 
	CONSTRAINT [DF__CUSTOMGRAD__f_kl__7A3223E8] DEFAULT (0) FOR [f_kl],
	CONSTRAINT [DF__CUSTOMGRA__f_pri__7B264821] DEFAULT (2) FOR [f_priceNumber]
GO

ALTER TABLE [dbo].[DBDMX] ADD 
	CONSTRAINT [DF__DBDMX__F_SL__01D345B0] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__DBDMX__F_JE__02C769E9] DEFAULT (0) FOR [F_JE],
	CONSTRAINT [DF__DBDMX__F_SLJC__03BB8E22] DEFAULT (0) FOR [F_SLJC],
	CONSTRAINT [DF__DBDMX__F_DJ__04AFB25B] DEFAULT (0) FOR [F_DJ],
	CONSTRAINT [DF__DBDMX__F_UN__05A3D694] DEFAULT (0) FOR [F_UN],
	CONSTRAINT [DF__DBDMX__f_sl2__0697FACD] DEFAULT (0) FOR [f_sl2],
	CONSTRAINT [DF__DBDMX__f_color__078C1F06] DEFAULT ('') FOR [f_color],
	CONSTRAINT [DF__DBDMX__f_s1__0880433F] DEFAULT (0) FOR [f_s1],
	CONSTRAINT [DF__DBDMX__f_s2__09746778] DEFAULT (0) FOR [f_s2],
	CONSTRAINT [DF__DBDMX__f_s3__0A688BB1] DEFAULT (0) FOR [f_s3],
	CONSTRAINT [DF__DBDMX__f_s4__0B5CAFEA] DEFAULT (0) FOR [f_s4],
	CONSTRAINT [DF__DBDMX__f_s5__0C50D423] DEFAULT (0) FOR [f_s5],
	CONSTRAINT [DF__DBDMX__f_s6__0D44F85C] DEFAULT (0) FOR [f_s6],
	CONSTRAINT [DF__DBDMX__f_s7__0E391C95] DEFAULT (0) FOR [f_s7],
	CONSTRAINT [DF__DBDMX__f_s8__0F2D40CE] DEFAULT (0) FOR [f_s8],
	CONSTRAINT [DF__DBDMX__f_s9__10216507] DEFAULT (0) FOR [f_s9],
	CONSTRAINT [DF__DBDMX__f_s10__11158940] DEFAULT (0) FOR [f_s10],
	CONSTRAINT [DF__DBDMX__f_s11__1209AD79] DEFAULT (0) FOR [f_s11],
	CONSTRAINT [DF__DBDMX__f_s12__12FDD1B2] DEFAULT (0) FOR [f_s12],
	CONSTRAINT [DF__DBDMX__f_s13__13F1F5EB] DEFAULT (0) FOR [f_s13],
	CONSTRAINT [DF__DBDMX__f_s14__14E61A24] DEFAULT (0) FOR [f_s14],
	CONSTRAINT [DF__DBDMX__f_s15__15DA3E5D] DEFAULT (0) FOR [f_s15],
	CONSTRAINT [DF__DBDMX__f_s16__16CE6296] DEFAULT (0) FOR [f_s16],
	CONSTRAINT [DF__DBDMX__f_s17__17C286CF] DEFAULT (0) FOR [f_s17],
	CONSTRAINT [DF__DBDMX__f_s18__18B6AB08] DEFAULT (0) FOR [f_s18],
	CONSTRAINT [DF__DBDMX__f_s19__19AACF41] DEFAULT (0) FOR [f_s19],
	CONSTRAINT [DF__DBDMX__f_s20__1A9EF37A] DEFAULT (0) FOR [f_s20]
GO

ALTER TABLE [dbo].[DBDMX2] ADD 
	CONSTRAINT [DF__DBDMX2__F_SL__1C873BEC] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__DBDMX2__F_JE__1D7B6025] DEFAULT (0) FOR [F_JE],
	CONSTRAINT [DF__DBDMX2__F_SLJC__1E6F845E] DEFAULT (0) FOR [F_SLJC],
	CONSTRAINT [DF__DBDMX2__F_DJ__1F63A897] DEFAULT (0) FOR [F_DJ],
	CONSTRAINT [DF__DBDMX2__F_UN__2057CCD0] DEFAULT (0) FOR [F_UN],
	CONSTRAINT [DF__DBDMX2__f_sl2__214BF109] DEFAULT (0) FOR [f_sl2],
	CONSTRAINT [DF__DBDMX2__f_color__22401542] DEFAULT ('') FOR [f_color],
	CONSTRAINT [DF__DBDMX2__f_s1__2334397B] DEFAULT (0) FOR [f_s1],
	CONSTRAINT [DF__DBDMX2__f_s2__24285DB4] DEFAULT (0) FOR [f_s2],
	CONSTRAINT [DF__DBDMX2__f_s3__251C81ED] DEFAULT (0) FOR [f_s3],
	CONSTRAINT [DF__DBDMX2__f_s4__2610A626] DEFAULT (0) FOR [f_s4],
	CONSTRAINT [DF__DBDMX2__f_s5__2704CA5F] DEFAULT (0) FOR [f_s5],
	CONSTRAINT [DF__DBDMX2__f_s6__27F8EE98] DEFAULT (0) FOR [f_s6],
	CONSTRAINT [DF__DBDMX2__f_s7__28ED12D1] DEFAULT (0) FOR [f_s7],
	CONSTRAINT [DF__DBDMX2__f_s8__29E1370A] DEFAULT (0) FOR [f_s8],
	CONSTRAINT [DF__DBDMX2__f_s9__2AD55B43] DEFAULT (0) FOR [f_s9],
	CONSTRAINT [DF__DBDMX2__f_s10__2BC97F7C] DEFAULT (0) FOR [f_s10],
	CONSTRAINT [DF__DBDMX2__f_s11__2CBDA3B5] DEFAULT (0) FOR [f_s11],
	CONSTRAINT [DF__DBDMX2__f_s12__2DB1C7EE] DEFAULT (0) FOR [f_s12],
	CONSTRAINT [DF__DBDMX2__f_s13__2EA5EC27] DEFAULT (0) FOR [f_s13],
	CONSTRAINT [DF__DBDMX2__f_s14__2F9A1060] DEFAULT (0) FOR [f_s14],
	CONSTRAINT [DF__DBDMX2__f_s15__308E3499] DEFAULT (0) FOR [f_s15],
	CONSTRAINT [DF__DBDMX2__f_s16__318258D2] DEFAULT (0) FOR [f_s16],
	CONSTRAINT [DF__DBDMX2__f_s17__32767D0B] DEFAULT (0) FOR [f_s17],
	CONSTRAINT [DF__DBDMX2__f_s18__336AA144] DEFAULT (0) FOR [f_s18],
	CONSTRAINT [DF__DBDMX2__f_s19__345EC57D] DEFAULT (0) FOR [f_s19],
	CONSTRAINT [DF__DBDMX2__f_s20__3552E9B6] DEFAULT (0) FOR [f_s20]
GO

ALTER TABLE [dbo].[DBDMX3] ADD 
	CONSTRAINT [DF__DBDMX3__f_color__373B3228] DEFAULT ('') FOR [f_color],
	CONSTRAINT [DF__DBDMX3__f_s1__382F5661] DEFAULT (0) FOR [f_s1],
	CONSTRAINT [DF__DBDMX3__f_s2__39237A9A] DEFAULT (0) FOR [f_s2],
	CONSTRAINT [DF__DBDMX3__f_s3__3A179ED3] DEFAULT (0) FOR [f_s3],
	CONSTRAINT [DF__DBDMX3__f_s4__3B0BC30C] DEFAULT (0) FOR [f_s4],
	CONSTRAINT [DF__DBDMX3__f_s5__3BFFE745] DEFAULT (0) FOR [f_s5],
	CONSTRAINT [DF__DBDMX3__f_s6__3CF40B7E] DEFAULT (0) FOR [f_s6],
	CONSTRAINT [DF__DBDMX3__f_s7__3DE82FB7] DEFAULT (0) FOR [f_s7],
	CONSTRAINT [DF__DBDMX3__f_s8__3EDC53F0] DEFAULT (0) FOR [f_s8],
	CONSTRAINT [DF__DBDMX3__f_s9__3FD07829] DEFAULT (0) FOR [f_s9],
	CONSTRAINT [DF__DBDMX3__f_s10__40C49C62] DEFAULT (0) FOR [f_s10],
	CONSTRAINT [DF__DBDMX3__f_s11__41B8C09B] DEFAULT (0) FOR [f_s11],
	CONSTRAINT [DF__DBDMX3__f_s12__42ACE4D4] DEFAULT (0) FOR [f_s12],
	CONSTRAINT [DF__DBDMX3__f_s13__43A1090D] DEFAULT (0) FOR [f_s13],
	CONSTRAINT [DF__DBDMX3__f_s14__44952D46] DEFAULT (0) FOR [f_s14],
	CONSTRAINT [DF__DBDMX3__f_s15__4589517F] DEFAULT (0) FOR [f_s15],
	CONSTRAINT [DF__DBDMX3__f_s16__467D75B8] DEFAULT (0) FOR [f_s16],
	CONSTRAINT [DF__DBDMX3__f_s17__477199F1] DEFAULT (0) FOR [f_s17],
	CONSTRAINT [DF__DBDMX3__f_s18__4865BE2A] DEFAULT (0) FOR [f_s18],
	CONSTRAINT [DF__DBDMX3__f_s19__4959E263] DEFAULT (0) FOR [f_s19],
	CONSTRAINT [DF__DBDMX3__f_s20__4A4E069C] DEFAULT (0) FOR [f_s20]
GO

ALTER TABLE [dbo].[DBDMXMX] ADD 
	CONSTRAINT [DF__DBDMXMX__F_SL__4C364F0E] DEFAULT (0) FOR [F_SL]
GO

ALTER TABLE [dbo].[DBDMXMX2] ADD 
	CONSTRAINT [DF__DBDMXMX2__F_SL__4E1E9780] DEFAULT (0) FOR [F_SL]
GO

ALTER TABLE [dbo].[DBDMXMX3] ADD 
	CONSTRAINT [DF__DBDMXMX3__F_SL__5006DFF2] DEFAULT (0) FOR [F_SL]
GO

ALTER TABLE [dbo].[DBZZ] ADD 
	CONSTRAINT [DF__DBZZ__F_SLS1__51EF2864] DEFAULT (0) FOR [F_SLS1],
	CONSTRAINT [DF__DBZZ__F_SLS2__52E34C9D] DEFAULT (0) FOR [F_SLS2],
	CONSTRAINT [DF__DBZZ__F_SLS3__53D770D6] DEFAULT (0) FOR [F_SLS3],
	CONSTRAINT [DF__DBZZ__F_SLS4__54CB950F] DEFAULT (0) FOR [F_SLS4],
	CONSTRAINT [DF__DBZZ__F_SLS5__55BFB948] DEFAULT (0) FOR [F_SLS5],
	CONSTRAINT [DF__DBZZ__F_SLS6__56B3DD81] DEFAULT (0) FOR [F_SLS6],
	CONSTRAINT [DF__DBZZ__F_SLS7__57A801BA] DEFAULT (0) FOR [F_SLS7],
	CONSTRAINT [DF__DBZZ__F_SLS8__589C25F3] DEFAULT (0) FOR [F_SLS8],
	CONSTRAINT [DF__DBZZ__F_SLS9__59904A2C] DEFAULT (0) FOR [F_SLS9],
	CONSTRAINT [DF__DBZZ__F_SLS10__5A846E65] DEFAULT (0) FOR [F_SLS10],
	CONSTRAINT [DF__DBZZ__F_SLS11__5B78929E] DEFAULT (0) FOR [F_SLS11],
	CONSTRAINT [DF__DBZZ__F_SLS12__5C6CB6D7] DEFAULT (0) FOR [F_SLS12],
	CONSTRAINT [DF__DBZZ__F_JES1__5D60DB10] DEFAULT (0) FOR [F_JES1],
	CONSTRAINT [DF__DBZZ__F_JES2__5E54FF49] DEFAULT (0) FOR [F_JES2],
	CONSTRAINT [DF__DBZZ__F_JES3__5F492382] DEFAULT (0) FOR [F_JES3],
	CONSTRAINT [DF__DBZZ__F_JES4__603D47BB] DEFAULT (0) FOR [F_JES4],
	CONSTRAINT [DF__DBZZ__F_JES5__61316BF4] DEFAULT (0) FOR [F_JES5],
	CONSTRAINT [DF__DBZZ__F_JES6__6225902D] DEFAULT (0) FOR [F_JES6],
	CONSTRAINT [DF__DBZZ__F_JES7__6319B466] DEFAULT (0) FOR [F_JES7],
	CONSTRAINT [DF__DBZZ__F_JES8__640DD89F] DEFAULT (0) FOR [F_JES8],
	CONSTRAINT [DF__DBZZ__F_JES9__6501FCD8] DEFAULT (0) FOR [F_JES9],
	CONSTRAINT [DF__DBZZ__F_JES10__65F62111] DEFAULT (0) FOR [F_JES10],
	CONSTRAINT [DF__DBZZ__F_JES11__66EA454A] DEFAULT (0) FOR [F_JES11],
	CONSTRAINT [DF__DBZZ__F_JES12__67DE6983] DEFAULT (0) FOR [F_JES12],
	CONSTRAINT [DF__DBZZ__F_SLF1__68D28DBC] DEFAULT (0) FOR [F_SLF1],
	CONSTRAINT [DF__DBZZ__F_SLF2__69C6B1F5] DEFAULT (0) FOR [F_SLF2],
	CONSTRAINT [DF__DBZZ__F_SLF3__6ABAD62E] DEFAULT (0) FOR [F_SLF3],
	CONSTRAINT [DF__DBZZ__F_SLF4__6BAEFA67] DEFAULT (0) FOR [F_SLF4],
	CONSTRAINT [DF__DBZZ__F_SLF5__6CA31EA0] DEFAULT (0) FOR [F_SLF5],
	CONSTRAINT [DF__DBZZ__F_SLF6__6D9742D9] DEFAULT (0) FOR [F_SLF6],
	CONSTRAINT [DF__DBZZ__F_SLF7__6E8B6712] DEFAULT (0) FOR [F_SLF7],
	CONSTRAINT [DF__DBZZ__F_SLF8__6F7F8B4B] DEFAULT (0) FOR [F_SLF8],
	CONSTRAINT [DF__DBZZ__F_SLF9__7073AF84] DEFAULT (0) FOR [F_SLF9],
	CONSTRAINT [DF__DBZZ__F_SLF10__7167D3BD] DEFAULT (0) FOR [F_SLF10],
	CONSTRAINT [DF__DBZZ__F_SLF11__725BF7F6] DEFAULT (0) FOR [F_SLF11],
	CONSTRAINT [DF__DBZZ__F_SLF12__73501C2F] DEFAULT (0) FOR [F_SLF12],
	CONSTRAINT [DF__DBZZ__F_JEF1__74444068] DEFAULT (0) FOR [F_JEF1],
	CONSTRAINT [DF__DBZZ__F_JEF2__753864A1] DEFAULT (0) FOR [F_JEF2],
	CONSTRAINT [DF__DBZZ__F_JEF3__762C88DA] DEFAULT (0) FOR [F_JEF3],
	CONSTRAINT [DF__DBZZ__F_JEF4__7720AD13] DEFAULT (0) FOR [F_JEF4],
	CONSTRAINT [DF__DBZZ__F_JEF5__7814D14C] DEFAULT (0) FOR [F_JEF5],
	CONSTRAINT [DF__DBZZ__F_JEF6__7908F585] DEFAULT (0) FOR [F_JEF6],
	CONSTRAINT [DF__DBZZ__F_JEF7__79FD19BE] DEFAULT (0) FOR [F_JEF7],
	CONSTRAINT [DF__DBZZ__F_JEF8__7AF13DF7] DEFAULT (0) FOR [F_JEF8],
	CONSTRAINT [DF__DBZZ__F_JEF9__7BE56230] DEFAULT (0) FOR [F_JEF9],
	CONSTRAINT [DF__DBZZ__F_JEF10__7CD98669] DEFAULT (0) FOR [F_JEF10],
	CONSTRAINT [DF__DBZZ__F_JEF11__7DCDAAA2] DEFAULT (0) FOR [F_JEF11],
	CONSTRAINT [DF__DBZZ__F_JEF12__7EC1CEDB] DEFAULT (0) FOR [F_JEF12]
GO

ALTER TABLE [dbo].[DHDMX] ADD 
	CONSTRAINT [DF__DHDMX__F_SL__047AA831] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__DHDMX__F_DJ__056ECC6A] DEFAULT (0) FOR [F_DJ],
	CONSTRAINT [DF__DHDMX__F_KL__0662F0A3] DEFAULT (0) FOR [F_KL],
	CONSTRAINT [DF__DHDMX__F_JE__075714DC] DEFAULT (0) FOR [F_JE],
	CONSTRAINT [DF__DHDMX__F_SLV__084B3915] DEFAULT (0) FOR [F_SLV],
	CONSTRAINT [DF__DHDMX__F_SE__093F5D4E] DEFAULT (0) FOR [F_SE],
	CONSTRAINT [DF__DHDMX__F_CB__0A338187] DEFAULT (0) FOR [F_CB],
	CONSTRAINT [DF__DHDMX__F_HJ__0B27A5C0] DEFAULT (0) FOR [F_HJ],
	CONSTRAINT [DF__DHDMX__F_UN__0C1BC9F9] DEFAULT (0) FOR [F_UN]
GO

ALTER TABLE [dbo].[DHDMX2] ADD 
	CONSTRAINT [DF__DHDMX2__F_SL__0E04126B] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__DHDMX2__F_DJ__0EF836A4] DEFAULT (0) FOR [F_DJ],
	CONSTRAINT [DF__DHDMX2__F_KL__0FEC5ADD] DEFAULT (0) FOR [F_KL],
	CONSTRAINT [DF__DHDMX2__F_JE__10E07F16] DEFAULT (0) FOR [F_JE],
	CONSTRAINT [DF__DHDMX2__F_SLV__11D4A34F] DEFAULT (0) FOR [F_SLV],
	CONSTRAINT [DF__DHDMX2__F_SE__12C8C788] DEFAULT (0) FOR [F_SE],
	CONSTRAINT [DF__DHDMX2__F_CB__13BCEBC1] DEFAULT (0) FOR [F_CB],
	CONSTRAINT [DF__DHDMX2__F_HJ__14B10FFA] DEFAULT (0) FOR [F_HJ]
GO

ALTER TABLE [dbo].[DJH] ADD 
	CONSTRAINT [DF__DJH__F_JHD__178D7CA5] DEFAULT (0) FOR [F_JHD],
	CONSTRAINT [DF__DJH__F_XHD__1881A0DE] DEFAULT (0) FOR [F_XHD],
	CONSTRAINT [DF__DJH__F_CGD__1975C517] DEFAULT (0) FOR [F_CGD],
	CONSTRAINT [DF__DJH__F_RKD__1A69E950] DEFAULT (0) FOR [F_RKD],
	CONSTRAINT [DF__DJH__F_CKD__1B5E0D89] DEFAULT (0) FOR [F_CKD],
	CONSTRAINT [DF__DJH__F_DBD__1C5231C2] DEFAULT (0) FOR [F_DBD],
	CONSTRAINT [DF__DJH__F_XSBB__1D4655FB] DEFAULT (0) FOR [F_XSBB],
	CONSTRAINT [DF__DJH__F_PC__1E3A7A34] DEFAULT (0) FOR [F_PC],
	CONSTRAINT [DF__DJH__F_YSJSD__1F2E9E6D] DEFAULT (0) FOR [F_YSJSD],
	CONSTRAINT [DF__DJH__F_YFJSD__2022C2A6] DEFAULT (0) FOR [F_YFJSD],
	CONSTRAINT [DF__DJH__F_ZZD__2116E6DF] DEFAULT (0) FOR [F_ZZD],
	CONSTRAINT [DF__DJH__F_TJD__220B0B18] DEFAULT (0) FOR [F_TJD],
	CONSTRAINT [DF__DJH__F_PSD__22FF2F51] DEFAULT (0) FOR [F_PSD],
	CONSTRAINT [DF__DJH__f_jiez__23F3538A] DEFAULT (0) FOR [f_jiez],
	CONSTRAINT [DF__DJH__f_dhd__24E777C3] DEFAULT (0) FOR [f_dhd],
	CONSTRAINT [DF__DJH__f_cx__25DB9BFC] DEFAULT (0) FOR [f_cx]
GO

ALTER TABLE [dbo].[EVENT] ADD 
	CONSTRAINT [DF__EVENT__f_conditi__29AC2CE0] DEFAULT ('') FOR [f_condition],
	CONSTRAINT [DF__EVENT__f_hint__2AA05119] DEFAULT ('') FOR [f_hint]
GO

ALTER TABLE [dbo].[FPCOL] ADD 
	CONSTRAINT [DF__FPCOL__F_ALIGNME__2D7CBDC4] DEFAULT ((-1)) FOR [F_ALIGNMENT]
GO

ALTER TABLE [dbo].[FZZZ] ADD 
	CONSTRAINT [DF__FZZZ__F_SL0__314D4EA8] DEFAULT (0) FOR [F_SL0],
	CONSTRAINT [DF__FZZZ__F_SLS1__324172E1] DEFAULT (0) FOR [F_SLS1],
	CONSTRAINT [DF__FZZZ__F_SLS2__3335971A] DEFAULT (0) FOR [F_SLS2],
	CONSTRAINT [DF__FZZZ__F_SLS3__3429BB53] DEFAULT (0) FOR [F_SLS3],
	CONSTRAINT [DF__FZZZ__F_SLS4__351DDF8C] DEFAULT (0) FOR [F_SLS4],
	CONSTRAINT [DF__FZZZ__F_SLS5__361203C5] DEFAULT (0) FOR [F_SLS5],
	CONSTRAINT [DF__FZZZ__F_SLS6__370627FE] DEFAULT (0) FOR [F_SLS6],
	CONSTRAINT [DF__FZZZ__F_SLS7__37FA4C37] DEFAULT (0) FOR [F_SLS7],
	CONSTRAINT [DF__FZZZ__F_SLS8__38EE7070] DEFAULT (0) FOR [F_SLS8],
	CONSTRAINT [DF__FZZZ__F_SLS9__39E294A9] DEFAULT (0) FOR [F_SLS9],
	CONSTRAINT [DF__FZZZ__F_SLS10__3AD6B8E2] DEFAULT (0) FOR [F_SLS10],
	CONSTRAINT [DF__FZZZ__F_SLS11__3BCADD1B] DEFAULT (0) FOR [F_SLS11],
	CONSTRAINT [DF__FZZZ__F_SLS12__3CBF0154] DEFAULT (0) FOR [F_SLS12],
	CONSTRAINT [DF__FZZZ__F_SLF1__3DB3258D] DEFAULT (0) FOR [F_SLF1],
	CONSTRAINT [DF__FZZZ__F_SLF2__3EA749C6] DEFAULT (0) FOR [F_SLF2],
	CONSTRAINT [DF__FZZZ__F_SLF3__3F9B6DFF] DEFAULT (0) FOR [F_SLF3],
	CONSTRAINT [DF__FZZZ__F_SLF4__408F9238] DEFAULT (0) FOR [F_SLF4],
	CONSTRAINT [DF__FZZZ__F_SLF5__4183B671] DEFAULT (0) FOR [F_SLF5],
	CONSTRAINT [DF__FZZZ__F_SLF6__4277DAAA] DEFAULT (0) FOR [F_SLF6],
	CONSTRAINT [DF__FZZZ__F_SLF7__436BFEE3] DEFAULT (0) FOR [F_SLF7],
	CONSTRAINT [DF__FZZZ__F_SLF8__4460231C] DEFAULT (0) FOR [F_SLF8],
	CONSTRAINT [DF__FZZZ__F_SLF9__45544755] DEFAULT (0) FOR [F_SLF9],
	CONSTRAINT [DF__FZZZ__F_SLF10__46486B8E] DEFAULT (0) FOR [F_SLF10],
	CONSTRAINT [DF__FZZZ__F_SLF11__473C8FC7] DEFAULT (0) FOR [F_SLF11],
	CONSTRAINT [DF__FZZZ__F_SLF12__4830B400] DEFAULT (0) FOR [F_SLF12],
	CONSTRAINT [DF__FZZZ__F_SLYE__4924D839] DEFAULT (0) FOR [F_SLYE]
GO

ALTER TABLE [dbo].[HW] ADD 
	CONSTRAINT [DF__HW__f_local__4B0D20AB] DEFAULT ('') FOR [f_local]
GO

ALTER TABLE [dbo].[JGZZ] ADD 
	CONSTRAINT [DF__JGZZ__F_SLS1__4DE98D56] DEFAULT (0) FOR [F_SLS1],
	CONSTRAINT [DF__JGZZ__F_SLS2__4EDDB18F] DEFAULT (0) FOR [F_SLS2],
	CONSTRAINT [DF__JGZZ__F_SLS3__4FD1D5C8] DEFAULT (0) FOR [F_SLS3],
	CONSTRAINT [DF__JGZZ__F_SLS4__50C5FA01] DEFAULT (0) FOR [F_SLS4],
	CONSTRAINT [DF__JGZZ__F_SLS5__51BA1E3A] DEFAULT (0) FOR [F_SLS5],
	CONSTRAINT [DF__JGZZ__F_SLS6__52AE4273] DEFAULT (0) FOR [F_SLS6],
	CONSTRAINT [DF__JGZZ__F_SLS7__53A266AC] DEFAULT (0) FOR [F_SLS7],
	CONSTRAINT [DF__JGZZ__F_SLS8__54968AE5] DEFAULT (0) FOR [F_SLS8],
	CONSTRAINT [DF__JGZZ__F_SLS9__558AAF1E] DEFAULT (0) FOR [F_SLS9],
	CONSTRAINT [DF__JGZZ__F_SLS10__567ED357] DEFAULT (0) FOR [F_SLS10],
	CONSTRAINT [DF__JGZZ__F_SLS11__5772F790] DEFAULT (0) FOR [F_SLS11],
	CONSTRAINT [DF__JGZZ__F_SLS12__58671BC9] DEFAULT (0) FOR [F_SLS12],
	CONSTRAINT [DF__JGZZ__F_JES1__595B4002] DEFAULT (0) FOR [F_JES1],
	CONSTRAINT [DF__JGZZ__F_JES2__5A4F643B] DEFAULT (0) FOR [F_JES2],
	CONSTRAINT [DF__JGZZ__F_JES3__5B438874] DEFAULT (0) FOR [F_JES3],
	CONSTRAINT [DF__JGZZ__F_JES4__5C37ACAD] DEFAULT (0) FOR [F_JES4],
	CONSTRAINT [DF__JGZZ__F_JES5__5D2BD0E6] DEFAULT (0) FOR [F_JES5],
	CONSTRAINT [DF__JGZZ__F_JES6__5E1FF51F] DEFAULT (0) FOR [F_JES6],
	CONSTRAINT [DF__JGZZ__F_JES7__5F141958] DEFAULT (0) FOR [F_JES7],
	CONSTRAINT [DF__JGZZ__F_JES8__60083D91] DEFAULT (0) FOR [F_JES8],
	CONSTRAINT [DF__JGZZ__F_JES9__60FC61CA] DEFAULT (0) FOR [F_JES9],
	CONSTRAINT [DF__JGZZ__F_JES10__61F08603] DEFAULT (0) FOR [F_JES10],
	CONSTRAINT [DF__JGZZ__F_JES11__62E4AA3C] DEFAULT (0) FOR [F_JES11],
	CONSTRAINT [DF__JGZZ__F_JES12__63D8CE75] DEFAULT (0) FOR [F_JES12],
	CONSTRAINT [DF__JGZZ__F_SLF1__64CCF2AE] DEFAULT (0) FOR [F_SLF1],
	CONSTRAINT [DF__JGZZ__F_SLF2__65C116E7] DEFAULT (0) FOR [F_SLF2],
	CONSTRAINT [DF__JGZZ__F_SLF3__66B53B20] DEFAULT (0) FOR [F_SLF3],
	CONSTRAINT [DF__JGZZ__F_SLF4__67A95F59] DEFAULT (0) FOR [F_SLF4],
	CONSTRAINT [DF__JGZZ__F_SLF5__689D8392] DEFAULT (0) FOR [F_SLF5],
	CONSTRAINT [DF__JGZZ__F_SLF6__6991A7CB] DEFAULT (0) FOR [F_SLF6],
	CONSTRAINT [DF__JGZZ__F_SLF7__6A85CC04] DEFAULT (0) FOR [F_SLF7],
	CONSTRAINT [DF__JGZZ__F_SLF8__6B79F03D] DEFAULT (0) FOR [F_SLF8],
	CONSTRAINT [DF__JGZZ__F_SLF9__6C6E1476] DEFAULT (0) FOR [F_SLF9],
	CONSTRAINT [DF__JGZZ__F_SLF10__6D6238AF] DEFAULT (0) FOR [F_SLF10],
	CONSTRAINT [DF__JGZZ__F_SLF11__6E565CE8] DEFAULT (0) FOR [F_SLF11],
	CONSTRAINT [DF__JGZZ__F_SLF12__6F4A8121] DEFAULT (0) FOR [F_SLF12],
	CONSTRAINT [DF__JGZZ__F_JEF1__703EA55A] DEFAULT (0) FOR [F_JEF1],
	CONSTRAINT [DF__JGZZ__F_JEF2__7132C993] DEFAULT (0) FOR [F_JEF2],
	CONSTRAINT [DF__JGZZ__F_JEF3__7226EDCC] DEFAULT (0) FOR [F_JEF3],
	CONSTRAINT [DF__JGZZ__F_JEF4__731B1205] DEFAULT (0) FOR [F_JEF4],
	CONSTRAINT [DF__JGZZ__F_JEF5__740F363E] DEFAULT (0) FOR [F_JEF5],
	CONSTRAINT [DF__JGZZ__F_JEF6__75035A77] DEFAULT (0) FOR [F_JEF6],
	CONSTRAINT [DF__JGZZ__F_JEF7__75F77EB0] DEFAULT (0) FOR [F_JEF7],
	CONSTRAINT [DF__JGZZ__F_JEF8__76EBA2E9] DEFAULT (0) FOR [F_JEF8],
	CONSTRAINT [DF__JGZZ__F_JEF9__77DFC722] DEFAULT (0) FOR [F_JEF9],
	CONSTRAINT [DF__JGZZ__F_JEF10__78D3EB5B] DEFAULT (0) FOR [F_JEF10],
	CONSTRAINT [DF__JGZZ__F_JEF11__79C80F94] DEFAULT (0) FOR [F_JEF11],
	CONSTRAINT [DF__JGZZ__F_JEF12__7ABC33CD] DEFAULT (0) FOR [F_JEF12]
GO

ALTER TABLE [dbo].[JHBB] ADD 
	CONSTRAINT [DF__JHBB__F_ROWS__7CA47C3F] DEFAULT (35) FOR [F_ROWS],
	CONSTRAINT [DF__JHBB__F_SIZE__7D98A078] DEFAULT (39) FOR [F_SIZE],
	CONSTRAINT [DF__JHBB__F_LENGTH__7E8CC4B1] DEFAULT (2794) FOR [F_LENGTH],
	CONSTRAINT [DF__JHBB__F_WIDTH__7F80E8EA] DEFAULT (3734) FOR [F_WIDTH],
	CONSTRAINT [DF__JHBB__F_ORIENT__00750D23] DEFAULT (1) FOR [F_ORIENT],
	CONSTRAINT [DF__JHBB__F_HZ__0169315C] DEFAULT (0) FOR [F_HZ],
	CONSTRAINT [DF__JHBB__F_TITLEFON__025D5595] DEFAULT ('宋体,18,1000') FOR [F_TITLEFONT],
	CONSTRAINT [DF__JHBB__F_BBFONT__035179CE] DEFAULT ('宋体,10,0000') FOR [F_BBFONT],
	CONSTRAINT [DF__JHBB__F_COLNUMBE__04459E07] DEFAULT (7) FOR [F_COLNUMBER],
	CONSTRAINT [DF__JHBB__F_COLCAPTI__0539C240] DEFAULT ('代码,名称,单位,进货数量,进货金额,进货税额,价税合计,') FOR [F_COLCAPTION],
	CONSTRAINT [DF__JHBB__F_COLWIDTH__062DE679] DEFAULT ('7,15,3,7,7,7,7,') FOR [F_COLWIDTH]
GO

ALTER TABLE [dbo].[JHD] ADD 
	CONSTRAINT [DF__JHD__F_JS__08162EEB] DEFAULT (0) FOR [F_JS],
	CONSTRAINT [DF__JHD__f_fpxz__090A5324] DEFAULT ('') FOR [f_fpxz]
GO

ALTER TABLE [dbo].[JHD2] ADD 
	CONSTRAINT [DF__JHD2__F_JS__0AF29B96] DEFAULT (0) FOR [F_JS],
	CONSTRAINT [DF__JHD2__f_fpxz__0BE6BFCF] DEFAULT ('') FOR [f_fpxz]
GO

ALTER TABLE [dbo].[JHDMX] ADD 
	CONSTRAINT [DF__JHDMX__F_SL__0EC32C7A] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__JHDMX__F_DJ__0FB750B3] DEFAULT (0) FOR [F_DJ],
	CONSTRAINT [DF__JHDMX__F_JE__10AB74EC] DEFAULT (0) FOR [F_JE],
	CONSTRAINT [DF__JHDMX__F_SLV__119F9925] DEFAULT (0) FOR [F_SLV],
	CONSTRAINT [DF__JHDMX__F_SE__1293BD5E] DEFAULT (0) FOR [F_SE],
	CONSTRAINT [DF__JHDMX__F_HJ__1387E197] DEFAULT (0) FOR [F_HJ],
	CONSTRAINT [DF__JHDMX__F_UN__147C05D0] DEFAULT (0) FOR [F_UN],
	CONSTRAINT [DF__JHDMX__f_hsdj__15702A09] DEFAULT (0) FOR [f_hsdj],
	CONSTRAINT [DF__JHDMX__f_kl__16644E42] DEFAULT (0) FOR [f_kl],
	CONSTRAINT [DF__JHDMX__f_color__1758727B] DEFAULT ('') FOR [f_color],
	CONSTRAINT [DF__JHDMX__f_s1__184C96B4] DEFAULT (0) FOR [f_s1],
	CONSTRAINT [DF__JHDMX__f_s2__1940BAED] DEFAULT (0) FOR [f_s2],
	CONSTRAINT [DF__JHDMX__f_s3__1A34DF26] DEFAULT (0) FOR [f_s3],
	CONSTRAINT [DF__JHDMX__f_s4__1B29035F] DEFAULT (0) FOR [f_s4],
	CONSTRAINT [DF__JHDMX__f_s5__1C1D2798] DEFAULT (0) FOR [f_s5],
	CONSTRAINT [DF__JHDMX__f_s6__1D114BD1] DEFAULT (0) FOR [f_s6],
	CONSTRAINT [DF__JHDMX__f_s7__1E05700A] DEFAULT (0) FOR [f_s7],
	CONSTRAINT [DF__JHDMX__f_s8__1EF99443] DEFAULT (0) FOR [f_s8],
	CONSTRAINT [DF__JHDMX__f_s9__1FEDB87C] DEFAULT (0) FOR [f_s9],
	CONSTRAINT [DF__JHDMX__f_s10__20E1DCB5] DEFAULT (0) FOR [f_s10],
	CONSTRAINT [DF__JHDMX__f_s11__21D600EE] DEFAULT (0) FOR [f_s11],
	CONSTRAINT [DF__JHDMX__f_s12__22CA2527] DEFAULT (0) FOR [f_s12],
	CONSTRAINT [DF__JHDMX__f_s13__23BE4960] DEFAULT (0) FOR [f_s13],
	CONSTRAINT [DF__JHDMX__f_s14__24B26D99] DEFAULT (0) FOR [f_s14],
	CONSTRAINT [DF__JHDMX__f_s15__25A691D2] DEFAULT (0) FOR [f_s15],
	CONSTRAINT [DF__JHDMX__f_s16__269AB60B] DEFAULT (0) FOR [f_s16],
	CONSTRAINT [DF__JHDMX__f_s17__278EDA44] DEFAULT (0) FOR [f_s17],
	CONSTRAINT [DF__JHDMX__f_s18__2882FE7D] DEFAULT (0) FOR [f_s18],
	CONSTRAINT [DF__JHDMX__f_s19__297722B6] DEFAULT (0) FOR [f_s19],
	CONSTRAINT [DF__JHDMX__f_s20__2A6B46EF] DEFAULT (0) FOR [f_s20]
GO

ALTER TABLE [dbo].[JHDMX2] ADD 
	CONSTRAINT [DF__JHDMX2__F_SL__2C538F61] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__JHDMX2__F_DJ__2D47B39A] DEFAULT (0) FOR [F_DJ],
	CONSTRAINT [DF__JHDMX2__F_JE__2E3BD7D3] DEFAULT (0) FOR [F_JE],
	CONSTRAINT [DF__JHDMX2__F_SLV__2F2FFC0C] DEFAULT (0) FOR [F_SLV],
	CONSTRAINT [DF__JHDMX2__F_SE__30242045] DEFAULT (0) FOR [F_SE],
	CONSTRAINT [DF__JHDMX2__F_HJ__3118447E] DEFAULT (0) FOR [F_HJ],
	CONSTRAINT [DF__JHDMX2__F_UN__320C68B7] DEFAULT (0) FOR [F_UN],
	CONSTRAINT [DF__JHDMX2__f_hsdj__33008CF0] DEFAULT (0) FOR [f_hsdj],
	CONSTRAINT [DF__JHDMX2__f_kl__33F4B129] DEFAULT (0) FOR [f_kl],
	CONSTRAINT [DF__JHDMX2__f_color__34E8D562] DEFAULT ('') FOR [f_color],
	CONSTRAINT [DF__JHDMX2__f_s1__35DCF99B] DEFAULT (0) FOR [f_s1],
	CONSTRAINT [DF__JHDMX2__f_s2__36D11DD4] DEFAULT (0) FOR [f_s2],
	CONSTRAINT [DF__JHDMX2__f_s3__37C5420D] DEFAULT (0) FOR [f_s3],
	CONSTRAINT [DF__JHDMX2__f_s4__38B96646] DEFAULT (0) FOR [f_s4],
	CONSTRAINT [DF__JHDMX2__f_s5__39AD8A7F] DEFAULT (0) FOR [f_s5],
	CONSTRAINT [DF__JHDMX2__f_s6__3AA1AEB8] DEFAULT (0) FOR [f_s6],
	CONSTRAINT [DF__JHDMX2__f_s7__3B95D2F1] DEFAULT (0) FOR [f_s7],
	CONSTRAINT [DF__JHDMX2__f_s8__3C89F72A] DEFAULT (0) FOR [f_s8],
	CONSTRAINT [DF__JHDMX2__f_s9__3D7E1B63] DEFAULT (0) FOR [f_s9],
	CONSTRAINT [DF__JHDMX2__f_s10__3E723F9C] DEFAULT (0) FOR [f_s10],
	CONSTRAINT [DF__JHDMX2__f_s11__3F6663D5] DEFAULT (0) FOR [f_s11],
	CONSTRAINT [DF__JHDMX2__f_s12__405A880E] DEFAULT (0) FOR [f_s12],
	CONSTRAINT [DF__JHDMX2__f_s13__414EAC47] DEFAULT (0) FOR [f_s13],
	CONSTRAINT [DF__JHDMX2__f_s14__4242D080] DEFAULT (0) FOR [f_s14],
	CONSTRAINT [DF__JHDMX2__f_s15__4336F4B9] DEFAULT (0) FOR [f_s15],
	CONSTRAINT [DF__JHDMX2__f_s16__442B18F2] DEFAULT (0) FOR [f_s16],
	CONSTRAINT [DF__JHDMX2__f_s17__451F3D2B] DEFAULT (0) FOR [f_s17],
	CONSTRAINT [DF__JHDMX2__f_s18__46136164] DEFAULT (0) FOR [f_s18],
	CONSTRAINT [DF__JHDMX2__f_s19__4707859D] DEFAULT (0) FOR [f_s19],
	CONSTRAINT [DF__JHDMX2__f_s20__47FBA9D6] DEFAULT (0) FOR [f_s20]
GO

ALTER TABLE [dbo].[JHDMX3] ADD 
	CONSTRAINT [DF__JHDMX3__F_SL__49E3F248] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__JHDMX3__F_DJ__4AD81681] DEFAULT (0) FOR [F_DJ],
	CONSTRAINT [DF__JHDMX3__F_JE__4BCC3ABA] DEFAULT (0) FOR [F_JE],
	CONSTRAINT [DF__JHDMX3__F_SLV__4CC05EF3] DEFAULT (0) FOR [F_SLV],
	CONSTRAINT [DF__JHDMX3__F_SE__4DB4832C] DEFAULT (0) FOR [F_SE],
	CONSTRAINT [DF__JHDMX3__F_HJ__4EA8A765] DEFAULT (0) FOR [F_HJ],
	CONSTRAINT [DF__JHDMX3__F_UN__4F9CCB9E] DEFAULT (0) FOR [F_UN],
	CONSTRAINT [DF__JHDMX3__f_hsdj__5090EFD7] DEFAULT (0) FOR [f_hsdj],
	CONSTRAINT [DF__JHDMX3__f_kl__51851410] DEFAULT (0) FOR [f_kl],
	CONSTRAINT [DF__JHDMX3__f_color__52793849] DEFAULT ('') FOR [f_color],
	CONSTRAINT [DF__JHDMX3__f_s1__536D5C82] DEFAULT (0) FOR [f_s1],
	CONSTRAINT [DF__JHDMX3__f_s2__546180BB] DEFAULT (0) FOR [f_s2],
	CONSTRAINT [DF__JHDMX3__f_s3__5555A4F4] DEFAULT (0) FOR [f_s3],
	CONSTRAINT [DF__JHDMX3__f_s4__5649C92D] DEFAULT (0) FOR [f_s4],
	CONSTRAINT [DF__JHDMX3__f_s5__573DED66] DEFAULT (0) FOR [f_s5],
	CONSTRAINT [DF__JHDMX3__f_s6__5832119F] DEFAULT (0) FOR [f_s6],
	CONSTRAINT [DF__JHDMX3__f_s7__592635D8] DEFAULT (0) FOR [f_s7],
	CONSTRAINT [DF__JHDMX3__f_s8__5A1A5A11] DEFAULT (0) FOR [f_s8],
	CONSTRAINT [DF__JHDMX3__f_s9__5B0E7E4A] DEFAULT (0) FOR [f_s9],
	CONSTRAINT [DF__JHDMX3__f_s10__5C02A283] DEFAULT (0) FOR [f_s10],
	CONSTRAINT [DF__JHDMX3__f_s11__5CF6C6BC] DEFAULT (0) FOR [f_s11],
	CONSTRAINT [DF__JHDMX3__f_s12__5DEAEAF5] DEFAULT (0) FOR [f_s12],
	CONSTRAINT [DF__JHDMX3__f_s13__5EDF0F2E] DEFAULT (0) FOR [f_s13],
	CONSTRAINT [DF__JHDMX3__f_s14__5FD33367] DEFAULT (0) FOR [f_s14],
	CONSTRAINT [DF__JHDMX3__f_s15__60C757A0] DEFAULT (0) FOR [f_s15],
	CONSTRAINT [DF__JHDMX3__f_s16__61BB7BD9] DEFAULT (0) FOR [f_s16],
	CONSTRAINT [DF__JHDMX3__f_s17__62AFA012] DEFAULT (0) FOR [f_s17],
	CONSTRAINT [DF__JHDMX3__f_s18__63A3C44B] DEFAULT (0) FOR [f_s18],
	CONSTRAINT [DF__JHDMX3__f_s19__6497E884] DEFAULT (0) FOR [f_s19],
	CONSTRAINT [DF__JHDMX3__f_s20__658C0CBD] DEFAULT (0) FOR [f_s20]
GO

ALTER TABLE [dbo].[JHDMXMX] ADD 
	CONSTRAINT [DF__JHDMXMX__F_SL__6774552F] DEFAULT (0) FOR [F_SL]
GO

ALTER TABLE [dbo].[JHDMXMX2] ADD 
	CONSTRAINT [DF__JHDMXMX2__F_SL__695C9DA1] DEFAULT (0) FOR [F_SL]
GO

ALTER TABLE [dbo].[JHDMXMX3] ADD 
	CONSTRAINT [DF__JHDMXMX3__F_SL__6B44E613] DEFAULT (0) FOR [F_SL]
GO

ALTER TABLE [dbo].[JHZZ] ADD 
	CONSTRAINT [DF__JHZZ__F_SL1__6D2D2E85] DEFAULT (0) FOR [F_SL1],
	CONSTRAINT [DF__JHZZ__F_SL2__6E2152BE] DEFAULT (0) FOR [F_SL2],
	CONSTRAINT [DF__JHZZ__F_SL3__6F1576F7] DEFAULT (0) FOR [F_SL3],
	CONSTRAINT [DF__JHZZ__F_SL4__70099B30] DEFAULT (0) FOR [F_SL4],
	CONSTRAINT [DF__JHZZ__F_SL5__70FDBF69] DEFAULT (0) FOR [F_SL5],
	CONSTRAINT [DF__JHZZ__F_SL6__71F1E3A2] DEFAULT (0) FOR [F_SL6],
	CONSTRAINT [DF__JHZZ__F_SL7__72E607DB] DEFAULT (0) FOR [F_SL7],
	CONSTRAINT [DF__JHZZ__F_SL8__73DA2C14] DEFAULT (0) FOR [F_SL8],
	CONSTRAINT [DF__JHZZ__F_SL9__74CE504D] DEFAULT (0) FOR [F_SL9],
	CONSTRAINT [DF__JHZZ__F_SL10__75C27486] DEFAULT (0) FOR [F_SL10],
	CONSTRAINT [DF__JHZZ__F_SL11__76B698BF] DEFAULT (0) FOR [F_SL11],
	CONSTRAINT [DF__JHZZ__F_SL12__77AABCF8] DEFAULT (0) FOR [F_SL12],
	CONSTRAINT [DF__JHZZ__F_JE1__789EE131] DEFAULT (0) FOR [F_JE1],
	CONSTRAINT [DF__JHZZ__F_JE2__7993056A] DEFAULT (0) FOR [F_JE2],
	CONSTRAINT [DF__JHZZ__F_JE3__7A8729A3] DEFAULT (0) FOR [F_JE3],
	CONSTRAINT [DF__JHZZ__F_JE4__7B7B4DDC] DEFAULT (0) FOR [F_JE4],
	CONSTRAINT [DF__JHZZ__F_JE5__7C6F7215] DEFAULT (0) FOR [F_JE5],
	CONSTRAINT [DF__JHZZ__F_JE6__7D63964E] DEFAULT (0) FOR [F_JE6],
	CONSTRAINT [DF__JHZZ__F_JE7__7E57BA87] DEFAULT (0) FOR [F_JE7],
	CONSTRAINT [DF__JHZZ__F_JE8__7F4BDEC0] DEFAULT (0) FOR [F_JE8],
	CONSTRAINT [DF__JHZZ__F_JE9__004002F9] DEFAULT (0) FOR [F_JE9],
	CONSTRAINT [DF__JHZZ__F_JE10__01342732] DEFAULT (0) FOR [F_JE10],
	CONSTRAINT [DF__JHZZ__F_JE11__02284B6B] DEFAULT (0) FOR [F_JE11],
	CONSTRAINT [DF__JHZZ__F_JE12__031C6FA4] DEFAULT (0) FOR [F_JE12],
	CONSTRAINT [DF__JHZZ__F_SE1__041093DD] DEFAULT (0) FOR [F_SE1],
	CONSTRAINT [DF__JHZZ__F_SE2__0504B816] DEFAULT (0) FOR [F_SE2],
	CONSTRAINT [DF__JHZZ__F_SE3__05F8DC4F] DEFAULT (0) FOR [F_SE3],
	CONSTRAINT [DF__JHZZ__F_SE4__06ED0088] DEFAULT (0) FOR [F_SE4],
	CONSTRAINT [DF__JHZZ__F_SE5__07E124C1] DEFAULT (0) FOR [F_SE5],
	CONSTRAINT [DF__JHZZ__F_SE6__08D548FA] DEFAULT (0) FOR [F_SE6],
	CONSTRAINT [DF__JHZZ__F_SE7__09C96D33] DEFAULT (0) FOR [F_SE7],
	CONSTRAINT [DF__JHZZ__F_SE8__0ABD916C] DEFAULT (0) FOR [F_SE8],
	CONSTRAINT [DF__JHZZ__F_SE9__0BB1B5A5] DEFAULT (0) FOR [F_SE9],
	CONSTRAINT [DF__JHZZ__F_SE10__0CA5D9DE] DEFAULT (0) FOR [F_SE10],
	CONSTRAINT [DF__JHZZ__F_SE11__0D99FE17] DEFAULT (0) FOR [F_SE11],
	CONSTRAINT [DF__JHZZ__F_SE12__0E8E2250] DEFAULT (0) FOR [F_SE12]
GO

ALTER TABLE [dbo].[JXCBB2] ADD 
	CONSTRAINT [DF__JXCBB2__F_TOP__125EB334] DEFAULT (20) FOR [F_TOP],
	CONSTRAINT [DF__JXCBB2__F_LEFT__1352D76D] DEFAULT (20) FOR [F_LEFT],
	CONSTRAINT [DF__JXCBB2__F_ROWS__1446FBA6] DEFAULT (40) FOR [F_ROWS],
	CONSTRAINT [DF__JXCBB2__F_SIZE__153B1FDF] DEFAULT (39) FOR [F_SIZE],
	CONSTRAINT [DF__JXCBB2__F_LENGTH__162F4418] DEFAULT (1379) FOR [F_LENGTH],
	CONSTRAINT [DF__JXCBB2__F_WIDTH__17236851] DEFAULT (3937) FOR [F_WIDTH],
	CONSTRAINT [DF__JXCBB2__F_ORIENT__18178C8A] DEFAULT (1) FOR [F_ORIENT],
	CONSTRAINT [DF__JXCBB2__F_TITLEF__190BB0C3] DEFAULT ('宋体,18,0000') FOR [F_TITLEFONT],
	CONSTRAINT [DF__JXCBB2__F_BBFONT__19FFD4FC] DEFAULT ('宋体,10,0000') FOR [F_BBFONT],
	CONSTRAINT [DF__JXCBB2__f_rowspa__1AF3F935] DEFAULT (1) FOR [f_rowspace]
GO

ALTER TABLE [dbo].[KCMXZ] ADD 
	CONSTRAINT [DF__KCMXZ__F_SLS__21A0F6C4] DEFAULT (0) FOR [F_SLS],
	CONSTRAINT [DF__KCMXZ__F_JES__22951AFD] DEFAULT (0) FOR [F_JES],
	CONSTRAINT [DF__KCMXZ__F_SLF__23893F36] DEFAULT (0) FOR [F_SLF],
	CONSTRAINT [DF__KCMXZ__F_JEF__247D636F] DEFAULT (0) FOR [F_JEF],
	CONSTRAINT [DF__KCMXZ__f_hc__257187A8] DEFAULT (0) FOR [f_hc]
GO

 CREATE  INDEX [kcmxz_date] ON [dbo].[KCMXZ]([F_DATE]) ON [PRIMARY]
GO

 CREATE  INDEX [kcmxz_djh] ON [dbo].[KCMXZ]([F_DJH]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[KCMXZMX] ADD 
	CONSTRAINT [DF__KCMXZMX__F_SLS__2759D01A] DEFAULT (0) FOR [F_SLS],
	CONSTRAINT [DF__KCMXZMX__F_SLF__284DF453] DEFAULT (0) FOR [F_SLF],
	CONSTRAINT [DF__KCMXZMX__F_CX__2942188C] DEFAULT (0) FOR [F_CX]
GO

 CREATE  INDEX [kcmxzMX_COLOR] ON [dbo].[KCMXZMX]([F_COLOR]) ON [PRIMARY]
GO

 CREATE  INDEX [kcmxzMX_date] ON [dbo].[KCMXZMX]([F_DATE]) ON [PRIMARY]
GO

 CREATE  INDEX [kcmxzMX_djh] ON [dbo].[KCMXZMX]([F_DJH]) ON [PRIMARY]
GO

 CREATE  INDEX [kcmxzMX_SIZE] ON [dbo].[KCMXZMX]([F_SIZE]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[KCYE] ADD 
	CONSTRAINT [DF__KCYE__F_SLYE__2B2A60FE] DEFAULT (0) FOR [F_SLYE]
GO

ALTER TABLE [dbo].[KCZZ] ADD 
	CONSTRAINT [DF__KCZZ__F_SL0__2D12A970] DEFAULT (0) FOR [F_SL0],
	CONSTRAINT [DF__KCZZ__F_JE0__2E06CDA9] DEFAULT (0) FOR [F_JE0],
	CONSTRAINT [DF__KCZZ__F_SLYE__2EFAF1E2] DEFAULT (0) FOR [F_SLYE],
	CONSTRAINT [DF__KCZZ__F_JEYE__2FEF161B] DEFAULT (0) FOR [F_JEYE],
	CONSTRAINT [DF__KCZZ__F_PJDJ__30E33A54] DEFAULT (0) FOR [F_PJDJ],
	CONSTRAINT [DF__KCZZ__f_je__31D75E8D] DEFAULT (0) FOR [f_je],
	CONSTRAINT [DF__KCZZ__f_jj__32CB82C6] DEFAULT (0) FOR [f_jj],
	CONSTRAINT [DF__KCZZ__F_SLS1__33BFA6FF] DEFAULT (0) FOR [F_SLS1],
	CONSTRAINT [DF__KCZZ__F_SLS2__34B3CB38] DEFAULT (0) FOR [F_SLS2],
	CONSTRAINT [DF__KCZZ__F_SLS3__35A7EF71] DEFAULT (0) FOR [F_SLS3],
	CONSTRAINT [DF__KCZZ__F_SLS4__369C13AA] DEFAULT (0) FOR [F_SLS4],
	CONSTRAINT [DF__KCZZ__F_SLS5__379037E3] DEFAULT (0) FOR [F_SLS5],
	CONSTRAINT [DF__KCZZ__F_SLS6__38845C1C] DEFAULT (0) FOR [F_SLS6],
	CONSTRAINT [DF__KCZZ__F_SLS7__39788055] DEFAULT (0) FOR [F_SLS7],
	CONSTRAINT [DF__KCZZ__F_SLS8__3A6CA48E] DEFAULT (0) FOR [F_SLS8],
	CONSTRAINT [DF__KCZZ__F_SLS9__3B60C8C7] DEFAULT (0) FOR [F_SLS9],
	CONSTRAINT [DF__KCZZ__F_SLS10__3C54ED00] DEFAULT (0) FOR [F_SLS10],
	CONSTRAINT [DF__KCZZ__F_SLS11__3D491139] DEFAULT (0) FOR [F_SLS11],
	CONSTRAINT [DF__KCZZ__F_SLS12__3E3D3572] DEFAULT (0) FOR [F_SLS12],
	CONSTRAINT [DF__KCZZ__F_JES1__3F3159AB] DEFAULT (0) FOR [F_JES1],
	CONSTRAINT [DF__KCZZ__F_JES2__40257DE4] DEFAULT (0) FOR [F_JES2],
	CONSTRAINT [DF__KCZZ__F_JES3__4119A21D] DEFAULT (0) FOR [F_JES3],
	CONSTRAINT [DF__KCZZ__F_JES4__420DC656] DEFAULT (0) FOR [F_JES4],
	CONSTRAINT [DF__KCZZ__F_JES5__4301EA8F] DEFAULT (0) FOR [F_JES5],
	CONSTRAINT [DF__KCZZ__F_JES6__43F60EC8] DEFAULT (0) FOR [F_JES6],
	CONSTRAINT [DF__KCZZ__F_JES7__44EA3301] DEFAULT (0) FOR [F_JES7],
	CONSTRAINT [DF__KCZZ__F_JES8__45DE573A] DEFAULT (0) FOR [F_JES8],
	CONSTRAINT [DF__KCZZ__F_JES9__46D27B73] DEFAULT (0) FOR [F_JES9],
	CONSTRAINT [DF__KCZZ__F_JES10__47C69FAC] DEFAULT (0) FOR [F_JES10],
	CONSTRAINT [DF__KCZZ__F_JES11__48BAC3E5] DEFAULT (0) FOR [F_JES11],
	CONSTRAINT [DF__KCZZ__F_JES12__49AEE81E] DEFAULT (0) FOR [F_JES12],
	CONSTRAINT [DF__KCZZ__F_SLF1__4AA30C57] DEFAULT (0) FOR [F_SLF1],
	CONSTRAINT [DF__KCZZ__F_SLF2__4B973090] DEFAULT (0) FOR [F_SLF2],
	CONSTRAINT [DF__KCZZ__F_SLF3__4C8B54C9] DEFAULT (0) FOR [F_SLF3],
	CONSTRAINT [DF__KCZZ__F_SLF4__4D7F7902] DEFAULT (0) FOR [F_SLF4],
	CONSTRAINT [DF__KCZZ__F_SLF5__4E739D3B] DEFAULT (0) FOR [F_SLF5],
	CONSTRAINT [DF__KCZZ__F_SLF6__4F67C174] DEFAULT (0) FOR [F_SLF6],
	CONSTRAINT [DF__KCZZ__F_SLF7__505BE5AD] DEFAULT (0) FOR [F_SLF7],
	CONSTRAINT [DF__KCZZ__F_SLF8__515009E6] DEFAULT (0) FOR [F_SLF8],
	CONSTRAINT [DF__KCZZ__F_SLF9__52442E1F] DEFAULT (0) FOR [F_SLF9],
	CONSTRAINT [DF__KCZZ__F_SLF10__53385258] DEFAULT (0) FOR [F_SLF10],
	CONSTRAINT [DF__KCZZ__F_SLF11__542C7691] DEFAULT (0) FOR [F_SLF11],
	CONSTRAINT [DF__KCZZ__F_SLF12__55209ACA] DEFAULT (0) FOR [F_SLF12],
	CONSTRAINT [DF__KCZZ__F_JEF1__5614BF03] DEFAULT (0) FOR [F_JEF1],
	CONSTRAINT [DF__KCZZ__F_JEF2__5708E33C] DEFAULT (0) FOR [F_JEF2],
	CONSTRAINT [DF__KCZZ__F_JEF3__57FD0775] DEFAULT (0) FOR [F_JEF3],
	CONSTRAINT [DF__KCZZ__F_JEF4__58F12BAE] DEFAULT (0) FOR [F_JEF4],
	CONSTRAINT [DF__KCZZ__F_JEF5__59E54FE7] DEFAULT (0) FOR [F_JEF5],
	CONSTRAINT [DF__KCZZ__F_JEF6__5AD97420] DEFAULT (0) FOR [F_JEF6],
	CONSTRAINT [DF__KCZZ__F_JEF7__5BCD9859] DEFAULT (0) FOR [F_JEF7],
	CONSTRAINT [DF__KCZZ__F_JEF8__5CC1BC92] DEFAULT (0) FOR [F_JEF8],
	CONSTRAINT [DF__KCZZ__F_JEF9__5DB5E0CB] DEFAULT (0) FOR [F_JEF9],
	CONSTRAINT [DF__KCZZ__F_JEF10__5EAA0504] DEFAULT (0) FOR [F_JEF10],
	CONSTRAINT [DF__KCZZ__F_JEF11__5F9E293D] DEFAULT (0) FOR [F_JEF11],
	CONSTRAINT [DF__KCZZ__F_JEF12__60924D76] DEFAULT (0) FOR [F_JEF12]
GO

ALTER TABLE [dbo].[LSH] ADD 
	CONSTRAINT [DF__LSH__F_J1__636EBA21] DEFAULT (0) FOR [F_J1],
	CONSTRAINT [DF__LSH__F_J2__6462DE5A] DEFAULT (0) FOR [F_J2],
	CONSTRAINT [DF__LSH__F_J3__65570293] DEFAULT (0) FOR [F_J3],
	CONSTRAINT [DF__LSH__F_J4__664B26CC] DEFAULT (0) FOR [F_J4],
	CONSTRAINT [DF__LSH__F_J5__673F4B05] DEFAULT (0) FOR [F_J5],
	CONSTRAINT [DF__LSH__F_R1__68336F3E] DEFAULT (0) FOR [F_R1],
	CONSTRAINT [DF__LSH__F_R2__69279377] DEFAULT (0) FOR [F_R2],
	CONSTRAINT [DF__LSH__F_R3__6A1BB7B0] DEFAULT (0) FOR [F_R3],
	CONSTRAINT [DF__LSH__F_R4__6B0FDBE9] DEFAULT (0) FOR [F_R4],
	CONSTRAINT [DF__LSH__F_R5__6C040022] DEFAULT (0) FOR [F_R5]
GO

ALTER TABLE [dbo].[PDDMX] ADD 
	CONSTRAINT [DF__PDDMX__f_dj2__72B0FDB1] DEFAULT (0) FOR [f_dj2]
GO

ALTER TABLE [dbo].[PDDMX2] ADD 
	CONSTRAINT [DF__PDDMX2__f_dj2__74994623] DEFAULT (0) FOR [f_dj2]
GO

ALTER TABLE [dbo].[PDDMX3] ADD 
	CONSTRAINT [DF__PDDMX3__f_dj2__76818E95] DEFAULT (0) FOR [f_dj2]
GO

ALTER TABLE [dbo].[POWERITEM] ADD 
	CONSTRAINT [DF__POWERITEM__f_cla__795DFB40] DEFAULT ('') FOR [f_classname]
GO

ALTER TABLE [dbo].[PRINTCOLHEADER] ADD 
	CONSTRAINT [DF__PRINTCOLH__f_fon__7B4643B2] DEFAULT ('宋体,10,1000') FOR [f_font]
GO

ALTER TABLE [dbo].[PRINTFIELD] ADD 
	CONSTRAINT [DF__PRINTFIEL__f_fon__7D2E8C24] DEFAULT ('宋体,10,1000') FOR [f_font],
	CONSTRAINT [DF__PRINTFIEL__f_cap__7E22B05D] DEFAULT ('宋体,10,1000') FOR [f_captionFont]
GO

ALTER TABLE [dbo].[PRINTPAGEFOOTER] ADD 
	CONSTRAINT [DF__PRINTPAGE__f_fon__00FF1D08] DEFAULT ('宋体,10,1000') FOR [f_fontLeft],
	CONSTRAINT [DF__PRINTPAGE__f_fon__01F34141] DEFAULT ('宋体,10,1000') FOR [f_fontCenter],
	CONSTRAINT [DF__PRINTPAGE__f_fon__02E7657A] DEFAULT ('宋体,10,1000') FOR [f_fontRight],
	CONSTRAINT [DF__PRINTPAGE__f_row__03DB89B3] DEFAULT (1.5) FOR [f_rowSpace]
GO

ALTER TABLE [dbo].[PRINTPAGEHEADER] ADD 
	CONSTRAINT [DF__PRINTPAGE__f_fon__05C3D225] DEFAULT ('宋体,10,1000') FOR [f_fontLeft],
	CONSTRAINT [DF__PRINTPAGE__f_fon__06B7F65E] DEFAULT ('宋体,10,1000') FOR [f_fontCenter],
	CONSTRAINT [DF__PRINTPAGE__f_fon__07AC1A97] DEFAULT ('宋体,10,1000') FOR [f_fontRight],
	CONSTRAINT [DF__PRINTPAGE__f_row__08A03ED0] DEFAULT (1.5) FOR [f_rowSpace]
GO

ALTER TABLE [dbo].[PRINTPARAM] ADD 
	CONSTRAINT [DF__PRINTPARA__F_TOP__0A888742] DEFAULT (0) FOR [F_TOP],
	CONSTRAINT [DF__PRINTPARA__F_LEF__0B7CAB7B] DEFAULT (0) FOR [F_LEFT],
	CONSTRAINT [DF__PRINTPARA__F_PAP__0C70CFB4] DEFAULT (0) FOR [F_PAPERSIZE],
	CONSTRAINT [DF__PRINTPARA__F_PAP__0D64F3ED] DEFAULT (0) FOR [F_PAPERWIDTH],
	CONSTRAINT [DF__PRINTPARA__F_PAP__0E591826] DEFAULT (0) FOR [F_PAPERLENGTH],
	CONSTRAINT [DF__PRINTPARA__F_ORI__0F4D3C5F] DEFAULT (0) FOR [F_ORIENT],
	CONSTRAINT [DF__PRINTPARA__F_ROW__10416098] DEFAULT (0) FOR [F_ROWS],
	CONSTRAINT [DF__PRINTPARA__F_COL__113584D1] DEFAULT (0) FOR [F_COLNUMBER]
GO

ALTER TABLE [dbo].[PRINTPARAME] ADD 
	CONSTRAINT [DF__PRINTPARA__f_def__131DCD43] DEFAULT ('宋体,10,1000') FOR [f_defaultFont],
	CONSTRAINT [DF__PRINTPARA__f_Tit__1411F17C] DEFAULT ('宋体,10,1000') FOR [f_TitleFont]
GO

ALTER TABLE [dbo].[PSDMX] ADD 
	CONSTRAINT [DF__PSDMX__F_SL1__16EE5E27] DEFAULT (0) FOR [F_SL1],
	CONSTRAINT [DF__PSDMX__F_SL2__17E28260] DEFAULT (0) FOR [F_SL2],
	CONSTRAINT [DF__PSDMX__F_SL3__18D6A699] DEFAULT (0) FOR [F_SL3],
	CONSTRAINT [DF__PSDMX__F_SL4__19CACAD2] DEFAULT (0) FOR [F_SL4],
	CONSTRAINT [DF__PSDMX__F_SL5__1ABEEF0B] DEFAULT (0) FOR [F_SL5],
	CONSTRAINT [DF__PSDMX__F_SL6__1BB31344] DEFAULT (0) FOR [F_SL6],
	CONSTRAINT [DF__PSDMX__F_SL7__1CA7377D] DEFAULT (0) FOR [F_SL7],
	CONSTRAINT [DF__PSDMX__F_SL__1D9B5BB6] DEFAULT (0) FOR [F_SL]
GO

ALTER TABLE [dbo].[RETAIL] ADD 
	CONSTRAINT [DF__RETAIL__F_SL__1F83A428] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__RETAIL__F_DJ__2077C861] DEFAULT (0) FOR [F_DJ],
	CONSTRAINT [DF__RETAIL__F_JE__216BEC9A] DEFAULT (0) FOR [F_JE],
	CONSTRAINT [DF__RETAIL__F_JS__226010D3] DEFAULT (0) FOR [F_JS],
	CONSTRAINT [DF__RETAIL__f_kl__2354350C] DEFAULT (100) FOR [f_kl]
GO

ALTER TABLE [dbo].[RETAIL11] ADD 
	CONSTRAINT [DF__RETAIL11__F_SL__253C7D7E] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__RETAIL11__F_DJ__2630A1B7] DEFAULT (0) FOR [F_DJ],
	CONSTRAINT [DF__RETAIL11__F_JE__2724C5F0] DEFAULT (0) FOR [F_JE],
	CONSTRAINT [DF__RETAIL11__F_JS__2818EA29] DEFAULT (0) FOR [F_JS],
	CONSTRAINT [DF__RETAIL11__f_kl__290D0E62] DEFAULT (100) FOR [f_kl]
GO

ALTER TABLE [dbo].[RETAIL2] ADD 
	CONSTRAINT [DF__RETAIL2__F_SL__2AF556D4] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__RETAIL2__F_DJ__2BE97B0D] DEFAULT (0) FOR [F_DJ],
	CONSTRAINT [DF__RETAIL2__F_JE__2CDD9F46] DEFAULT (0) FOR [F_JE],
	CONSTRAINT [DF__RETAIL2__F_JS__2DD1C37F] DEFAULT (0) FOR [F_JS],
	CONSTRAINT [DF__RETAIL2__f_kl__2EC5E7B8] DEFAULT (100) FOR [f_kl],
	CONSTRAINT [DF__RETAIL2__f_hc__2FBA0BF1] DEFAULT (0) FOR [f_hc]
GO

ALTER TABLE [dbo].[RETAILC] ADD 
	CONSTRAINT [DF__RETAILC__f_je__31A25463] DEFAULT (0) FOR [f_je]
GO

ALTER TABLE [dbo].[RETAILC11] ADD 
	CONSTRAINT [DF__RETAILC11__f_je__338A9CD5] DEFAULT (0) FOR [f_je]
GO

ALTER TABLE [dbo].[RETAILC2] ADD 
	CONSTRAINT [DF__RETAILC2__f_je__3572E547] DEFAULT (0) FOR [f_je]
GO

ALTER TABLE [dbo].[RETAILDJ] ADD 
	CONSTRAINT [DF__RETAILDJ__f_djh__375B2DB9] DEFAULT (0) FOR [f_djh]
GO

ALTER TABLE [dbo].[RKD] ADD 
	CONSTRAINT [DF__RKD__f_fpxz__3943762B] DEFAULT ('') FOR [f_fpxz],
	CONSTRAINT [DF__RKD__f_sl2__3A379A64] DEFAULT (0) FOR [f_sl2]
GO

ALTER TABLE [dbo].[RKD2] ADD 
	CONSTRAINT [DF__RKD2__f_fpxz__3C1FE2D6] DEFAULT ('') FOR [f_fpxz],
	CONSTRAINT [DF__RKD2__f_sl2__3D14070F] DEFAULT (0) FOR [f_sl2]
GO

ALTER TABLE [dbo].[RKD3] ADD 
	CONSTRAINT [DF__RKD3__f_fpxz__3EFC4F81] DEFAULT ('') FOR [f_fpxz],
	CONSTRAINT [DF__RKD3__f_sl2__3FF073BA] DEFAULT (0) FOR [f_sl2]
GO

ALTER TABLE [dbo].[RKDMX] ADD 
	CONSTRAINT [DF__RKDMX__F_SL__41D8BC2C] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__RKDMX__F_DJ__42CCE065] DEFAULT (0) FOR [F_DJ],
	CONSTRAINT [DF__RKDMX__F_JE__43C1049E] DEFAULT (0) FOR [F_JE],
	CONSTRAINT [DF__RKDMX__F_UN__44B528D7] DEFAULT (0) FOR [F_UN],
	CONSTRAINT [DF__RKDMX__F_YLF__45A94D10] DEFAULT (0) FOR [F_YLF],
	CONSTRAINT [DF__RKDMX__F_JGF__469D7149] DEFAULT (0) FOR [F_JGF],
	CONSTRAINT [DF__RKDMX__f_sl2__47919582] DEFAULT (0) FOR [f_sl2],
	CONSTRAINT [DF__RKDMX__f_kl__4885B9BB] DEFAULT (0) FOR [f_kl],
	CONSTRAINT [DF__RKDMX__f_color__4979DDF4] DEFAULT ('') FOR [f_color],
	CONSTRAINT [DF__RKDMX__f_s1__4A6E022D] DEFAULT (0) FOR [f_s1],
	CONSTRAINT [DF__RKDMX__f_s2__4B622666] DEFAULT (0) FOR [f_s2],
	CONSTRAINT [DF__RKDMX__f_s3__4C564A9F] DEFAULT (0) FOR [f_s3],
	CONSTRAINT [DF__RKDMX__f_s4__4D4A6ED8] DEFAULT (0) FOR [f_s4],
	CONSTRAINT [DF__RKDMX__f_s5__4E3E9311] DEFAULT (0) FOR [f_s5],
	CONSTRAINT [DF__RKDMX__f_s6__4F32B74A] DEFAULT (0) FOR [f_s6],
	CONSTRAINT [DF__RKDMX__f_s7__5026DB83] DEFAULT (0) FOR [f_s7],
	CONSTRAINT [DF__RKDMX__f_s8__511AFFBC] DEFAULT (0) FOR [f_s8],
	CONSTRAINT [DF__RKDMX__f_s9__520F23F5] DEFAULT (0) FOR [f_s9],
	CONSTRAINT [DF__RKDMX__f_s10__5303482E] DEFAULT (0) FOR [f_s10],
	CONSTRAINT [DF__RKDMX__f_s11__53F76C67] DEFAULT (0) FOR [f_s11],
	CONSTRAINT [DF__RKDMX__f_s12__54EB90A0] DEFAULT (0) FOR [f_s12],
	CONSTRAINT [DF__RKDMX__f_s13__55DFB4D9] DEFAULT (0) FOR [f_s13],
	CONSTRAINT [DF__RKDMX__f_s14__56D3D912] DEFAULT (0) FOR [f_s14],
	CONSTRAINT [DF__RKDMX__f_s15__57C7FD4B] DEFAULT (0) FOR [f_s15],
	CONSTRAINT [DF__RKDMX__f_s16__58BC2184] DEFAULT (0) FOR [f_s16],
	CONSTRAINT [DF__RKDMX__f_s17__59B045BD] DEFAULT (0) FOR [f_s17],
	CONSTRAINT [DF__RKDMX__f_s18__5AA469F6] DEFAULT (0) FOR [f_s18],
	CONSTRAINT [DF__RKDMX__f_s19__5B988E2F] DEFAULT (0) FOR [f_s19],
	CONSTRAINT [DF__RKDMX__f_s20__5C8CB268] DEFAULT (0) FOR [f_s20]
GO

ALTER TABLE [dbo].[RKDMX2] ADD 
	CONSTRAINT [DF__RKDMX2__F_SL__5E74FADA] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__RKDMX2__F_DJ__5F691F13] DEFAULT (0) FOR [F_DJ],
	CONSTRAINT [DF__RKDMX2__F_JE__605D434C] DEFAULT (0) FOR [F_JE],
	CONSTRAINT [DF__RKDMX2__F_UN__61516785] DEFAULT (0) FOR [F_UN],
	CONSTRAINT [DF__RKDMX2__f_sl2__62458BBE] DEFAULT (0) FOR [f_sl2],
	CONSTRAINT [DF__RKDMX2__f_kl__6339AFF7] DEFAULT (0) FOR [f_kl],
	CONSTRAINT [DF__RKDMX2__f_color__642DD430] DEFAULT ('') FOR [f_color],
	CONSTRAINT [DF__RKDMX2__f_s1__6521F869] DEFAULT (0) FOR [f_s1],
	CONSTRAINT [DF__RKDMX2__f_s2__66161CA2] DEFAULT (0) FOR [f_s2],
	CONSTRAINT [DF__RKDMX2__f_s3__670A40DB] DEFAULT (0) FOR [f_s3],
	CONSTRAINT [DF__RKDMX2__f_s4__67FE6514] DEFAULT (0) FOR [f_s4],
	CONSTRAINT [DF__RKDMX2__f_s5__68F2894D] DEFAULT (0) FOR [f_s5],
	CONSTRAINT [DF__RKDMX2__f_s6__69E6AD86] DEFAULT (0) FOR [f_s6],
	CONSTRAINT [DF__RKDMX2__f_s7__6ADAD1BF] DEFAULT (0) FOR [f_s7],
	CONSTRAINT [DF__RKDMX2__f_s8__6BCEF5F8] DEFAULT (0) FOR [f_s8],
	CONSTRAINT [DF__RKDMX2__f_s9__6CC31A31] DEFAULT (0) FOR [f_s9],
	CONSTRAINT [DF__RKDMX2__f_s10__6DB73E6A] DEFAULT (0) FOR [f_s10],
	CONSTRAINT [DF__RKDMX2__f_s11__6EAB62A3] DEFAULT (0) FOR [f_s11],
	CONSTRAINT [DF__RKDMX2__f_s12__6F9F86DC] DEFAULT (0) FOR [f_s12],
	CONSTRAINT [DF__RKDMX2__f_s13__7093AB15] DEFAULT (0) FOR [f_s13],
	CONSTRAINT [DF__RKDMX2__f_s14__7187CF4E] DEFAULT (0) FOR [f_s14],
	CONSTRAINT [DF__RKDMX2__f_s15__727BF387] DEFAULT (0) FOR [f_s15],
	CONSTRAINT [DF__RKDMX2__f_s16__737017C0] DEFAULT (0) FOR [f_s16],
	CONSTRAINT [DF__RKDMX2__f_s17__74643BF9] DEFAULT (0) FOR [f_s17],
	CONSTRAINT [DF__RKDMX2__f_s18__75586032] DEFAULT (0) FOR [f_s18],
	CONSTRAINT [DF__RKDMX2__f_s19__764C846B] DEFAULT (0) FOR [f_s19],
	CONSTRAINT [DF__RKDMX2__f_s20__7740A8A4] DEFAULT (0) FOR [f_s20]
GO

ALTER TABLE [dbo].[RKDMX3] ADD 
	CONSTRAINT [DF__RKDMX3__f_sl2__7928F116] DEFAULT (0) FOR [f_sl2],
	CONSTRAINT [DF__RKDMX3__f_kl__7A1D154F] DEFAULT (0) FOR [f_kl],
	CONSTRAINT [DF__RKDMX3__f_color__7B113988] DEFAULT ('') FOR [f_color],
	CONSTRAINT [DF__RKDMX3__f_s1__7C055DC1] DEFAULT (0) FOR [f_s1],
	CONSTRAINT [DF__RKDMX3__f_s2__7CF981FA] DEFAULT (0) FOR [f_s2],
	CONSTRAINT [DF__RKDMX3__f_s3__7DEDA633] DEFAULT (0) FOR [f_s3],
	CONSTRAINT [DF__RKDMX3__f_s4__7EE1CA6C] DEFAULT (0) FOR [f_s4],
	CONSTRAINT [DF__RKDMX3__f_s5__7FD5EEA5] DEFAULT (0) FOR [f_s5],
	CONSTRAINT [DF__RKDMX3__f_s6__00CA12DE] DEFAULT (0) FOR [f_s6],
	CONSTRAINT [DF__RKDMX3__f_s7__01BE3717] DEFAULT (0) FOR [f_s7],
	CONSTRAINT [DF__RKDMX3__f_s8__02B25B50] DEFAULT (0) FOR [f_s8],
	CONSTRAINT [DF__RKDMX3__f_s9__03A67F89] DEFAULT (0) FOR [f_s9],
	CONSTRAINT [DF__RKDMX3__f_s10__049AA3C2] DEFAULT (0) FOR [f_s10],
	CONSTRAINT [DF__RKDMX3__f_s11__058EC7FB] DEFAULT (0) FOR [f_s11],
	CONSTRAINT [DF__RKDMX3__f_s12__0682EC34] DEFAULT (0) FOR [f_s12],
	CONSTRAINT [DF__RKDMX3__f_s13__0777106D] DEFAULT (0) FOR [f_s13],
	CONSTRAINT [DF__RKDMX3__f_s14__086B34A6] DEFAULT (0) FOR [f_s14],
	CONSTRAINT [DF__RKDMX3__f_s15__095F58DF] DEFAULT (0) FOR [f_s15],
	CONSTRAINT [DF__RKDMX3__f_s16__0A537D18] DEFAULT (0) FOR [f_s16],
	CONSTRAINT [DF__RKDMX3__f_s17__0B47A151] DEFAULT (0) FOR [f_s17],
	CONSTRAINT [DF__RKDMX3__f_s18__0C3BC58A] DEFAULT (0) FOR [f_s18],
	CONSTRAINT [DF__RKDMX3__f_s19__0D2FE9C3] DEFAULT (0) FOR [f_s19],
	CONSTRAINT [DF__RKDMX3__f_s20__0E240DFC] DEFAULT (0) FOR [f_s20]
GO

ALTER TABLE [dbo].[RKDMXMX] ADD 
	CONSTRAINT [DF__RKDMXMX__F_SL__100C566E] DEFAULT (0) FOR [F_SL]
GO

ALTER TABLE [dbo].[RKDMXMX2] ADD 
	CONSTRAINT [DF__RKDMXMX2__F_SL__11F49EE0] DEFAULT (0) FOR [F_SL]
GO

ALTER TABLE [dbo].[RKDMXMX3] ADD 
	CONSTRAINT [DF__RKDMXMX3__F_SL__13DCE752] DEFAULT (0) FOR [F_SL]
GO

 CREATE  INDEX [SFZY_MC] ON [dbo].[SFZY]([F_MC]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SJMXZ] ADD 
	CONSTRAINT [DF__SJMXZ__F_JXSE__16B953FD] DEFAULT (0) FOR [F_JXSE],
	CONSTRAINT [DF__SJMXZ__F_XXSE__17AD7836] DEFAULT (0) FOR [F_XXSE],
	CONSTRAINT [DF__SJMXZ__F_ZCSE__18A19C6F] DEFAULT (0) FOR [F_ZCSE]
GO

ALTER TABLE [dbo].[SJZZ] ADD 
	CONSTRAINT [DF__SJZZ__F_JXS1__1A89E4E1] DEFAULT (0) FOR [F_JXS1],
	CONSTRAINT [DF__SJZZ__F_JXS2__1B7E091A] DEFAULT (0) FOR [F_JXS2],
	CONSTRAINT [DF__SJZZ__F_JXS3__1C722D53] DEFAULT (0) FOR [F_JXS3],
	CONSTRAINT [DF__SJZZ__F_JXS4__1D66518C] DEFAULT (0) FOR [F_JXS4],
	CONSTRAINT [DF__SJZZ__F_JXS5__1E5A75C5] DEFAULT (0) FOR [F_JXS5],
	CONSTRAINT [DF__SJZZ__F_JXS6__1F4E99FE] DEFAULT (0) FOR [F_JXS6],
	CONSTRAINT [DF__SJZZ__F_JXS7__2042BE37] DEFAULT (0) FOR [F_JXS7],
	CONSTRAINT [DF__SJZZ__F_JXS8__2136E270] DEFAULT (0) FOR [F_JXS8],
	CONSTRAINT [DF__SJZZ__F_JXS9__222B06A9] DEFAULT (0) FOR [F_JXS9],
	CONSTRAINT [DF__SJZZ__F_JXS10__231F2AE2] DEFAULT (0) FOR [F_JXS10],
	CONSTRAINT [DF__SJZZ__F_JXS11__24134F1B] DEFAULT (0) FOR [F_JXS11],
	CONSTRAINT [DF__SJZZ__F_JXS12__25077354] DEFAULT (0) FOR [F_JXS12],
	CONSTRAINT [DF__SJZZ__F_XXS1__25FB978D] DEFAULT (0) FOR [F_XXS1],
	CONSTRAINT [DF__SJZZ__F_XXS2__26EFBBC6] DEFAULT (0) FOR [F_XXS2],
	CONSTRAINT [DF__SJZZ__F_XXS3__27E3DFFF] DEFAULT (0) FOR [F_XXS3],
	CONSTRAINT [DF__SJZZ__F_XXS4__28D80438] DEFAULT (0) FOR [F_XXS4],
	CONSTRAINT [DF__SJZZ__F_XXS5__29CC2871] DEFAULT (0) FOR [F_XXS5],
	CONSTRAINT [DF__SJZZ__F_XXS6__2AC04CAA] DEFAULT (0) FOR [F_XXS6],
	CONSTRAINT [DF__SJZZ__F_XXS7__2BB470E3] DEFAULT (0) FOR [F_XXS7],
	CONSTRAINT [DF__SJZZ__F_XXS8__2CA8951C] DEFAULT (0) FOR [F_XXS8],
	CONSTRAINT [DF__SJZZ__F_XXS9__2D9CB955] DEFAULT (0) FOR [F_XXS9],
	CONSTRAINT [DF__SJZZ__F_XXS10__2E90DD8E] DEFAULT (0) FOR [F_XXS10],
	CONSTRAINT [DF__SJZZ__F_XXS11__2F8501C7] DEFAULT (0) FOR [F_XXS11],
	CONSTRAINT [DF__SJZZ__F_XXS12__30792600] DEFAULT (0) FOR [F_XXS12],
	CONSTRAINT [DF__SJZZ__F_ZCS1__316D4A39] DEFAULT (0) FOR [F_ZCS1],
	CONSTRAINT [DF__SJZZ__F_ZCS2__32616E72] DEFAULT (0) FOR [F_ZCS2],
	CONSTRAINT [DF__SJZZ__F_ZCS3__335592AB] DEFAULT (0) FOR [F_ZCS3],
	CONSTRAINT [DF__SJZZ__F_ZCS4__3449B6E4] DEFAULT (0) FOR [F_ZCS4],
	CONSTRAINT [DF__SJZZ__F_ZCS5__353DDB1D] DEFAULT (0) FOR [F_ZCS5],
	CONSTRAINT [DF__SJZZ__F_ZCS6__3631FF56] DEFAULT (0) FOR [F_ZCS6],
	CONSTRAINT [DF__SJZZ__F_ZCS7__3726238F] DEFAULT (0) FOR [F_ZCS7],
	CONSTRAINT [DF__SJZZ__F_ZCS8__381A47C8] DEFAULT (0) FOR [F_ZCS8],
	CONSTRAINT [DF__SJZZ__F_ZCS9__390E6C01] DEFAULT (0) FOR [F_ZCS9],
	CONSTRAINT [DF__SJZZ__F_ZCS10__3A02903A] DEFAULT (0) FOR [F_ZCS10],
	CONSTRAINT [DF__SJZZ__F_ZCS11__3AF6B473] DEFAULT (0) FOR [F_ZCS11],
	CONSTRAINT [DF__SJZZ__F_ZCS12__3BEAD8AC] DEFAULT (0) FOR [F_ZCS12]
GO

ALTER TABLE [dbo].[SP] ADD 
	CONSTRAINT [DF__SP__F_MAXSL__3DD3211E] DEFAULT (0) FOR [F_MAXSL],
	CONSTRAINT [DF__SP__F_MINSL__3EC74557] DEFAULT (0) FOR [F_MINSL],
	CONSTRAINT [DF__SP__F_SLV__3FBB6990] DEFAULT (0.17) FOR [F_SLV],
	CONSTRAINT [DF__SP__F_CS__40AF8DC9] DEFAULT (1) FOR [F_CS],
	CONSTRAINT [DF__SP__F_DJ1__41A3B202] DEFAULT (0) FOR [F_DJ1],
	CONSTRAINT [DF__SP__F_DJ2__4297D63B] DEFAULT (0) FOR [F_DJ2],
	CONSTRAINT [DF__SP__F_DJ3__438BFA74] DEFAULT (0) FOR [F_DJ3],
	CONSTRAINT [DF__SP__F_DJ4__44801EAD] DEFAULT (0) FOR [F_DJ4],
	CONSTRAINT [DF__SP__F_DJ5__457442E6] DEFAULT (0) FOR [F_DJ5],
	CONSTRAINT [DF__SP__F_DWCB__4668671F] DEFAULT (0) FOR [F_DWCB],
	CONSTRAINT [DF__SP__f_maxpc__475C8B58] DEFAULT (0) FOR [f_maxpc],
	CONSTRAINT [DF__SP__f_ifsj__4850AF91] DEFAULT ('') FOR [f_ifsj],
	CONSTRAINT [DF__SP__f_rate__4944D3CA] DEFAULT (0) FOR [f_rate],
	CONSTRAINT [DF__SP__f_function__4A38F803] DEFAULT ('') FOR [f_function],
	CONSTRAINT [DF__SP__f_un1__4B2D1C3C] DEFAULT (0) FOR [f_un1],
	CONSTRAINT [DF__SP__f_un2__4C214075] DEFAULT (0) FOR [f_un2],
	CONSTRAINT [DF__SP__f_un3__4D1564AE] DEFAULT (0) FOR [f_un3],
	CONSTRAINT [DF__SP__f_un4__4E0988E7] DEFAULT (0) FOR [f_un4],
	CONSTRAINT [DF__SP__f_un5__4EFDAD20] DEFAULT (0) FOR [f_un5],
	CONSTRAINT [DF__SP__f_maxjj__4FF1D159] DEFAULT (0) FOR [f_maxjj],
	CONSTRAINT [DF__SP__f_minjj__50E5F592] DEFAULT (0) FOR [f_minjj],
	CONSTRAINT [DF__SP__f_recentjj__51DA19CB] DEFAULT (0) FOR [f_recentjj]
GO

 CREATE  INDEX [SP_TM] ON [dbo].[SP]([F_TM]) ON [PRIMARY]
GO

 CREATE  INDEX [SPMC] ON [dbo].[SP]([F_SPMC]) ON [PRIMARY]
GO

 CREATE  INDEX [ZJM] ON [dbo].[SP]([F_ZJM]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SPDOWN] ADD 
	CONSTRAINT [DF__SPDOWN__F_MAXSL__569ECEE8] DEFAULT (0) FOR [F_MAXSL],
	CONSTRAINT [DF__SPDOWN__F_MINSL__5792F321] DEFAULT (0) FOR [F_MINSL],
	CONSTRAINT [DF__SPDOWN__F_SLV__5887175A] DEFAULT (0.17) FOR [F_SLV],
	CONSTRAINT [DF__SPDOWN__F_DJ1__597B3B93] DEFAULT (0) FOR [F_DJ1],
	CONSTRAINT [DF__SPDOWN__F_DJ2__5A6F5FCC] DEFAULT (0) FOR [F_DJ2],
	CONSTRAINT [DF__SPDOWN__F_DJ3__5B638405] DEFAULT (0) FOR [F_DJ3],
	CONSTRAINT [DF__SPDOWN__F_DJ4__5C57A83E] DEFAULT (0) FOR [F_DJ4],
	CONSTRAINT [DF__SPDOWN__F_DJ5__5D4BCC77] DEFAULT (0) FOR [F_DJ5],
	CONSTRAINT [DF__SPDOWN__F_DWCB__5E3FF0B0] DEFAULT (0) FOR [F_DWCB],
	CONSTRAINT [DF__SPDOWN__f_maxpc__5F3414E9] DEFAULT (0) FOR [f_maxpc],
	CONSTRAINT [DF__SPDOWN__f_ifsj__60283922] DEFAULT ('') FOR [f_ifsj],
	CONSTRAINT [DF__SPDOWN__f_rate__611C5D5B] DEFAULT (0) FOR [f_rate],
	CONSTRAINT [DF__SPDOWN__f_functi__62108194] DEFAULT ('') FOR [f_function],
	CONSTRAINT [DF__SPDOWN__f_un1__6304A5CD] DEFAULT (0) FOR [f_un1],
	CONSTRAINT [DF__SPDOWN__f_un2__63F8CA06] DEFAULT (0) FOR [f_un2],
	CONSTRAINT [DF__SPDOWN__f_un3__64ECEE3F] DEFAULT (0) FOR [f_un3],
	CONSTRAINT [DF__SPDOWN__f_un4__65E11278] DEFAULT (0) FOR [f_un4],
	CONSTRAINT [DF__SPDOWN__f_un5__66D536B1] DEFAULT (0) FOR [f_un5]
GO

ALTER TABLE [dbo].[SPPC] ADD 
	CONSTRAINT [DF__SPPC__F_SL__69B1A35C] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__SPPC__F_JE__6AA5C795] DEFAULT (0) FOR [F_JE]
GO

ALTER TABLE [dbo].[SYZZ] ADD 
	CONSTRAINT [DF__SYZZ__F_SLS1__6E765879] DEFAULT (0) FOR [F_SLS1],
	CONSTRAINT [DF__SYZZ__F_SLS2__6F6A7CB2] DEFAULT (0) FOR [F_SLS2],
	CONSTRAINT [DF__SYZZ__F_SLS3__705EA0EB] DEFAULT (0) FOR [F_SLS3],
	CONSTRAINT [DF__SYZZ__F_SLS4__7152C524] DEFAULT (0) FOR [F_SLS4],
	CONSTRAINT [DF__SYZZ__F_SLS5__7246E95D] DEFAULT (0) FOR [F_SLS5],
	CONSTRAINT [DF__SYZZ__F_SLS6__733B0D96] DEFAULT (0) FOR [F_SLS6],
	CONSTRAINT [DF__SYZZ__F_SLS7__742F31CF] DEFAULT (0) FOR [F_SLS7],
	CONSTRAINT [DF__SYZZ__F_SLS8__75235608] DEFAULT (0) FOR [F_SLS8],
	CONSTRAINT [DF__SYZZ__F_SLS9__76177A41] DEFAULT (0) FOR [F_SLS9],
	CONSTRAINT [DF__SYZZ__F_SLS10__770B9E7A] DEFAULT (0) FOR [F_SLS10],
	CONSTRAINT [DF__SYZZ__F_SLS11__77FFC2B3] DEFAULT (0) FOR [F_SLS11],
	CONSTRAINT [DF__SYZZ__F_SLS12__78F3E6EC] DEFAULT (0) FOR [F_SLS12],
	CONSTRAINT [DF__SYZZ__F_JES1__79E80B25] DEFAULT (0) FOR [F_JES1],
	CONSTRAINT [DF__SYZZ__F_JES2__7ADC2F5E] DEFAULT (0) FOR [F_JES2],
	CONSTRAINT [DF__SYZZ__F_JES3__7BD05397] DEFAULT (0) FOR [F_JES3],
	CONSTRAINT [DF__SYZZ__F_JES4__7CC477D0] DEFAULT (0) FOR [F_JES4],
	CONSTRAINT [DF__SYZZ__F_JES5__7DB89C09] DEFAULT (0) FOR [F_JES5],
	CONSTRAINT [DF__SYZZ__F_JES6__7EACC042] DEFAULT (0) FOR [F_JES6],
	CONSTRAINT [DF__SYZZ__F_JES7__7FA0E47B] DEFAULT (0) FOR [F_JES7],
	CONSTRAINT [DF__SYZZ__F_JES8__009508B4] DEFAULT (0) FOR [F_JES8],
	CONSTRAINT [DF__SYZZ__F_JES9__01892CED] DEFAULT (0) FOR [F_JES9],
	CONSTRAINT [DF__SYZZ__F_JES10__027D5126] DEFAULT (0) FOR [F_JES10],
	CONSTRAINT [DF__SYZZ__F_JES11__0371755F] DEFAULT (0) FOR [F_JES11],
	CONSTRAINT [DF__SYZZ__F_JES12__04659998] DEFAULT (0) FOR [F_JES12],
	CONSTRAINT [DF__SYZZ__F_SLF1__0559BDD1] DEFAULT (0) FOR [F_SLF1],
	CONSTRAINT [DF__SYZZ__F_SLF2__064DE20A] DEFAULT (0) FOR [F_SLF2],
	CONSTRAINT [DF__SYZZ__F_SLF3__07420643] DEFAULT (0) FOR [F_SLF3],
	CONSTRAINT [DF__SYZZ__F_SLF4__08362A7C] DEFAULT (0) FOR [F_SLF4],
	CONSTRAINT [DF__SYZZ__F_SLF5__092A4EB5] DEFAULT (0) FOR [F_SLF5],
	CONSTRAINT [DF__SYZZ__F_SLF6__0A1E72EE] DEFAULT (0) FOR [F_SLF6],
	CONSTRAINT [DF__SYZZ__F_SLF7__0B129727] DEFAULT (0) FOR [F_SLF7],
	CONSTRAINT [DF__SYZZ__F_SLF8__0C06BB60] DEFAULT (0) FOR [F_SLF8],
	CONSTRAINT [DF__SYZZ__F_SLF9__0CFADF99] DEFAULT (0) FOR [F_SLF9],
	CONSTRAINT [DF__SYZZ__F_SLF10__0DEF03D2] DEFAULT (0) FOR [F_SLF10],
	CONSTRAINT [DF__SYZZ__F_SLF11__0EE3280B] DEFAULT (0) FOR [F_SLF11],
	CONSTRAINT [DF__SYZZ__F_SLF12__0FD74C44] DEFAULT (0) FOR [F_SLF12],
	CONSTRAINT [DF__SYZZ__F_JEF1__10CB707D] DEFAULT (0) FOR [F_JEF1],
	CONSTRAINT [DF__SYZZ__F_JEF2__11BF94B6] DEFAULT (0) FOR [F_JEF2],
	CONSTRAINT [DF__SYZZ__F_JEF3__12B3B8EF] DEFAULT (0) FOR [F_JEF3],
	CONSTRAINT [DF__SYZZ__F_JEF4__13A7DD28] DEFAULT (0) FOR [F_JEF4],
	CONSTRAINT [DF__SYZZ__F_JEF5__149C0161] DEFAULT (0) FOR [F_JEF5],
	CONSTRAINT [DF__SYZZ__F_JEF6__1590259A] DEFAULT (0) FOR [F_JEF6],
	CONSTRAINT [DF__SYZZ__F_JEF7__168449D3] DEFAULT (0) FOR [F_JEF7],
	CONSTRAINT [DF__SYZZ__F_JEF8__17786E0C] DEFAULT (0) FOR [F_JEF8],
	CONSTRAINT [DF__SYZZ__F_JEF9__186C9245] DEFAULT (0) FOR [F_JEF9],
	CONSTRAINT [DF__SYZZ__F_JEF10__1960B67E] DEFAULT (0) FOR [F_JEF10],
	CONSTRAINT [DF__SYZZ__F_JEF11__1A54DAB7] DEFAULT (0) FOR [F_JEF11],
	CONSTRAINT [DF__SYZZ__F_JEF12__1B48FEF0] DEFAULT (0) FOR [F_JEF12],
	CONSTRAINT [DF__SYZZ__F_SE1__1C3D2329] DEFAULT (0) FOR [F_SE1],
	CONSTRAINT [DF__SYZZ__F_SE2__1D314762] DEFAULT (0) FOR [F_SE2],
	CONSTRAINT [DF__SYZZ__F_SE3__1E256B9B] DEFAULT (0) FOR [F_SE3],
	CONSTRAINT [DF__SYZZ__F_SE4__1F198FD4] DEFAULT (0) FOR [F_SE4],
	CONSTRAINT [DF__SYZZ__F_SE5__200DB40D] DEFAULT (0) FOR [F_SE5],
	CONSTRAINT [DF__SYZZ__F_SE6__2101D846] DEFAULT (0) FOR [F_SE6],
	CONSTRAINT [DF__SYZZ__F_SE7__21F5FC7F] DEFAULT (0) FOR [F_SE7],
	CONSTRAINT [DF__SYZZ__F_SE8__22EA20B8] DEFAULT (0) FOR [F_SE8],
	CONSTRAINT [DF__SYZZ__F_SE9__23DE44F1] DEFAULT (0) FOR [F_SE9],
	CONSTRAINT [DF__SYZZ__F_SE10__24D2692A] DEFAULT (0) FOR [F_SE10],
	CONSTRAINT [DF__SYZZ__F_SE11__25C68D63] DEFAULT (0) FOR [F_SE11],
	CONSTRAINT [DF__SYZZ__F_SE12__26BAB19C] DEFAULT (0) FOR [F_SE12]
GO

ALTER TABLE [dbo].[VIP] ADD 
	CONSTRAINT [DF__VIP__f_ljxf__30441BD6] DEFAULT (0) FOR [f_ljxf],
	CONSTRAINT [DF__VIP__f_grade__3138400F] DEFAULT (0) FOR [f_grade]
GO

ALTER TABLE [dbo].[VIP2] ADD 
	CONSTRAINT [DF__VIP2__f_ljxf__33208881] DEFAULT (0) FOR [f_ljxf],
	CONSTRAINT [DF__VIP2__f_grade__3414ACBA] DEFAULT (0) FOR [f_grade]
GO

ALTER TABLE [dbo].[XHDMX] ADD 
	CONSTRAINT [DF__XHDMX__F_SL__38D961D7] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__XHDMX__F_DJ__39CD8610] DEFAULT (0) FOR [F_DJ],
	CONSTRAINT [DF__XHDMX__F_KL__3AC1AA49] DEFAULT (0) FOR [F_KL],
	CONSTRAINT [DF__XHDMX__F_JE__3BB5CE82] DEFAULT (0) FOR [F_JE],
	CONSTRAINT [DF__XHDMX__F_SLV__3CA9F2BB] DEFAULT (0) FOR [F_SLV],
	CONSTRAINT [DF__XHDMX__F_SE__3D9E16F4] DEFAULT (0) FOR [F_SE],
	CONSTRAINT [DF__XHDMX__F_CB__3E923B2D] DEFAULT (0) FOR [F_CB],
	CONSTRAINT [DF__XHDMX__F_HJ__3F865F66] DEFAULT (0) FOR [F_HJ],
	CONSTRAINT [DF__XHDMX__F_UN__407A839F] DEFAULT (0) FOR [F_UN],
	CONSTRAINT [DF__XHDMX__f_color__416EA7D8] DEFAULT ('') FOR [f_color],
	CONSTRAINT [DF__XHDMX__f_s1__4262CC11] DEFAULT (0) FOR [f_s1],
	CONSTRAINT [DF__XHDMX__f_s2__4356F04A] DEFAULT (0) FOR [f_s2],
	CONSTRAINT [DF__XHDMX__f_s3__444B1483] DEFAULT (0) FOR [f_s3],
	CONSTRAINT [DF__XHDMX__f_s4__453F38BC] DEFAULT (0) FOR [f_s4],
	CONSTRAINT [DF__XHDMX__f_s5__46335CF5] DEFAULT (0) FOR [f_s5],
	CONSTRAINT [DF__XHDMX__f_s6__4727812E] DEFAULT (0) FOR [f_s6],
	CONSTRAINT [DF__XHDMX__f_s7__481BA567] DEFAULT (0) FOR [f_s7],
	CONSTRAINT [DF__XHDMX__f_s8__490FC9A0] DEFAULT (0) FOR [f_s8],
	CONSTRAINT [DF__XHDMX__f_s9__4A03EDD9] DEFAULT (0) FOR [f_s9],
	CONSTRAINT [DF__XHDMX__f_s10__4AF81212] DEFAULT (0) FOR [f_s10],
	CONSTRAINT [DF__XHDMX__f_s11__4BEC364B] DEFAULT (0) FOR [f_s11],
	CONSTRAINT [DF__XHDMX__f_s12__4CE05A84] DEFAULT (0) FOR [f_s12],
	CONSTRAINT [DF__XHDMX__f_s13__4DD47EBD] DEFAULT (0) FOR [f_s13],
	CONSTRAINT [DF__XHDMX__f_s14__4EC8A2F6] DEFAULT (0) FOR [f_s14],
	CONSTRAINT [DF__XHDMX__f_s15__4FBCC72F] DEFAULT (0) FOR [f_s15],
	CONSTRAINT [DF__XHDMX__f_s16__50B0EB68] DEFAULT (0) FOR [f_s16],
	CONSTRAINT [DF__XHDMX__f_s17__51A50FA1] DEFAULT (0) FOR [f_s17],
	CONSTRAINT [DF__XHDMX__f_s18__529933DA] DEFAULT (0) FOR [f_s18],
	CONSTRAINT [DF__XHDMX__f_s19__538D5813] DEFAULT (0) FOR [f_s19],
	CONSTRAINT [DF__XHDMX__f_s20__54817C4C] DEFAULT (0) FOR [f_s20]
GO

ALTER TABLE [dbo].[XHDMX2] ADD 
	CONSTRAINT [DF__XHDMX2__F_SL__5669C4BE] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__XHDMX2__F_DJ__575DE8F7] DEFAULT (0) FOR [F_DJ],
	CONSTRAINT [DF__XHDMX2__F_KL__58520D30] DEFAULT (0) FOR [F_KL],
	CONSTRAINT [DF__XHDMX2__F_JE__59463169] DEFAULT (0) FOR [F_JE],
	CONSTRAINT [DF__XHDMX2__F_SLV__5A3A55A2] DEFAULT (0) FOR [F_SLV],
	CONSTRAINT [DF__XHDMX2__F_SE__5B2E79DB] DEFAULT (0) FOR [F_SE],
	CONSTRAINT [DF__XHDMX2__F_CB__5C229E14] DEFAULT (0) FOR [F_CB],
	CONSTRAINT [DF__XHDMX2__F_HJ__5D16C24D] DEFAULT (0) FOR [F_HJ],
	CONSTRAINT [DF__XHDMX2__f_color__5E0AE686] DEFAULT ('') FOR [f_color],
	CONSTRAINT [DF__XHDMX2__f_s1__5EFF0ABF] DEFAULT (0) FOR [f_s1],
	CONSTRAINT [DF__XHDMX2__f_s2__5FF32EF8] DEFAULT (0) FOR [f_s2],
	CONSTRAINT [DF__XHDMX2__f_s3__60E75331] DEFAULT (0) FOR [f_s3],
	CONSTRAINT [DF__XHDMX2__f_s4__61DB776A] DEFAULT (0) FOR [f_s4],
	CONSTRAINT [DF__XHDMX2__f_s5__62CF9BA3] DEFAULT (0) FOR [f_s5],
	CONSTRAINT [DF__XHDMX2__f_s6__63C3BFDC] DEFAULT (0) FOR [f_s6],
	CONSTRAINT [DF__XHDMX2__f_s7__64B7E415] DEFAULT (0) FOR [f_s7],
	CONSTRAINT [DF__XHDMX2__f_s8__65AC084E] DEFAULT (0) FOR [f_s8],
	CONSTRAINT [DF__XHDMX2__f_s9__66A02C87] DEFAULT (0) FOR [f_s9],
	CONSTRAINT [DF__XHDMX2__f_s10__679450C0] DEFAULT (0) FOR [f_s10],
	CONSTRAINT [DF__XHDMX2__f_s11__688874F9] DEFAULT (0) FOR [f_s11],
	CONSTRAINT [DF__XHDMX2__f_s12__697C9932] DEFAULT (0) FOR [f_s12],
	CONSTRAINT [DF__XHDMX2__f_s13__6A70BD6B] DEFAULT (0) FOR [f_s13],
	CONSTRAINT [DF__XHDMX2__f_s14__6B64E1A4] DEFAULT (0) FOR [f_s14],
	CONSTRAINT [DF__XHDMX2__f_s15__6C5905DD] DEFAULT (0) FOR [f_s15],
	CONSTRAINT [DF__XHDMX2__f_s16__6D4D2A16] DEFAULT (0) FOR [f_s16],
	CONSTRAINT [DF__XHDMX2__f_s17__6E414E4F] DEFAULT (0) FOR [f_s17],
	CONSTRAINT [DF__XHDMX2__f_s18__6F357288] DEFAULT (0) FOR [f_s18],
	CONSTRAINT [DF__XHDMX2__f_s19__702996C1] DEFAULT (0) FOR [f_s19],
	CONSTRAINT [DF__XHDMX2__f_s20__711DBAFA] DEFAULT (0) FOR [f_s20]
GO

ALTER TABLE [dbo].[XHDMX3] ADD 
	CONSTRAINT [DF__XHDMX3__f_color__7306036C] DEFAULT ('') FOR [f_color],
	CONSTRAINT [DF__XHDMX3__f_s1__73FA27A5] DEFAULT (0) FOR [f_s1],
	CONSTRAINT [DF__XHDMX3__f_s2__74EE4BDE] DEFAULT (0) FOR [f_s2],
	CONSTRAINT [DF__XHDMX3__f_s3__75E27017] DEFAULT (0) FOR [f_s3],
	CONSTRAINT [DF__XHDMX3__f_s4__76D69450] DEFAULT (0) FOR [f_s4],
	CONSTRAINT [DF__XHDMX3__f_s5__77CAB889] DEFAULT (0) FOR [f_s5],
	CONSTRAINT [DF__XHDMX3__f_s6__78BEDCC2] DEFAULT (0) FOR [f_s6],
	CONSTRAINT [DF__XHDMX3__f_s7__79B300FB] DEFAULT (0) FOR [f_s7],
	CONSTRAINT [DF__XHDMX3__f_s8__7AA72534] DEFAULT (0) FOR [f_s8],
	CONSTRAINT [DF__XHDMX3__f_s9__7B9B496D] DEFAULT (0) FOR [f_s9],
	CONSTRAINT [DF__XHDMX3__f_s10__7C8F6DA6] DEFAULT (0) FOR [f_s10],
	CONSTRAINT [DF__XHDMX3__f_s11__7D8391DF] DEFAULT (0) FOR [f_s11],
	CONSTRAINT [DF__XHDMX3__f_s12__7E77B618] DEFAULT (0) FOR [f_s12],
	CONSTRAINT [DF__XHDMX3__f_s13__7F6BDA51] DEFAULT (0) FOR [f_s13],
	CONSTRAINT [DF__XHDMX3__f_s14__005FFE8A] DEFAULT (0) FOR [f_s14],
	CONSTRAINT [DF__XHDMX3__f_s15__015422C3] DEFAULT (0) FOR [f_s15],
	CONSTRAINT [DF__XHDMX3__f_s16__024846FC] DEFAULT (0) FOR [f_s16],
	CONSTRAINT [DF__XHDMX3__f_s17__033C6B35] DEFAULT (0) FOR [f_s17],
	CONSTRAINT [DF__XHDMX3__f_s18__04308F6E] DEFAULT (0) FOR [f_s18],
	CONSTRAINT [DF__XHDMX3__f_s19__0524B3A7] DEFAULT (0) FOR [f_s19],
	CONSTRAINT [DF__XHDMX3__f_s20__0618D7E0] DEFAULT (0) FOR [f_s20]
GO

ALTER TABLE [dbo].[XHDMXMX] ADD 
	CONSTRAINT [DF__XHDMXMX__F_SL__08012052] DEFAULT (0) FOR [F_SL]
GO

ALTER TABLE [dbo].[XHDMXMX2] ADD 
	CONSTRAINT [DF__XHDMXMX2__F_SL__09E968C4] DEFAULT (0) FOR [F_SL]
GO

ALTER TABLE [dbo].[XHDMXMX3] ADD 
	CONSTRAINT [DF__XHDMXMX3__F_SL__0BD1B136] DEFAULT (0) FOR [F_SL]
GO

ALTER TABLE [dbo].[XSBB] ADD 
	CONSTRAINT [DF__XSBB__F_TOP__0DB9F9A8] DEFAULT (0) FOR [F_TOP],
	CONSTRAINT [DF__XSBB__F_LEFT__0EAE1DE1] DEFAULT (0) FOR [F_LEFT],
	CONSTRAINT [DF__XSBB__F_ROWS__0FA2421A] DEFAULT (35) FOR [F_ROWS],
	CONSTRAINT [DF__XSBB__F_SIZE__10966653] DEFAULT (39) FOR [F_SIZE],
	CONSTRAINT [DF__XSBB__F_LENGTH__118A8A8C] DEFAULT (2794) FOR [F_LENGTH],
	CONSTRAINT [DF__XSBB__F_WIDTH__127EAEC5] DEFAULT (3734) FOR [F_WIDTH],
	CONSTRAINT [DF__XSBB__F_ORIENT__1372D2FE] DEFAULT (1) FOR [F_ORIENT],
	CONSTRAINT [DF__XSBB__F_HZ__1466F737] DEFAULT (0) FOR [F_HZ],
	CONSTRAINT [DF__XSBB__F_TITLEFON__155B1B70] DEFAULT ('宋体,18,1000') FOR [F_TITLEFONT],
	CONSTRAINT [DF__XSBB__F_BBFONT__164F3FA9] DEFAULT ('宋体,10,0000') FOR [F_BBFONT],
	CONSTRAINT [DF__XSBB__F_COLNUMBE__174363E2] DEFAULT (10) FOR [F_COLNUMBER],
	CONSTRAINT [DF__XSBB__F_COLCAPTI__1837881B] DEFAULT ('代码,名称,单位,销售数量,销售金额,销售成本,销售毛利,毛利率,销售税金,价税合计,') FOR [F_COLCAPTION],
	CONSTRAINT [DF__XSBB__F_COLWIDTH__192BAC54] DEFAULT ('7,15,3,7,7,7,7,7,7,7,') FOR [F_COLWIDTH]
GO

ALTER TABLE [dbo].[XSMXZ] ADD 
	CONSTRAINT [DF__XSMXZ__F_SL__1C0818FF] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__XSMXZ__F_JE__1CFC3D38] DEFAULT (0) FOR [F_JE],
	CONSTRAINT [DF__XSMXZ__F_CB__1DF06171] DEFAULT (0) FOR [F_CB],
	CONSTRAINT [DF__XSMXZ__F_DJ__1EE485AA] DEFAULT (0) FOR [F_DJ],
	CONSTRAINT [DF__XSMXZ__F_SE__1FD8A9E3] DEFAULT (0) FOR [F_SE]
GO

 CREATE  INDEX [xsmxz_date] ON [dbo].[XSMXZ]([F_DATE]) ON [PRIMARY]
GO

 CREATE  INDEX [xsmxz_djh] ON [dbo].[XSMXZ]([F_DJH]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[XSZZ] ADD 
	CONSTRAINT [DF__XSZZ__F_SL1__21C0F255] DEFAULT (0) FOR [F_SL1],
	CONSTRAINT [DF__XSZZ__F_SL2__22B5168E] DEFAULT (0) FOR [F_SL2],
	CONSTRAINT [DF__XSZZ__F_SL3__23A93AC7] DEFAULT (0) FOR [F_SL3],
	CONSTRAINT [DF__XSZZ__F_SL4__249D5F00] DEFAULT (0) FOR [F_SL4],
	CONSTRAINT [DF__XSZZ__F_SL5__25918339] DEFAULT (0) FOR [F_SL5],
	CONSTRAINT [DF__XSZZ__F_SL6__2685A772] DEFAULT (0) FOR [F_SL6],
	CONSTRAINT [DF__XSZZ__F_SL7__2779CBAB] DEFAULT (0) FOR [F_SL7],
	CONSTRAINT [DF__XSZZ__F_SL8__286DEFE4] DEFAULT (0) FOR [F_SL8],
	CONSTRAINT [DF__XSZZ__F_SL9__2962141D] DEFAULT (0) FOR [F_SL9],
	CONSTRAINT [DF__XSZZ__F_SL10__2A563856] DEFAULT (0) FOR [F_SL10],
	CONSTRAINT [DF__XSZZ__F_SL11__2B4A5C8F] DEFAULT (0) FOR [F_SL11],
	CONSTRAINT [DF__XSZZ__F_SL12__2C3E80C8] DEFAULT (0) FOR [F_SL12],
	CONSTRAINT [DF__XSZZ__F_JE1__2D32A501] DEFAULT (0) FOR [F_JE1],
	CONSTRAINT [DF__XSZZ__F_JE2__2E26C93A] DEFAULT (0) FOR [F_JE2],
	CONSTRAINT [DF__XSZZ__F_JE3__2F1AED73] DEFAULT (0) FOR [F_JE3],
	CONSTRAINT [DF__XSZZ__F_JE4__300F11AC] DEFAULT (0) FOR [F_JE4],
	CONSTRAINT [DF__XSZZ__F_JE5__310335E5] DEFAULT (0) FOR [F_JE5],
	CONSTRAINT [DF__XSZZ__F_JE6__31F75A1E] DEFAULT (0) FOR [F_JE6],
	CONSTRAINT [DF__XSZZ__F_JE7__32EB7E57] DEFAULT (0) FOR [F_JE7],
	CONSTRAINT [DF__XSZZ__F_JE8__33DFA290] DEFAULT (0) FOR [F_JE8],
	CONSTRAINT [DF__XSZZ__F_JE9__34D3C6C9] DEFAULT (0) FOR [F_JE9],
	CONSTRAINT [DF__XSZZ__F_JE10__35C7EB02] DEFAULT (0) FOR [F_JE10],
	CONSTRAINT [DF__XSZZ__F_JE11__36BC0F3B] DEFAULT (0) FOR [F_JE11],
	CONSTRAINT [DF__XSZZ__F_JE12__37B03374] DEFAULT (0) FOR [F_JE12],
	CONSTRAINT [DF__XSZZ__F_CB1__38A457AD] DEFAULT (0) FOR [F_CB1],
	CONSTRAINT [DF__XSZZ__F_CB2__39987BE6] DEFAULT (0) FOR [F_CB2],
	CONSTRAINT [DF__XSZZ__F_CB3__3A8CA01F] DEFAULT (0) FOR [F_CB3],
	CONSTRAINT [DF__XSZZ__F_CB4__3B80C458] DEFAULT (0) FOR [F_CB4],
	CONSTRAINT [DF__XSZZ__F_CB5__3C74E891] DEFAULT (0) FOR [F_CB5],
	CONSTRAINT [DF__XSZZ__F_CB6__3D690CCA] DEFAULT (0) FOR [F_CB6],
	CONSTRAINT [DF__XSZZ__F_CB7__3E5D3103] DEFAULT (0) FOR [F_CB7],
	CONSTRAINT [DF__XSZZ__F_CB8__3F51553C] DEFAULT (0) FOR [F_CB8],
	CONSTRAINT [DF__XSZZ__F_CB9__40457975] DEFAULT (0) FOR [F_CB9],
	CONSTRAINT [DF__XSZZ__F_CB10__41399DAE] DEFAULT (0) FOR [F_CB10],
	CONSTRAINT [DF__XSZZ__F_CB11__422DC1E7] DEFAULT (0) FOR [F_CB11],
	CONSTRAINT [DF__XSZZ__F_CB12__4321E620] DEFAULT (0) FOR [F_CB12],
	CONSTRAINT [DF__XSZZ__F_SE1__44160A59] DEFAULT (0) FOR [F_SE1],
	CONSTRAINT [DF__XSZZ__F_SE2__450A2E92] DEFAULT (0) FOR [F_SE2],
	CONSTRAINT [DF__XSZZ__F_SE3__45FE52CB] DEFAULT (0) FOR [F_SE3],
	CONSTRAINT [DF__XSZZ__F_SE4__46F27704] DEFAULT (0) FOR [F_SE4],
	CONSTRAINT [DF__XSZZ__F_SE5__47E69B3D] DEFAULT (0) FOR [F_SE5],
	CONSTRAINT [DF__XSZZ__F_SE6__48DABF76] DEFAULT (0) FOR [F_SE6],
	CONSTRAINT [DF__XSZZ__F_SE7__49CEE3AF] DEFAULT (0) FOR [F_SE7],
	CONSTRAINT [DF__XSZZ__F_SE8__4AC307E8] DEFAULT (0) FOR [F_SE8],
	CONSTRAINT [DF__XSZZ__F_SE9__4BB72C21] DEFAULT (0) FOR [F_SE9],
	CONSTRAINT [DF__XSZZ__F_SE10__4CAB505A] DEFAULT (0) FOR [F_SE10],
	CONSTRAINT [DF__XSZZ__F_SE11__4D9F7493] DEFAULT (0) FOR [F_SE11],
	CONSTRAINT [DF__XSZZ__F_SE12__4E9398CC] DEFAULT (0) FOR [F_SE12]
GO

ALTER TABLE [dbo].[YFHXZ] ADD 
	CONSTRAINT [DF__YFHXZ__f_jh__507BE13E] DEFAULT (0) FOR [f_jh],
	CONSTRAINT [DF__YFHXZ__f_fk__51700577] DEFAULT (0) FOR [f_fk],
	CONSTRAINT [DF__YFHXZ__f_hxje__526429B0] DEFAULT (0) FOR [f_hxje]
GO

 CREATE  INDEX [YFHXZ_date] ON [dbo].[YFHXZ]([f_date]) ON [PRIMARY]
GO

 CREATE  INDEX [YFHXZ_datesk] ON [dbo].[YFHXZ]([f_datefk]) ON [PRIMARY]
GO

 CREATE  INDEX [YFHXZ_datexs] ON [dbo].[YFHXZ]([f_datejh]) ON [PRIMARY]
GO

 CREATE  INDEX [YFHXZ_djhfk] ON [dbo].[YFHXZ]([f_djhfk]) ON [PRIMARY]
GO

 CREATE  INDEX [YFHXZ_djhjh] ON [dbo].[YFHXZ]([f_djhjh]) ON [PRIMARY]
GO

 CREATE  INDEX [YFHXZ_vendor] ON [dbo].[YFHXZ]([f_vendor]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[YFMXZ] ADD 
	CONSTRAINT [DF__YFMXZ__F_SR__5540965B] DEFAULT (0) FOR [F_SR],
	CONSTRAINT [DF__YFMXZ__F_FC__5634BA94] DEFAULT (0) FOR [F_FC],
	CONSTRAINT [DF__YFMXZ__f_ye__5728DECD] DEFAULT (0) FOR [f_ye],
	CONSTRAINT [DF__YFMXZ__f_hxje__581D0306] DEFAULT (0) FOR [f_hxje]
GO

ALTER TABLE [dbo].[YFZZ] ADD 
	CONSTRAINT [DF__YFZZ__F_QCYE__5A054B78] DEFAULT (0) FOR [F_QCYE],
	CONSTRAINT [DF__YFZZ__F_QMYE__5AF96FB1] DEFAULT (0) FOR [F_QMYE],
	CONSTRAINT [DF__YFZZ__F_J1__5BED93EA] DEFAULT (0) FOR [F_J1],
	CONSTRAINT [DF__YFZZ__F_D1__5CE1B823] DEFAULT (0) FOR [F_D1],
	CONSTRAINT [DF__YFZZ__F_J2__5DD5DC5C] DEFAULT (0) FOR [F_J2],
	CONSTRAINT [DF__YFZZ__F_D2__5ECA0095] DEFAULT (0) FOR [F_D2],
	CONSTRAINT [DF__YFZZ__F_J3__5FBE24CE] DEFAULT (0) FOR [F_J3],
	CONSTRAINT [DF__YFZZ__F_D3__60B24907] DEFAULT (0) FOR [F_D3],
	CONSTRAINT [DF__YFZZ__F_J4__61A66D40] DEFAULT (0) FOR [F_J4],
	CONSTRAINT [DF__YFZZ__F_D4__629A9179] DEFAULT (0) FOR [F_D4],
	CONSTRAINT [DF__YFZZ__F_J5__638EB5B2] DEFAULT (0) FOR [F_J5],
	CONSTRAINT [DF__YFZZ__F_D5__6482D9EB] DEFAULT (0) FOR [F_D5],
	CONSTRAINT [DF__YFZZ__F_J6__6576FE24] DEFAULT (0) FOR [F_J6],
	CONSTRAINT [DF__YFZZ__F_D6__666B225D] DEFAULT (0) FOR [F_D6],
	CONSTRAINT [DF__YFZZ__F_J7__675F4696] DEFAULT (0) FOR [F_J7],
	CONSTRAINT [DF__YFZZ__F_D7__68536ACF] DEFAULT (0) FOR [F_D7],
	CONSTRAINT [DF__YFZZ__F_J8__69478F08] DEFAULT (0) FOR [F_J8],
	CONSTRAINT [DF__YFZZ__F_D8__6A3BB341] DEFAULT (0) FOR [F_D8],
	CONSTRAINT [DF__YFZZ__F_J9__6B2FD77A] DEFAULT (0) FOR [F_J9],
	CONSTRAINT [DF__YFZZ__F_D9__6C23FBB3] DEFAULT (0) FOR [F_D9],
	CONSTRAINT [DF__YFZZ__F_J10__6D181FEC] DEFAULT (0) FOR [F_J10],
	CONSTRAINT [DF__YFZZ__F_D10__6E0C4425] DEFAULT (0) FOR [F_D10],
	CONSTRAINT [DF__YFZZ__F_J11__6F00685E] DEFAULT (0) FOR [F_J11],
	CONSTRAINT [DF__YFZZ__F_D11__6FF48C97] DEFAULT (0) FOR [F_D11],
	CONSTRAINT [DF__YFZZ__F_J12__70E8B0D0] DEFAULT (0) FOR [F_J12],
	CONSTRAINT [DF__YFZZ__F_D12__71DCD509] DEFAULT (0) FOR [F_D12]
GO

ALTER TABLE [dbo].[YSHXZ] ADD 
	CONSTRAINT [DF__YSHXZ__f_xs__73C51D7B] DEFAULT (0) FOR [f_xs],
	CONSTRAINT [DF__YSHXZ__f_sk__74B941B4] DEFAULT (0) FOR [f_sk],
	CONSTRAINT [DF__YSHXZ__f_hxje__75AD65ED] DEFAULT (0) FOR [f_hxje]
GO

 CREATE  INDEX [YSHXZ_custom] ON [dbo].[YSHXZ]([f_custom]) ON [PRIMARY]
GO

 CREATE  INDEX [YSHXZ_date] ON [dbo].[YSHXZ]([f_date]) ON [PRIMARY]
GO

 CREATE  INDEX [YSHXZ_datesk] ON [dbo].[YSHXZ]([f_datesk]) ON [PRIMARY]
GO

 CREATE  INDEX [YSHXZ_datexs] ON [dbo].[YSHXZ]([f_datexs]) ON [PRIMARY]
GO

 CREATE  INDEX [YSHXZ_djhsk] ON [dbo].[YSHXZ]([f_djhsk]) ON [PRIMARY]
GO

 CREATE  INDEX [YSHXZ_djhxs] ON [dbo].[YSHXZ]([f_djhxs]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[YSMXZ] ADD 
	CONSTRAINT [DF__YSMXZ__F_SR__7889D298] DEFAULT (0) FOR [F_SR],
	CONSTRAINT [DF__YSMXZ__F_FC__797DF6D1] DEFAULT (0) FOR [F_FC],
	CONSTRAINT [DF__YSMXZ__f_ye__7A721B0A] DEFAULT (0) FOR [f_ye],
	CONSTRAINT [DF__YSMXZ__f_hxje__7B663F43] DEFAULT (0) FOR [f_hxje]
GO

ALTER TABLE [dbo].[YSZZ] ADD 
	CONSTRAINT [DF__YSZZ__F_QCYE__7D4E87B5] DEFAULT (0) FOR [F_QCYE],
	CONSTRAINT [DF__YSZZ__F_QMYE__7E42ABEE] DEFAULT (0) FOR [F_QMYE],
	CONSTRAINT [DF__YSZZ__F_J1__7F36D027] DEFAULT (0) FOR [F_J1],
	CONSTRAINT [DF__YSZZ__F_D1__002AF460] DEFAULT (0) FOR [F_D1],
	CONSTRAINT [DF__YSZZ__F_J2__011F1899] DEFAULT (0) FOR [F_J2],
	CONSTRAINT [DF__YSZZ__F_D2__02133CD2] DEFAULT (0) FOR [F_D2],
	CONSTRAINT [DF__YSZZ__F_J3__0307610B] DEFAULT (0) FOR [F_J3],
	CONSTRAINT [DF__YSZZ__F_D3__03FB8544] DEFAULT (0) FOR [F_D3],
	CONSTRAINT [DF__YSZZ__F_J4__04EFA97D] DEFAULT (0) FOR [F_J4],
	CONSTRAINT [DF__YSZZ__F_D4__05E3CDB6] DEFAULT (0) FOR [F_D4],
	CONSTRAINT [DF__YSZZ__F_J5__06D7F1EF] DEFAULT (0) FOR [F_J5],
	CONSTRAINT [DF__YSZZ__F_D5__07CC1628] DEFAULT (0) FOR [F_D5],
	CONSTRAINT [DF__YSZZ__F_J6__08C03A61] DEFAULT (0) FOR [F_J6],
	CONSTRAINT [DF__YSZZ__F_D6__09B45E9A] DEFAULT (0) FOR [F_D6],
	CONSTRAINT [DF__YSZZ__F_J7__0AA882D3] DEFAULT (0) FOR [F_J7],
	CONSTRAINT [DF__YSZZ__F_D7__0B9CA70C] DEFAULT (0) FOR [F_D7],
	CONSTRAINT [DF__YSZZ__F_J8__0C90CB45] DEFAULT (0) FOR [F_J8],
	CONSTRAINT [DF__YSZZ__F_D8__0D84EF7E] DEFAULT (0) FOR [F_D8],
	CONSTRAINT [DF__YSZZ__F_J9__0E7913B7] DEFAULT (0) FOR [F_J9],
	CONSTRAINT [DF__YSZZ__F_D9__0F6D37F0] DEFAULT (0) FOR [F_D9],
	CONSTRAINT [DF__YSZZ__F_J10__10615C29] DEFAULT (0) FOR [F_J10],
	CONSTRAINT [DF__YSZZ__F_D10__11558062] DEFAULT (0) FOR [F_D10],
	CONSTRAINT [DF__YSZZ__F_J11__1249A49B] DEFAULT (0) FOR [F_J11],
	CONSTRAINT [DF__YSZZ__F_D11__133DC8D4] DEFAULT (0) FOR [F_D11],
	CONSTRAINT [DF__YSZZ__F_J12__1431ED0D] DEFAULT (0) FOR [F_J12],
	CONSTRAINT [DF__YSZZ__F_D12__15261146] DEFAULT (0) FOR [F_D12]
GO

ALTER TABLE [dbo].[ZLFX_C_DAY] ADD 
	CONSTRAINT [DF__ZLFX_C_DA__f_day__18F6A22A] DEFAULT (0) FOR [f_day]
GO

ALTER TABLE [dbo].[ZLFX_C_KJQJ] ADD 
	CONSTRAINT [DF__ZLFX_C_KJ__f_day__1ADEEA9C] DEFAULT (0) FOR [f_day]
GO

ALTER TABLE [dbo].[ZLFX_C_YEAR] ADD 
	CONSTRAINT [DF__ZLFX_C_YE__f_day__1CC7330E] DEFAULT (0) FOR [f_day]
GO

ALTER TABLE [dbo].[ZLFX_V_DAY] ADD 
	CONSTRAINT [DF__ZLFX_V_DA__f_day__1EAF7B80] DEFAULT (0) FOR [f_day]
GO

ALTER TABLE [dbo].[ZLFX_V_KJQJ] ADD 
	CONSTRAINT [DF__ZLFX_V_KJ__f_day__2097C3F2] DEFAULT (0) FOR [f_day]
GO

ALTER TABLE [dbo].[ZLFX_V_YEAR] ADD 
	CONSTRAINT [DF__ZLFX_V_YE__f_day__22800C64] DEFAULT (0) FOR [f_day]
GO

ALTER TABLE [dbo].[ZZDMX] ADD 
	CONSTRAINT [DF__ZZDMX__F_DJ__2A212E2C] DEFAULT (0) FOR [F_DJ],
	CONSTRAINT [DF__ZZDMX__F_SL__2B155265] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__ZZDMX__F_JE__2C09769E] DEFAULT (0) FOR [F_JE]
GO

ALTER TABLE [dbo].[ZZDMX2] ADD 
	CONSTRAINT [DF__ZZDMX2__F_DJ__2DF1BF10] DEFAULT (0) FOR [F_DJ],
	CONSTRAINT [DF__ZZDMX2__F_SL__2EE5E349] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__ZZDMX2__F_JE__2FDA0782] DEFAULT (0) FOR [F_JE]
GO

ALTER TABLE [dbo].[ZZDMX3] ADD 
	CONSTRAINT [DF__ZZDMX3__F_DJ__31C24FF4] DEFAULT (0) FOR [F_DJ],
	CONSTRAINT [DF__ZZDMX3__F_SL__32B6742D] DEFAULT (0) FOR [F_SL],
	CONSTRAINT [DF__ZZDMX3__F_JE__33AA9866] DEFAULT (0) FOR [F_JE]
GO

ALTER TABLE [dbo].[CGD] ADD 
	 FOREIGN KEY 
	(
		[F_BM]
	) REFERENCES [dbo].[BM] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_HW]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[f_type]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_VENDOR]
	) REFERENCES [dbo].[VENDOR] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[CGD2] ADD 
	 FOREIGN KEY 
	(
		[F_BM]
	) REFERENCES [dbo].[BM] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_HW]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[f_type]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_VENDOR]
	) REFERENCES [dbo].[VENDOR] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[CGDMX] ADD 
	 FOREIGN KEY 
	(
		[f_color]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[f_color]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[CGDMX2] ADD 
	 FOREIGN KEY 
	(
		[f_color]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[CGDMXMX] ADD 
	 FOREIGN KEY 
	(
		[F_COLOR]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SIZE]
	) REFERENCES [dbo].[SPSIZE] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	),
	 FOREIGN KEY 
	(
		[F_TYPE]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[CGDMXMX2] ADD 
	 FOREIGN KEY 
	(
		[F_COLOR]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SIZE]
	) REFERENCES [dbo].[SPSIZE] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	),
	 FOREIGN KEY 
	(
		[F_TYPE]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[CKD] ADD 
	 FOREIGN KEY 
	(
		[F_HW]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[f_type]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[CKD2] ADD 
	 FOREIGN KEY 
	(
		[F_HW]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[f_type]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[CKDMX] ADD 
	 FOREIGN KEY 
	(
		[f_color]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[CKDMX2] ADD 
	 FOREIGN KEY 
	(
		[f_color]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[CKDMXMX] ADD 
	 FOREIGN KEY 
	(
		[F_COLOR]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SIZE]
	) REFERENCES [dbo].[SPSIZE] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	),
	 FOREIGN KEY 
	(
		[F_TYPE]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[CKDMXMX2] ADD 
	 FOREIGN KEY 
	(
		[F_COLOR]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SIZE]
	) REFERENCES [dbo].[SPSIZE] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	),
	 FOREIGN KEY 
	(
		[F_TYPE]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[DBD] ADD 
	 FOREIGN KEY 
	(
		[F_HW1]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_HW2]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[f_type]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[DBD2] ADD 
	 FOREIGN KEY 
	(
		[F_HW1]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_HW2]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[f_type]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[DBDMX] ADD 
	 FOREIGN KEY 
	(
		[f_color]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[DBDMX2] ADD 
	 FOREIGN KEY 
	(
		[f_color]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[DBDMXMX] ADD 
	 FOREIGN KEY 
	(
		[F_COLOR]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SIZE]
	) REFERENCES [dbo].[SPSIZE] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	),
	 FOREIGN KEY 
	(
		[F_TYPE]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[DBDMXMX2] ADD 
	 FOREIGN KEY 
	(
		[F_COLOR]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SIZE]
	) REFERENCES [dbo].[SPSIZE] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	),
	 FOREIGN KEY 
	(
		[F_TYPE]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[DBZZ] ADD 
	 FOREIGN KEY 
	(
		[F_HW]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[FZZZ] ADD 
	 FOREIGN KEY 
	(
		[F_COLOR]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SIZE]
	) REFERENCES [dbo].[SPSIZE] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[JGZZ] ADD 
	 FOREIGN KEY 
	(
		[F_HW]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[JHD] ADD 
	 FOREIGN KEY 
	(
		[F_BM]
	) REFERENCES [dbo].[BM] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_HW]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[f_type]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_VENDOR]
	) REFERENCES [dbo].[VENDOR] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[JHD2] ADD 
	 FOREIGN KEY 
	(
		[F_BM]
	) REFERENCES [dbo].[BM] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_HW]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[f_type]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_VENDOR]
	) REFERENCES [dbo].[VENDOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_YWY]
	) REFERENCES [dbo].[YWY] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[JHDMX] ADD 
	 FOREIGN KEY 
	(
		[f_color]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[JHDMX2] ADD 
	 FOREIGN KEY 
	(
		[f_color]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[JHDMXMX] ADD 
	 FOREIGN KEY 
	(
		[F_COLOR]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SIZE]
	) REFERENCES [dbo].[SPSIZE] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	),
	 FOREIGN KEY 
	(
		[F_TYPE]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[JHDMXMX2] ADD 
	 FOREIGN KEY 
	(
		[F_COLOR]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SIZE]
	) REFERENCES [dbo].[SPSIZE] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	),
	 FOREIGN KEY 
	(
		[F_TYPE]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[JHZZ] ADD 
	 FOREIGN KEY 
	(
		[F_HW]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[KCMXZ] ADD 
	 FOREIGN KEY 
	(
		[F_HW]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[KCMXZMX] ADD 
	 FOREIGN KEY 
	(
		[F_COLOR]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_HW]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SIZE]
	) REFERENCES [dbo].[SPSIZE] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[KCZZ] ADD 
	 FOREIGN KEY 
	(
		[F_HW]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[RKD] ADD 
	 FOREIGN KEY 
	(
		[F_HW]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[f_type]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[RKD2] ADD 
	 FOREIGN KEY 
	(
		[F_HW]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[f_type]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[RKDMX] ADD 
	 FOREIGN KEY 
	(
		[f_color]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[RKDMX2] ADD 
	 FOREIGN KEY 
	(
		[f_color]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[RKDMXMX] ADD 
	 FOREIGN KEY 
	(
		[F_COLOR]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SIZE]
	) REFERENCES [dbo].[SPSIZE] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	),
	 FOREIGN KEY 
	(
		[F_TYPE]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[RKDMXMX2] ADD 
	 FOREIGN KEY 
	(
		[F_COLOR]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SIZE]
	) REFERENCES [dbo].[SPSIZE] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	),
	 FOREIGN KEY 
	(
		[F_TYPE]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[SP] ADD 
	 FOREIGN KEY 
	(
		[F_TYPE]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[SPCOLOR] ADD 
	 FOREIGN KEY 
	(
		[F_TYPE]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[SPPC] ADD 
	 FOREIGN KEY 
	(
		[F_HW]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[SPSIZE] ADD 
	 FOREIGN KEY 
	(
		[F_TYPE]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[SYZZ] ADD 
	 FOREIGN KEY 
	(
		[F_HW]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[XHD] ADD 
	 FOREIGN KEY 
	(
		[F_BM]
	) REFERENCES [dbo].[BM] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_CUSTOM]
	) REFERENCES [dbo].[CUSTOM] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_HW]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[f_type]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_YWY]
	) REFERENCES [dbo].[YWY] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[XHD2] ADD 
	 FOREIGN KEY 
	(
		[F_BM]
	) REFERENCES [dbo].[BM] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_CUSTOM]
	) REFERENCES [dbo].[CUSTOM] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_HW]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[f_type]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_YWY]
	) REFERENCES [dbo].[YWY] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[XHDMX] ADD 
	 FOREIGN KEY 
	(
		[f_color]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[XHDMX2] ADD 
	 FOREIGN KEY 
	(
		[f_color]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[XHDMXMX] ADD 
	 FOREIGN KEY 
	(
		[F_COLOR]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SIZE]
	) REFERENCES [dbo].[SPSIZE] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	),
	 FOREIGN KEY 
	(
		[F_TYPE]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[XHDMXMX2] ADD 
	 FOREIGN KEY 
	(
		[F_COLOR]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SIZE]
	) REFERENCES [dbo].[SPSIZE] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	),
	 FOREIGN KEY 
	(
		[F_TYPE]
	) REFERENCES [dbo].[SPTYPE] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[XSMXZ] ADD 
	 FOREIGN KEY 
	(
		[F_BM]
	) REFERENCES [dbo].[BM] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_CUSTOM]
	) REFERENCES [dbo].[CUSTOM] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_HW]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	),
	 FOREIGN KEY 
	(
		[F_YWY]
	) REFERENCES [dbo].[YWY] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[XSZZ] ADD 
	 FOREIGN KEY 
	(
		[F_HW]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[YFHXZ] ADD 
	 FOREIGN KEY 
	(
		[f_bm]
	) REFERENCES [dbo].[BM] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[f_vendor]
	) REFERENCES [dbo].[VENDOR] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[YFJSD2] ADD 
	 FOREIGN KEY 
	(
		[F_BM]
	) REFERENCES [dbo].[BM] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_VENDOR]
	) REFERENCES [dbo].[VENDOR] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[YFMXZ] ADD 
	 FOREIGN KEY 
	(
		[F_BM]
	) REFERENCES [dbo].[BM] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_VENDOR]
	) REFERENCES [dbo].[VENDOR] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[YFZZ] ADD 
	 FOREIGN KEY 
	(
		[F_BM]
	) REFERENCES [dbo].[BM] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_DM]
	) REFERENCES [dbo].[VENDOR] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[YSHXZ] ADD 
	 FOREIGN KEY 
	(
		[f_bm]
	) REFERENCES [dbo].[BM] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[f_custom]
	) REFERENCES [dbo].[CUSTOM] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[YSJSD2] ADD 
	 FOREIGN KEY 
	(
		[F_BM]
	) REFERENCES [dbo].[BM] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_CUSTOM]
	) REFERENCES [dbo].[CUSTOM] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[YSMXZ] ADD 
	 FOREIGN KEY 
	(
		[F_BM]
	) REFERENCES [dbo].[BM] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_CUSTOM]
	) REFERENCES [dbo].[CUSTOM] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[YSZZ] ADD 
	 FOREIGN KEY 
	(
		[F_BM]
	) REFERENCES [dbo].[BM] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_DM]
	) REFERENCES [dbo].[CUSTOM] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[YWY] ADD 
	 FOREIGN KEY 
	(
		[F_BM]
	) REFERENCES [dbo].[BM] (
		[F_DM]
	)
GO

ALTER TABLE [dbo].[ZZD] ADD 
	 FOREIGN KEY 
	(
		[F_HW1]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_HW2]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[ZZD2] ADD 
	 FOREIGN KEY 
	(
		[F_BM]
	) REFERENCES [dbo].[BM] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_HW1]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_HW2]
	) REFERENCES [dbo].[HW] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[F_SPBH]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[ZZMBMX] ADD 
	 FOREIGN KEY 
	(
		[F_SPBH1]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	),
	 FOREIGN KEY 
	(
		[F_SPBH2]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

ALTER TABLE [dbo].[tmwh] ADD 
	 FOREIGN KEY 
	(
		[f_color]
	) REFERENCES [dbo].[SPCOLOR] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[f_size]
	) REFERENCES [dbo].[SPSIZE] (
		[F_DM]
	),
	 FOREIGN KEY 
	(
		[f_spbh]
	) REFERENCES [dbo].[SP] (
		[F_SPBH]
	)
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO









CREATE VIEW dbo.V_BM
AS
SELECT * FROM BM








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO








CREATE VIEW dbo.V_CUSTOM
AS
SELECT * FROM CUSTOM








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO









CREATE VIEW dbo.V_CUSTOMLB
AS
SELECT * FROM CUSTOMLB








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO







CREATE VIEW dbo.V_DHD2
AS
SELECT * FROM DHD2









GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO








CREATE VIEW dbo.V_DHDMX2
AS
SELECT * FROM DHDMX2








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO








CREATE VIEW dbo.V_HW
AS
SELECT F_DM,F_MC FROM HW








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO








CREATE VIEW dbo.V_KJQJ
AS
SELECT * FROM KJQJ








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO









CREATE VIEW dbo.V_PAD
AS
SELECT * FROM PAD








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO







CREATE VIEW dbo.V_SPLB
AS
SELECT * FROM SPLB








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO




CREATE VIEW dbo.V_UP_DHD2 AS SELECT * FROM DHD2





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO




CREATE VIEW dbo.V_UP_DHDMX2 AS SELECT * FROM DHDMX2





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO




CREATE VIEW dbo.V_UP_ZZDMX2 AS SELECT * FROM ZZDMX2





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO








CREATE VIEW dbo.V_VENDOR
AS
SELECT * FROM VENDOR








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO









CREATE VIEW dbo.V_VENDORLB
AS
SELECT * FROM VENDORLB








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO



CREATE VIEW dbo.V_CKD2
AS
SELECT * FROM CKD2





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO









CREATE VIEW dbo.V_DBD2
AS
SELECT * FROM DBD2








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO



CREATE VIEW dbo.V_RKD2
AS
SELECT * FROM RKD2





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO







CREATE VIEW dbo.V_SP
AS
SELECT A.F_BM,A.F_SPBH,F_SPMC,F_DW,F_CBFF,F_MAXSL,F_MINSL,F_SPGG,F_SLV,F_DW2,F_CS,F_TM,F_CD,
F_BZQ,F_ZJM,F_BGY,F_DJ1,F_DJ2,F_DJ3,F_DJ4,F_DJ5,F_DWCB,F_IFPH,F_SPSX1,F_SPSX2,F_SPSX3,
F_SPSX4,F_SPSX5,F_LB1,F_LB2,F_LB3,F_LB4,F_LB5,F_LB6,F_LB7,F_LB8,F_LB9,F_LB10,F_MAXPC,
F_IFSJ,F_RATE,F_FUNCTION,F_PHCB,F_UC1,F_UC2,F_UC3,F_UC4,F_UC5,F_UN1,F_UN2,F_UN3,F_UN4,F_UN5
FROM SP2 A LEFT JOIN SP B ON A.F_SPBH=B.F_SPBH








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO





CREATE VIEW dbo.V_UP_CKD2 AS SELECT * FROM CKD2





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO





CREATE VIEW dbo.V_UP_DBD2 AS SELECT * FROM DBD2





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO





CREATE VIEW dbo.V_UP_RKD2 AS SELECT * FROM RKD2





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO








CREATE VIEW dbo.V_YWY
AS
SELECT * FROM YWY








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO




create view v_posbz
as
select f_spbh,f_spmc,f_dw,f_maxsl,f_minsl,f_dj1,f_dj2,f_dj3,f_dj4,f_dj5,f_slv,
f_dw2,f_cs,f_spgg,f_cd,f_bzq,f_zjm,f_bgy,f_ifph,f_spsx1,f_spsx2,f_spsx3,f_spsx4,
f_spsx5,f_lb1,f_lb2,f_lb3,f_lb4,f_lb5,f_lb6,f_lb7,f_lb8,f_lb9,f_lb10,f_function,
f_tm,f_uc1,f_uc2,f_uc3,f_uc4,f_uc5,f_un1,f_un2,f_un3,f_un4,f_un5
from sp





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO








create view v_yfye(f_dm,f_bm,f_ye) 
as 
select f_dm,f_bm,
f_qcye+f_j1-f_d1+f_j2-f_d2+f_j3-f_d3+f_j4-f_d4+f_j5-f_d5+f_j6-f_d6
+f_j7-f_d7+f_j8-f_d8+f_j9-f_d9+f_j10-f_d10+f_j11-f_d11+f_j12-f_d12
from yfzz








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO







create view v_ysye(f_dm,f_bm,f_ye) 
as 
select f_dm,f_bm,
f_qcye+f_j1-f_d1+f_j2-f_d2+f_j3-f_d3+f_j4-f_d4+f_j5-f_d5+f_j6-f_d6
+f_j7-f_d7+f_j8-f_d8+f_j9-f_d9+f_j10-f_d10+f_j11-f_d11+f_j12-f_d12
from yszz









GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO







create view v_yusk(f_custom,f_yusk) as select f_custom,sum(f_fc-f_ye) from ysmxz group by f_custom









GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO



CREATE VIEW dbo.V_CKDMX2
AS
SELECT * FROM CKDMX2




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO








CREATE VIEW dbo.V_DBDMX2
AS
SELECT * FROM DBDMX2








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE VIEW dbo.V_FZKCYE
AS
SELECT F_SPBH, F_HW, F_COLOR, F_SIZE,
      F_SL0 + F_SLS1 + F_SLS2 + F_SLS3 + F_SLS4 + F_SLS5 + F_SLS6 + F_SLS7 + F_SLS8
       + F_SLS9 + F_SLS10 + F_SLS11 + F_SLS12 - F_SLF1 + F_SLF2 + F_SLF3 + F_SLF4 + F_SLF5
       + F_SLF6 + F_SLF7 + F_SLF8 + F_SLF9 + F_SLF10 + F_SLF11 + F_SLF12 AS F_SLYE
FROM dbo.FZZZ




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE VIEW dbo.V_KCYE
AS
SELECT F_SPBH, F_HW, 
      F_SL0 + F_SLS1 + F_SLS2 + F_SLS3 + F_SLS4 + F_SLS5 + F_SLS6 + F_SLS7 + F_SLS8
       + F_SLS9 + F_SLS10 + F_SLS11 + F_SLS12 - F_SLF1 + F_SLF2 + F_SLF3 + F_SLF4 + F_SLF5
       + F_SLF6 + F_SLF7 + F_SLF8 + F_SLF9 + F_SLF10 + F_SLF11 + F_SLF12 AS F_SLYE, 
      F_JE0 + F_JES1 + F_JES2 + F_JES3 + F_JES4 + F_JES5 + F_JES6 + F_JES7 + F_JES8 +
       F_JES9 + F_JES10 + F_JES11 + F_JES12 - F_JEF1 + F_JEF2 + F_JEF3 + F_JEF4 + F_JEF5
       + F_JEF6 + F_JEF7 + F_JEF8 + F_JEF9 + F_JEF10 + F_JEF11 + F_JEF12 AS F_JEYE
FROM dbo.KCZZ


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO



CREATE VIEW dbo.V_RKDMX2
AS
SELECT * FROM RKDMX2





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO









CREATE VIEW dbo.V_SPPC
AS
SELECT * FROM SPPC








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO




CREATE VIEW dbo.V_UP_CKDMX2 AS SELECT * FROM CKDMX2





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO




CREATE VIEW dbo.V_UP_DBDMX2 AS SELECT * FROM DBDMX2





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO





CREATE VIEW dbo.V_UP_JHD2 AS SELECT * FROM JHD2





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO




CREATE VIEW dbo.V_UP_JHDMX2 AS SELECT * FROM JHDMX2





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO




CREATE VIEW dbo.V_UP_RKDMX2 AS SELECT * FROM RKDMX2





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO





CREATE VIEW dbo.V_UP_XHD2 AS SELECT * FROM XHD2





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO




CREATE VIEW dbo.V_UP_XHDMX2 AS SELECT * FROM XHDMX2





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO





CREATE VIEW dbo.V_UP_ZZD2 AS SELECT * FROM ZZD2





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


CREATE VIEW dbo.V_XHD2
AS
SELECT *
FROM XHD2



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


CREATE VIEW dbo.V_XHDMX2
AS
SELECT F_DJH, F_HC, F_TM, F_SPBH, F_DW, F_SL, F_DJ, F_KL, F_JE, F_SLV, F_SE, 
      F_CB, F_HJ, F_PH, F_DQ, '*' AS F_ISCB, F_UC, F_UN, F_sljc, F_fph, F_dj1, F_dj2, 
      F_dwcb, F_rate, F_sl2, F_dj3, F_dj4, F_dj5
FROM XHDMX2



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO





create view dbo.v_dhdzzd
as
select a.f_djh as f_djhdh,b.f_djh as f_djhzz from dhd2 a left join zzd2 b on a.f_fph=b.f_fph






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO









CREATE VIEW dbo.V_KCYEDOWN
AS
SELECT * FROM V_KCYE








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


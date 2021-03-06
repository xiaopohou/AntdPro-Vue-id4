USE [asf]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2020/4/25 19:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[abpauditlogs]    Script Date: 2020/4/25 19:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[abpauditlogs](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BrowserInfo] [varchar](255) NULL,
	[ClientIpAddress] [varchar](255) NULL,
	[ClientName] [varchar](255) NULL,
	[Exception] [nvarchar](max) NULL,
	[CustomData] [nvarchar](max) NULL,
	[ExecutionDuration] [int] NULL,
	[ExecutionTime] [datetime] NULL,
	[ImpersonatorTenantId] [int] NULL,
	[ImpersonatorUserId] [int] NULL,
	[MethodName] [varchar](255) NULL,
	[Parameters] [nvarchar](max) NULL,
	[ServiceName] [varchar](255) NULL,
	[TenantId] [int] NULL,
	[UserId] [int] NULL,
	[ReturnValue] [nvarchar](max) NULL,
 CONSTRAINT [PK__abpaudit__3214EC07942CCA91] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 2020/4/25 19:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Username] [nvarchar](32) NOT NULL,
	[Password] [nvarchar](32) NOT NULL,
	[Telephone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Avatar] [nvarchar](225) NULL,
	[Status] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Roles] [nvarchar](max) NOT NULL,
	[CreateId] [int] NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[LoginIp] [nvarchar](20) NULL,
	[LoginTime] [datetime2](7) NOT NULL,
	[Token] [nvarchar](max) NULL,
	[RefreshToken] [nvarchar](max) NULL,
	[Expired] [datetime2](7) NOT NULL,
	[UserGuid] [nchar](128) NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LogInfos]    Script Date: 2020/4/25 19:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogInfos](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NOT NULL,
	[AccountName] [nvarchar](32) NOT NULL,
	[Type] [int] NOT NULL,
	[Subject] [nvarchar](200) NOT NULL,
	[ClientIp] [nvarchar](20) NOT NULL,
	[PermissionId] [nvarchar](150) NULL,
	[AddTime] [datetime2](7) NOT NULL,
	[ApiAddress] [nvarchar](500) NULL,
	[ApiRequest] [nvarchar](max) NULL,
	[ApiResponse] [nvarchar](max) NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_LogInfos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 2020/4/25 19:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissions](
	[Id] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](max) NOT NULL,
	[ParentId] [nvarchar](100) NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Type] [int] NOT NULL,
	[IsSystem] [bit] NOT NULL,
	[ApiTemplate] [nvarchar](500) NULL,
	[IsLogger] [bit] NOT NULL,
	[Description] [nvarchar](200) NULL,
	[Sort] [int] NOT NULL,
	[Enable] [bit] NOT NULL,
	[MenuIcon] [nvarchar](20) NULL,
	[MenuRedirect] [nvarchar](300) NULL,
	[MenuHidden] [bit] NOT NULL,
	[HttpMethods] [nvarchar](100) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2020/4/25 19:52:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[Enable] [bit] NOT NULL,
	[CreateId] [nvarchar](128) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Permissions] [nvarchar](max) NULL,
	[RoleId] [nvarchar](64) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191225075903_initdb_20191225', N'2.2.6-servicing-10079')
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'1578418508', N'1578418508', N'', N'get方法', 3, 0, N'/api/account/get', 0, N'get', 0, 1, NULL, NULL, 0, N'GET', CAST(0x07A54AA1669396400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf', N'asf', N'', N'控制面板', 2, 1, N'PageView', 0, N'控制面板', 0, 1, N'dashboard', NULL, 0, NULL, CAST(0x07E0BCCB739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_account', N'account', N'asf', N'管理员列表', 2, 1, NULL, 0, N'管理员列表', 0, 1, N'user-add', NULL, 0, NULL, CAST(0x0775DFCB739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_account_create', N'create', N'asf_account', N'新增', 1, 1, N'/api//account/create', 1, N'创建管理账户', 0, 1, NULL, NULL, 0, N'POST', CAST(0x075EE7CB739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_account_delete', N'delete', N'asf_account', N'删除', 1, 1, N'/api//account/delete/[0-9]{1,12}', 1, N'删除管理账户', 0, 1, NULL, NULL, 0, N'POST', CAST(0x077FEBCB739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_account_details', N'details', N'asf_account', N'详情', 1, 1, N'/api//account/getdetails/[0-9]{1,12}', 0, N'管理员账户详情', 0, 1, NULL, NULL, 0, N'GET', CAST(0x0786EBCB739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_account_modify', N'modify', N'asf_account', N'修改', 1, 1, N'/api//account/midify', 1, N'修改管理账户信息', 0, 1, NULL, NULL, 0, N'POST', CAST(0x0788EBCB739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_account_modify_status', N'modify_status', N'asf_account', N'修改状态', 1, 1, N'/api//account/midifystatus', 1, N'修改管理账户状态', 0, 1, NULL, NULL, 0, N'POST', CAST(0x078AEBCB739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_account_query', N'query', N'asf_account', N'查看', 1, 1, N'/api//account/getlist', 0, N'查看管理员账户列表', 0, 1, NULL, NULL, 0, N'POST', CAST(0x076CE3CB739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_account_reset_password', N'reset_password', N'asf_account', N'重置密码', 1, 1, N'/api//account/resetpassword', 1, N'重置管理账号密码', 0, 1, NULL, NULL, 0, N'POST', CAST(0x078EEBCB739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_audit', N'audit', N'asf', N'审计管理', 2, 1, NULL, 0, N'管理日志包含操作日志和权限日志', 0, 1, N'profile', NULL, 0, NULL, CAST(0x076BDFCB739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_audit_delete', N'delete', N'asf_audit', N'批量删除', 1, 1, N'/api//logger/delete', 1, N'批量删除审计日志', 0, 1, NULL, NULL, 0, N'POST', CAST(0x07B908CC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_audit_query', N'query', N'asf_audit', N'查看', 1, 1, N'/api//logger/getlist', 0, N'审计日志列表', 0, 1, NULL, NULL, 0, N'POST', CAST(0x07B208CC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_job', N'job', N'asf', N'后台任务管理', 2, 0, NULL, 0, N'后台任务管理', 99, 1, N'credit-card', NULL, 0, NULL, CAST(0x07D4E222BA80AD400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_job_create', N'create', N'asf_job', N'新增', 1, 0, N'/api/backjob/addorupdaterecurringjob', 1, N'新增周期任务', 99, 1, NULL, NULL, 0, N'POST', CAST(0x07ABD770FC8CAD400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_job_delete', N'delete', N'asf_job', N'删除', 1, 0, N'/api/backjob/deletejob', 1, N'删除一个周期任务', 99, 1, NULL, NULL, 0, N'GET', CAST(0x07063994EFA3B1400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_job_modify', N'modify', N'asf_job', N'编辑', 1, 0, N'/api/backjob/addorupdaterecurringjob', 0, N'编辑周期任务', 99, 1, NULL, NULL, 0, N'POST', CAST(0x07027336008CAD400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_job_query', N'query', N'asf_job', N'查看', 1, 0, N'/api/backjob/getjob', 0, N'查看列表', 0, 1, NULL, NULL, 0, N'GET', CAST(0x073226E44EA5B1400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_job_run', N'run', N'asf_job', N'运行任务', 1, 0, N'/api/backjob/triggerrecurringjob', 1, N'执行一次后台任务', 99, 1, NULL, NULL, 0, N'GET', CAST(0x07965BD02D79B1400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_menu', N'menu', N'asf', N'菜单管理', 2, 1, NULL, 0, N'菜单管理列表', 0, 1, N'appstore', NULL, 0, NULL, CAST(0x0779DFCB739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_menu_details', N'details', N'asf_menu', N'菜单详情', 2, 1, NULL, 0, N'菜单详情', 0, 1, NULL, NULL, 1, NULL, CAST(0x0767E3CB739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_menu_details_action_create', N'action_create', N'asf_menu_details', N'新增功能', 1, 1, N'/api//permission/action/create', 1, N'创建功能权限', 0, 1, NULL, NULL, 0, N'POST', CAST(0x07E41BCC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_menu_details_action_delete', N'action_delete', N'asf_menu_details', N'删除功能', 1, 1, N'/api//permission/action/delete/[a-zA-Z0-9_]{1,100}', 1, N'删除功能权限', 0, 1, NULL, NULL, 0, N'POST', CAST(0x07E91BCC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_menu_details_action_details', N'action_details', N'asf_menu_details', N'功能详情', 1, 1, N'/api//permission/action/getdetails/[a-zA-Z0-9_]{1,100}', 0, N'功能权限详情', 0, 1, NULL, NULL, 0, N'GET', CAST(0x07DD1BCC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_menu_details_action_modify', N'action_modify', N'asf_menu_details', N'修改功能', 1, 1, N'/api//permission/action/modify', 1, N'修改功能权限', 0, 1, NULL, NULL, 0, N'POST', CAST(0x07E71BCC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_menu_details_action_modify_sort', N'action_modify_sort', N'asf_menu_details', N'修改排序', 1, 1, N'/api//permission/action/modifysort', 1, N'修改功能权限顺序', 0, 1, NULL, NULL, 0, N'POST', CAST(0x07EC1BCC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_menu_details_action_query', N'action_query', N'asf_menu_details', N'功能列表', 1, 1, N'/api//permission/action/getlist', 0, N'查看功能权限列表', 0, 1, NULL, NULL, 0, N'POST', CAST(0x07E61BCC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_menu_list', N'list', N'asf_menu', N'菜单列表', 2, 1, NULL, 0, N'菜单列表', 0, 1, NULL, NULL, 1, NULL, CAST(0x078ADFCB739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_menu_list_export', N'export', N'asf_menu_list', N'导出', 1, 1, N'/api//permission/menu/export', 0, N'导出菜单权限', 0, 1, NULL, NULL, 0, N'POST', CAST(0x07BD15CC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_menu_list_import', N'import', N'asf_menu_list', N'导入', 1, 1, N'/api//permission/menu/import', 0, N'导入菜单权限', 0, 1, NULL, NULL, 0, N'POST', CAST(0x07BE15CC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_menu_list_menu_create', N'menu_create', N'asf_menu_list', N'新增导航', 1, 1, N'/api//permission/menu/create', 1, N'创建导菜单权限', 0, 1, NULL, NULL, 0, N'POST', CAST(0x07AC15CC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_menu_list_menu_delete', N'menu_delete', N'asf_menu_list', N'删除菜单', 1, 1, N'/api//permission/menu/delete/[a-zA-Z0-9_]{1,100}', 1, N'删除菜单权限', 0, 1, NULL, NULL, 0, N'POST', CAST(0x07B315CC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_menu_list_menu_details', N'menu_details', N'asf_menu_list', N'菜单详情', 1, 1, N'/api//permission/menu/getdetails/[a-zA-Z0-9_]{1,100}', 0, N'菜单权限详情', 0, 1, NULL, NULL, 0, N'GET', CAST(0x07AF15CC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_menu_list_menu_modify', N'menu_modify', N'asf_menu_list', N'修改菜单', 1, 1, N'/api//permission/menu/modify', 1, N'修改菜单权限', 0, 1, NULL, NULL, 0, N'POST', CAST(0x07B015CC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_menu_list_menu_modify_sort', N'menu_modify_sort', N'asf_menu_list', N'修改排序', 1, 1, N'/api//permission/menu/modifysort', 1, N'修改菜单权限顺序', 0, 1, NULL, NULL, 0, N'POST', CAST(0x07BA15CC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_menu_list_menu_query', N'menu_query', N'asf_menu_list', N'查看菜单', 1, 1, N'/api//permission/menu/getlist', 0, N'查看菜单权限列表', 0, 1, NULL, NULL, 0, N'POST', CAST(0x07A715CC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_publicapi', N'publicapi', N'asf', N'公共 API', 2, 1, NULL, 0, N'管理公共API，只要有登录权限就可以访问，不受角色控制。', 0, 1, N'cloud', NULL, 0, NULL, CAST(0x077CDFCB739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_publicapi_create', N'create', N'asf_publicapi', N'新增', 1, 1, N'/api//permission/openapi/create', 1, N'新增公共API', 0, 1, NULL, NULL, 0, N'POST', CAST(0x075E0FCC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_publicapi_delete', N'delete', N'asf_publicapi', N'删除', 1, 1, N'/api//permission/delete/[a-zA-Z0-9_]{1,100}', 1, N'删除公共 API', 0, 1, NULL, NULL, 0, N'POST', CAST(0x07660FCC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_publicapi_import', N'import', N'asf_publicapi', N'导入', 1, 1, N'/api//permission/openapi/import', 1, N'导入公共API权限', 0, 1, NULL, NULL, 0, N'POST', CAST(0x07630FCC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_publicapi_modify', N'modify', N'asf_publicapi', N'修改', 1, 1, N'/api//permission/openapi/modify', 1, N'修改公共API', 0, 1, NULL, NULL, 0, N'POST', CAST(0x07600FCC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_publicapi_query', N'query', N'asf_publicapi', N'查看', 1, 1, N'/api//permission/openapi/getlist', 0, N'公共API列表', 0, 1, NULL, NULL, 0, N'POST', CAST(0x07580FCC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_role', N'role', N'asf', N'角色管理', 2, 1, NULL, 0, N'角色列表', 0, 1, N'usergroup-add', NULL, 0, NULL, CAST(0x0785DFCB739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_role_create', N'create', N'asf_role', N'新增', 1, 1, N'/api//role/create', 1, N'创建角色', 0, 1, NULL, NULL, 0, N'POST', CAST(0x070002CC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_role_delete', N'delete', N'asf_role', N'删除', 1, 1, N'/api//role/delete/[0-9]{1,12}', 1, N'删除角色', 0, 1, NULL, NULL, 0, N'POST', CAST(0x070902CC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_role_details', N'details', N'asf_role', N'详情', 1, 1, N'/api//role/getdetails/[0-9]{1,12}', 0, N'角色详情', 0, 1, NULL, NULL, 0, N'GET', CAST(0x070B02CC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_role_modify', N'modify', N'asf_role', N'修改', 1, 1, N'/api//role/modify', 1, N'修改角色', 0, 1, NULL, NULL, 0, N'POST', CAST(0x070C02CC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_role_modify_status', N'modify_status', N'asf_role', N'修改状态', 1, 1, N'/api//role/modifystatus', 1, N'修改角色状态', 0, 1, NULL, NULL, 0, N'POST', CAST(0x070F02CC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'asf_role_query', N'query', N'asf_role', N'查看', 1, 1, N'/api//role/getlist', 0, N'角色列表', 0, 1, NULL, NULL, 0, N'POST', CAST(0x07F901CC739195400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'widgets', N'widgets', N'', N'组件', 2, 0, NULL, 0, N'组件介绍', 99, 1, N'branches', NULL, 0, N'', CAST(0x07DFFFA7117BA1400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'widgets_amount', N'amount', N'widgets', N'金额', 2, 0, NULL, 0, N'金额', 99, 1, N'dollar', NULL, 0, N'', CAST(0x07F88D0FAB7BA1400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'widgets_amount_query', N'query', N'widgets_amount', N'查看', 1, 0, N'/get', 1, N'查看', 99, 1, NULL, NULL, 0, N'GET', CAST(0x078433900098A1400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'widgets_avatar-group', N'avatar-group', N'widgets', N'头像', 2, 0, NULL, 0, N'头像组', 99, 1, N'smile', NULL, 0, NULL, CAST(0x071DE268B685A2400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'widgets_avatar-group_query', N'query', N'widgets_avatar-group', N'查看', 1, 0, N'/get', 0, N'查看', 99, 1, NULL, NULL, 0, N'GET', CAST(0x07355465BE69C7400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'widgets_captcha', N'captcha', N'widgets', N'验证码', 2, 0, NULL, 0, N'验证码', 99, 1, N'idcard', NULL, 0, NULL, CAST(0x07286BE89A7BA2400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'widgets_captcha_query', N'query', N'widgets_captcha', N'查看', 1, 0, N'/get', 0, N'查看', 99, 1, NULL, NULL, 0, N'GET', CAST(0x07695203D969C7400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'widgets_city-picker', N'city-picker', N'widgets', N'城市选择器', 2, 0, NULL, 0, N'城市选择器', 99, 1, N'usergroup-add', NULL, 0, N'', CAST(0x079A799B467BA1400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'widgets_city-picker_query', N'query', N'widgets_city-picker', N'查看', 1, 0, N'/get', 0, N'查看', 99, 1, NULL, NULL, 0, N'GET', CAST(0x07886CEAF069C7400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'widgets_filterbox', N'filterbox', N'widgets', N'筛选数据', 2, 0, NULL, 0, N'筛选数据', 99, 1, N'experiment', NULL, 0, NULL, CAST(0x079951708077A2400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'widgets_filterbox_query', N'query', N'widgets_filterbox', N'查看', 1, 0, N'/get', 0, N'查看', 99, 1, NULL, NULL, 0, N'GET', CAST(0x071DC31D056AC7400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'widgets_guide', N'guide', N'widgets', N'向导', 2, 0, NULL, 0, N'向导', 99, 1, N'share-alt', NULL, 0, NULL, CAST(0x070FC0B6B65AA2400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'widgets_guide_query', N'query', N'widgets_guide', N'查看', 1, 0, N'/get', 0, N'查看', 99, 1, NULL, NULL, 0, N'GET', CAST(0x07DCA6C8486AC7400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'widgets_iconbox', N'iconbox', N'widgets', N'图标选择器', 2, 0, NULL, 0, N'icon选择器', 99, 1, N'smile', NULL, 0, N'', CAST(0x076B7E9A397FA1400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'widgets_iconbox_query', N'query', N'widgets_iconbox', N'查看', 1, 0, N'/get', 0, N'查看', 99, 1, NULL, NULL, 0, N'GET', CAST(0x079DC466586AC7400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'widgets_licence-plate', N'licence-plate', N'widgets', N'车牌选择器', 2, 0, NULL, 0, N'车牌选择器', 99, 1, N'car', NULL, 0, N'', CAST(0x077C88B70B7CA1400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'widgets_licence-plate_quey', N'quey', N'widgets_licence-plate', N'查看', 1, 0, N'/get', 0, N'查看', 99, 1, NULL, NULL, 0, N'GET', CAST(0x072069ABBD6AC7400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'widgets_mask', N'mask', N'widgets', N'格式化', 2, 0, NULL, 0, N'格式化', 99, 1, N'exception', NULL, 0, NULL, CAST(0x075076D1F083A2400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'widgets_mask_query', N'query', N'widgets_mask', N'查看', 1, 0, N'/get', 0, N'查看', 99, 1, NULL, NULL, 0, N'GET', CAST(0x07E46B9DDA6AC7400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'widgets_print', N'print', N'widgets', N'打印', 2, 0, NULL, 0, N'打印', 99, 1, N'printer', NULL, 0, N'', CAST(0x073AAC84858AA2400B AS DateTime2))
INSERT [dbo].[Permissions] ([Id], [Code], [ParentId], [Name], [Type], [IsSystem], [ApiTemplate], [IsLogger], [Description], [Sort], [Enable], [MenuIcon], [MenuRedirect], [MenuHidden], [HttpMethods], [CreateTime]) VALUES (N'widgets_print_query', N'query', N'widgets_print', N'查看', 1, 0, N'/get', 0, N'查看', 99, 1, NULL, NULL, 0, N'GET', CAST(0x07AAC8AEE96AC7400B AS DateTime2))
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Name], [Description], [Enable], [CreateId], [CreateTime], [Permissions], [RoleId]) VALUES (38, N'testAdmin', N'测试管理员', 1, N'e9bfe71f-31ec-4fe7-bba4-843fb19c8566', CAST(0x0000ABA70109AC1E AS DateTime), N'asf_account_create,asf_account_delete,asf_account_details,asf_account_modify,asf_account_modify_status,asf_account_query,asf_account_reset_password,asf_audit_delete,asf_audit_query,asf_menu_details_action_create,asf_menu_details_action_delete,asf_menu_details_action_details,asf_menu_details_action_modify,asf_menu_details_action_modify_sort,asf_menu_details_action_query,asf_menu_list_export,asf_menu_list_import,asf_menu_list_menu_create,asf_menu_list_menu_delete,asf_menu_list_menu_details,asf_menu_list_menu_modify,asf_menu_list_menu_modify_sort,asf_menu_list_menu_query,asf_publicapi_create,asf_publicapi_delete,asf_publicapi_import,asf_publicapi_modify,asf_publicapi_query,asf_role_create,asf_role_delete,asf_role_details,asf_role_modify,asf_role_modify_status,asf_role_query,asf_job_query,asf_job_create,asf_job_delete,asf_job_modify,asf_job_run,widgets_amount_query,widgets_avatar-group_query,widgets_captcha_query,widgets_city-picker_query,widgets_filterbox_query,widgets_guide_query,widgets_iconbox_query,widgets_licence-plate_quey,widgets_mask_query,widgets_print_query,asf_account,asf,asf_audit,asf_job,asf_menu_details,asf_menu,asf_menu_list,asf_publicapi,asf_role,widgets_amount,widgets,widgets_avatar-group,widgets_captcha,widgets_city-picker,widgets_filterbox,widgets_guide,widgets_iconbox,widgets_licence-plate,widgets_mask,widgets_print', N'8efe7b21-144b-4aca-b2e0-c62efea143c4')
SET IDENTITY_INSERT [dbo].[Roles] OFF
ALTER TABLE [dbo].[abpauditlogs] ADD  CONSTRAINT [DF__abpauditl__Imper__286302EC]  DEFAULT (NULL) FOR [ImpersonatorTenantId]
GO
ALTER TABLE [dbo].[abpauditlogs] ADD  CONSTRAINT [DF__abpauditl__Imper__29572725]  DEFAULT (NULL) FOR [ImpersonatorUserId]
GO
ALTER TABLE [dbo].[abpauditlogs] ADD  CONSTRAINT [DF__abpauditl__Tenan__2A4B4B5E]  DEFAULT (NULL) FOR [TenantId]
GO
ALTER TABLE [dbo].[abpauditlogs] ADD  CONSTRAINT [DF__abpauditl__UserI__2B3F6F97]  DEFAULT (NULL) FOR [UserId]
GO
ALTER TABLE [dbo].[abpauditlogs] ADD  CONSTRAINT [DF__abpauditl__Retur__2C3393D0]  DEFAULT (NULL) FOR [ReturnValue]
GO

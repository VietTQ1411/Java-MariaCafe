USE [J3LP0015]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 3/23/2020 9:37:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [int] NOT NULL,
	[title] [nchar](250) NOT NULL,
	[content] [nvarchar](max) NOT NULL,
	[image] [nchar](250) NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 3/23/2020 9:37:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nchar](250) NOT NULL,
	[key] [nvarchar](250) NULL,
	[value] [nvarchar](250) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeArticle]    Script Date: 3/23/2020 9:37:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeArticle](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](250) NOT NULL,
 CONSTRAINT [PK_TypeArticle] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Article] ON 

INSERT [dbo].[Article] ([id], [type], [title], [content], [image], [date]) VALUES (1, 1, N'Maria''s Cosy Cafe                                                                                                                                                                                                                                         ', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica', N'2.jpg                                                                                                                                                                                                                                                     ', CAST(N'1998-03-20' AS Date))
INSERT [dbo].[Article] ([id], [type], [title], [content], [image], [date]) VALUES (2, 2, N'Maria''s Cosy Cafe                                                                                                                                                                                                                                         ', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica', N'4.jpg                                                                                                                                                                                                                                                     ', CAST(N'2019-03-20' AS Date))
INSERT [dbo].[Article] ([id], [type], [title], [content], [image], [date]) VALUES (3, 2, N'Maria''s Cosy Cafe                                                                                                                                                                                                                                         ', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica', N'3.jpg                                                                                                                                                                                                                                                     ', CAST(N'2019-03-19' AS Date))
INSERT [dbo].[Article] ([id], [type], [title], [content], [image], [date]) VALUES (4, 2, N'Hello world                                                                                                                                                                                                                                               ', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica', N'3.jpg                                                                                                                                                                                                                                                     ', CAST(N'2019-03-18' AS Date))
INSERT [dbo].[Article] ([id], [type], [title], [content], [image], [date]) VALUES (5, 3, N'About my Cakes                                                                                                                                                                                                                                            ', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.', N'5.jpg                                                                                                                                                                                                                                                     ', CAST(N'2019-03-20' AS Date))
SET IDENTITY_INSERT [dbo].[Article] OFF
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([id], [type], [key], [value]) VALUES (1, N'address                                                                                                                                                                                                                                                   ', N'', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Gammel Torv, Copenhagen')
INSERT [dbo].[Contact] ([id], [type], [key], [value]) VALUES (2, N'phone                                                                                                                                                                                                                                                     ', N'Phone', N'123456')
INSERT [dbo].[Contact] ([id], [type], [key], [value]) VALUES (3, N'email                                                                                                                                                                                                                                                     ', N'Email', N'viettqhe130524@gmail.com')
INSERT [dbo].[Contact] ([id], [type], [key], [value]) VALUES (4, N'work                                                                                                                                                                                                                                                      ', N'Monday', N'Close')
INSERT [dbo].[Contact] ([id], [type], [key], [value]) VALUES (5, N'work                                                                                                                                                                                                                                                      ', N'Tueday - Friday', N'10:00 - 20:00')
INSERT [dbo].[Contact] ([id], [type], [key], [value]) VALUES (6, N'work                                                                                                                                                                                                                                                      ', N'Saturday and sunday', N'11:00 - 21:00')
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[TypeArticle] ON 

INSERT [dbo].[TypeArticle] ([id], [name]) VALUES (1, N'introduction')
INSERT [dbo].[TypeArticle] ([id], [name]) VALUES (2, N'article')
INSERT [dbo].[TypeArticle] ([id], [name]) VALUES (3, N'about')
SET IDENTITY_INSERT [dbo].[TypeArticle] OFF
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_Article_TypeArticle] FOREIGN KEY([type])
REFERENCES [dbo].[TypeArticle] ([id])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_Article_TypeArticle]
GO

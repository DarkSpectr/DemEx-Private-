USE [DemEX]
GO
/****** Object:  Table [dbo].[Material_type_import]    Script Date: 23.10.2024 1:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material_type_import](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeMaterials] [nvarchar](max) NULL,
	[PercentBrakMaterial] [float] NULL,
 CONSTRAINT [PK_Material_type_import] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner_products_import]    Script Date: 23.10.2024 1:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner_products_import](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDNameProduct] [int] NULL,
	[IDNamePartner] [int] NULL,
	[CountProduct] [int] NULL,
	[DateSale] [date] NULL,
 CONSTRAINT [PK_Partner_products_import] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners_import]    Script Date: 23.10.2024 1:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners_import](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDTypePartner] [int] NULL,
	[NamePartner] [nvarchar](max) NULL,
	[Director] [nvarchar](max) NULL,
	[EmailPartner] [nvarchar](max) NULL,
	[PhoneNumPartner] [bigint] NULL,
	[AddressPartner] [nvarchar](max) NULL,
	[INN] [bigint] NULL,
	[Rate] [float] NULL,
 CONSTRAINT [PK_Partners_import] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerTypes]    Script Date: 23.10.2024 1:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypePartner] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypePartner] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_type_import]    Script Date: 23.10.2024 1:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_type_import](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeProduct] [nvarchar](50) NULL,
	[KoeffTypeProduct] [float] NULL,
 CONSTRAINT [PK_Product_type_import] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products_import]    Script Date: 23.10.2024 1:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products_import](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDTypeProduct] [int] NULL,
	[NameProduct] [nvarchar](max) NULL,
	[Articul] [int] NULL,
	[MinCostPartner] [float] NULL,
 CONSTRAINT [PK_Products_import] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Material_type_import] ON 

INSERT [dbo].[Material_type_import] ([ID], [TypeMaterials], [PercentBrakMaterial]) VALUES (1, N'Тип материала 1
', 0.1)
INSERT [dbo].[Material_type_import] ([ID], [TypeMaterials], [PercentBrakMaterial]) VALUES (2, N'Тип материала 2
', 0.95)
INSERT [dbo].[Material_type_import] ([ID], [TypeMaterials], [PercentBrakMaterial]) VALUES (3, N'Тип материала 3
', 0.28)
INSERT [dbo].[Material_type_import] ([ID], [TypeMaterials], [PercentBrakMaterial]) VALUES (4, N'Тип материала 4
', 0.55)
INSERT [dbo].[Material_type_import] ([ID], [TypeMaterials], [PercentBrakMaterial]) VALUES (5, N'Тип материала 5
', 0.34)
SET IDENTITY_INSERT [dbo].[Material_type_import] OFF
GO
SET IDENTITY_INSERT [dbo].[Partner_products_import] ON 

INSERT [dbo].[Partner_products_import] ([ID], [IDNameProduct], [IDNamePartner], [CountProduct], [DateSale]) VALUES (1, 1, 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[Partner_products_import] ([ID], [IDNameProduct], [IDNamePartner], [CountProduct], [DateSale]) VALUES (2, 3, 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Partner_products_import] ([ID], [IDNameProduct], [IDNamePartner], [CountProduct], [DateSale]) VALUES (3, 4, 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[Partner_products_import] ([ID], [IDNameProduct], [IDNamePartner], [CountProduct], [DateSale]) VALUES (4, 2, 2, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[Partner_products_import] ([ID], [IDNameProduct], [IDNamePartner], [CountProduct], [DateSale]) VALUES (5, 5, 2, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[Partner_products_import] ([ID], [IDNameProduct], [IDNamePartner], [CountProduct], [DateSale]) VALUES (6, 3, 2, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[Partner_products_import] ([ID], [IDNameProduct], [IDNamePartner], [CountProduct], [DateSale]) VALUES (7, 1, 2, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[Partner_products_import] ([ID], [IDNameProduct], [IDNamePartner], [CountProduct], [DateSale]) VALUES (8, 1, 3, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[Partner_products_import] ([ID], [IDNameProduct], [IDNamePartner], [CountProduct], [DateSale]) VALUES (9, 2, 3, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[Partner_products_import] ([ID], [IDNameProduct], [IDNamePartner], [CountProduct], [DateSale]) VALUES (10, 4, 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[Partner_products_import] ([ID], [IDNameProduct], [IDNamePartner], [CountProduct], [DateSale]) VALUES (11, 3, 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[Partner_products_import] ([ID], [IDNameProduct], [IDNamePartner], [CountProduct], [DateSale]) VALUES (12, 5, 4, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[Partner_products_import] ([ID], [IDNameProduct], [IDNamePartner], [CountProduct], [DateSale]) VALUES (13, 3, 5, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[Partner_products_import] ([ID], [IDNameProduct], [IDNamePartner], [CountProduct], [DateSale]) VALUES (14, 5, 5, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[Partner_products_import] ([ID], [IDNameProduct], [IDNamePartner], [CountProduct], [DateSale]) VALUES (15, 1, 5, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[Partner_products_import] ([ID], [IDNameProduct], [IDNamePartner], [CountProduct], [DateSale]) VALUES (16, 2, 5, 25000, CAST(N'2024-06-12' AS Date))
SET IDENTITY_INSERT [dbo].[Partner_products_import] OFF
GO
SET IDENTITY_INSERT [dbo].[Partners_import] ON 

INSERT [dbo].[Partners_import] ([ID], [IDTypePartner], [NamePartner], [Director], [EmailPartner], [PhoneNumPartner], [AddressPartner], [INN], [Rate]) VALUES (1, 1, N'База Строитель
', N'Иванова Александра Ивановна
', N'aleksandraivanova@ml.ru
', 84931234567, N'652050, Кемеровская область, город Юрга, ул. Лесная, 15
', 2222455179, 7)
INSERT [dbo].[Partners_import] ([ID], [IDTypePartner], [NamePartner], [Director], [EmailPartner], [PhoneNumPartner], [AddressPartner], [INN], [Rate]) VALUES (2, 2, N'Паркет 29
', N'Петров Василий Петрович
', N'vppetrov@vl.ru
', 89871235678, N'164500, Архангельская область, город Северодвинск, ул. Строителей, 18
', 3333888520, 7)
INSERT [dbo].[Partners_import] ([ID], [IDTypePartner], [NamePartner], [Director], [EmailPartner], [PhoneNumPartner], [AddressPartner], [INN], [Rate]) VALUES (3, 3, N'Стройсервис
', N'Соловьев Андрей Николаевич
', N'ansolovev@st.ru
', 88122233200, N'188910, Ленинградская область, город Приморск, ул. Парковая, 21
', 4440391035, 7)
INSERT [dbo].[Partners_import] ([ID], [IDTypePartner], [NamePartner], [Director], [EmailPartner], [PhoneNumPartner], [AddressPartner], [INN], [Rate]) VALUES (4, 4, N'Ремонт и отделка
', N'Воробьева Екатерина Валерьевна
', N'ekaterina.vorobeva@ml.ru
', 84442223311, N'143960, Московская область, город Реутов, ул. Свободы, 51
', 1111520857, 5)
INSERT [dbo].[Partners_import] ([ID], [IDTypePartner], [NamePartner], [Director], [EmailPartner], [PhoneNumPartner], [AddressPartner], [INN], [Rate]) VALUES (5, 1, N'МонтажПро
', N'Степанов Степан Сергеевич
', N'stepanov@stepan.ru
', 89128883333, N'309500, Белгородская область, город Старый Оскол, ул. Рабочая, 122
', 5552431140, 10)
SET IDENTITY_INSERT [dbo].[Partners_import] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerTypes] ON 

INSERT [dbo].[PartnerTypes] ([ID], [TypePartner]) VALUES (1, N'ЗАО')
INSERT [dbo].[PartnerTypes] ([ID], [TypePartner]) VALUES (2, N'ООО')
INSERT [dbo].[PartnerTypes] ([ID], [TypePartner]) VALUES (3, N'ПАО')
INSERT [dbo].[PartnerTypes] ([ID], [TypePartner]) VALUES (4, N'ОАО')
SET IDENTITY_INSERT [dbo].[PartnerTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_type_import] ON 

INSERT [dbo].[Product_type_import] ([ID], [TypeProduct], [KoeffTypeProduct]) VALUES (1, N'Ламинат
', 2.35)
INSERT [dbo].[Product_type_import] ([ID], [TypeProduct], [KoeffTypeProduct]) VALUES (2, N'Массивная доска', 5.15)
INSERT [dbo].[Product_type_import] ([ID], [TypeProduct], [KoeffTypeProduct]) VALUES (3, N'Паркетная доса', 4.34)
INSERT [dbo].[Product_type_import] ([ID], [TypeProduct], [KoeffTypeProduct]) VALUES (4, N'Пробковое покрытие', 1.5)
SET IDENTITY_INSERT [dbo].[Product_type_import] OFF
GO
SET IDENTITY_INSERT [dbo].[Products_import] ON 

INSERT [dbo].[Products_import] ([ID], [IDTypeProduct], [NameProduct], [Articul], [MinCostPartner]) VALUES (1, 3, N'Паркетная доска Ясень темный однополосная 14 мм
', 8758385, 4456.9)
INSERT [dbo].[Products_import] ([ID], [IDTypeProduct], [NameProduct], [Articul], [MinCostPartner]) VALUES (2, 3, N'Инженерная доска Дуб Французская елка однополосная 12 мм
', 8858958, 7330.99)
INSERT [dbo].[Products_import] ([ID], [IDTypeProduct], [NameProduct], [Articul], [MinCostPartner]) VALUES (3, 1, N'Ламинат Дуб дымчато-белый 33 класс 12 мм
', 7750282, 1799.33)
INSERT [dbo].[Products_import] ([ID], [IDTypeProduct], [NameProduct], [Articul], [MinCostPartner]) VALUES (4, 1, N'Ламинат Дуб серый 32 класс 8 мм с фаской
', 7028748, 3890.41)
INSERT [dbo].[Products_import] ([ID], [IDTypeProduct], [NameProduct], [Articul], [MinCostPartner]) VALUES (5, 4, N'Пробковое напольное клеевое покрытие 32 класс 4 мм
', 5012543, 5450.59)
SET IDENTITY_INSERT [dbo].[Products_import] OFF
GO
ALTER TABLE [dbo].[Partner_products_import]  WITH CHECK ADD  CONSTRAINT [FK_Partner_products_import_Partners_import] FOREIGN KEY([IDNamePartner])
REFERENCES [dbo].[Partners_import] ([ID])
GO
ALTER TABLE [dbo].[Partner_products_import] CHECK CONSTRAINT [FK_Partner_products_import_Partners_import]
GO
ALTER TABLE [dbo].[Partner_products_import]  WITH CHECK ADD  CONSTRAINT [FK_Partner_products_import_Products_import] FOREIGN KEY([IDNameProduct])
REFERENCES [dbo].[Products_import] ([ID])
GO
ALTER TABLE [dbo].[Partner_products_import] CHECK CONSTRAINT [FK_Partner_products_import_Products_import]
GO
ALTER TABLE [dbo].[Partners_import]  WITH CHECK ADD  CONSTRAINT [FK_Partners_import_TypePartner] FOREIGN KEY([IDTypePartner])
REFERENCES [dbo].[PartnerTypes] ([ID])
GO
ALTER TABLE [dbo].[Partners_import] CHECK CONSTRAINT [FK_Partners_import_TypePartner]
GO
ALTER TABLE [dbo].[Products_import]  WITH CHECK ADD  CONSTRAINT [FK_Products_import_Product_type_import] FOREIGN KEY([IDTypeProduct])
REFERENCES [dbo].[Product_type_import] ([ID])
GO
ALTER TABLE [dbo].[Products_import] CHECK CONSTRAINT [FK_Products_import_Product_type_import]
GO

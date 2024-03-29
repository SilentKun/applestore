USE [AppleStore]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 10.03.2019 0:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10.03.2019 0:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10.03.2019 0:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10.03.2019 0:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10.03.2019 0:29:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10.03.2019 0:29:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gadgets]    Script Date: 10.03.2019 0:29:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gadgets](
	[GadgetId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Category] [nvarchar](200) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[OperatingSystem] [nvarchar](30) NULL,
	[Resolution] [nvarchar](100) NULL,
	[Diagonal] [nvarchar](50) NULL,
	[AspectRatio] [nvarchar](10) NULL,
	[DisplayTechnology] [nvarchar](5) NULL,
	[CPU] [nvarchar](100) NULL,
	[ROM] [nvarchar](10) NULL,
	[CameraResolution] [nvarchar](50) NULL,
	[Measurements] [nvarchar](100) NULL,
	[PixelsPerInch] [nvarchar](5) NULL,
	[Weight] [nvarchar](10) NULL,
	[Material] [nvarchar](100) NULL,
	[SIMType] [nvarchar](50) NULL,
	[WaterResistant] [nvarchar](50) NULL,
	[MaxVideoResolution] [nvarchar](100) NULL,
	[MaxFPSVideo] [nvarchar](20) NULL,
	[MiniJack] [nvarchar](30) NULL,
	[BatteryCapacity] [nvarchar](50) NULL,
	[Sensors] [nvarchar](100) NULL,
	[Equipment] [nvarchar](100) NULL,
	[RAM] [nvarchar](10) NULL,
 CONSTRAINT [PK_dbo.Gadgets] PRIMARY KEY CLUSTERED 
(
	[GadgetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 10.03.2019 0:29:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[ImageId] [int] NOT NULL,
	[GadgetId] [int] NOT NULL,
	[Path] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10.03.2019 0:29:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](128) NOT NULL,
	[GadgetID] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201902131919003_InitialCreate', N'AppleStore.Domain.Concrete.EFDbContext', 0x1F8B0800000000000400CD57DB6E1B37107D2FD07F58F0A9051CD1B25F526395C095ACC0A8650B5927EFD4EE4826CACB96E41AD2B7E5A19FD45FE870EF1749569CA62D0C182BEECC990B67CECCFEF5E5CFF0FD568AE0198CE55A4DC878744E0250B14EB8DA4C48E6D66FDE92F7EF7EFC21BC49E436F85CC95D7A39D45476429E9C4BAF28B5F11348664792C7465BBD76A3584BCA124D2FCECF7FA1E331058420881504E1C74C392E21FF813FA75AC590BA8C89854E40D8F21CDF44396A70CF24D894C53021D7692A2072DAC068A625E36AE4B50D3820C1B5E00C3D8A40AC49C094D28E39F4F7EA93450DA3D5264AF18089C75D0A28B766C24219C755237E6A48E7173E24DA28565071661DBAF67580E3CB3247B4AFFEAA4C933A8798C51BCCB6DBF9A8F34C4EC807966CC091A06FEA6A2A8C17DB97E61C84831D15CA67C154306BEFF8CA30B31B9FD5C58135E4FFF07D265C6660A220738689B36099AD048F7F83DDA3FE1DD4446542B4DD4447F15DE7008F9646A760DCEE23AC3BCEDF2624A05D6DDA57AF95079A4590B7CA5D5E90E01E1D612B017545B41292A7E0032830CC41B264CE81C10BBD4D20CFE9C0879E45FFBFB28625885D458205DBDE81DAB8A709C14712CCF91692EAA4F4E093E2D884A8E44C062F1999818D0D4F8B5AF9CEB6A698868D36BBEF6E6869785CA76E0631974C906069F0A9E4AAB7248862E6AF6DDF1DB6D143DA74C0B02F903F1C163898D2F2CD7CB6F267B0DDD721C8256593D832906E18056604AE537396048D0B05438DAA26DCE769ED534385B4E0C28A33E901D20C172C4DF14A5A245A9E0451C1A0D337D1D7538A2C30686CF7304BED6D6D09BB866DA0F7164DA3A7736EAC9B31C756CCDFD3349103B1F60D1CC86E65A99BE43E793439AFE4FD73A17378905437D3436B3239C7E02412401E27D43ED5BC3A50CC271913CC1C24A4A9169954C709EE185241346D94E2E474840E8BB4813A2F4EC76B98A20DD69C9E8E5452411BA63C1A6284B47747FD92A0839AE80D917E891DEBCEBE486DBDEED25E37866567BCBCE70C5AA510F114A89F79E2DB24DA590772E40546D11F622A38C6DB082C98E26BB0AE98B604578C8BDE8AF4FF5957A8B589386967F94F1706EEF3FBE24A7074161DDF11D43333F113333F49B6FDB98DF4CA3DE09BF0FAB3FE9BC03AF33CF937E7F970E89C32B18F0CECA213318A95C6800A2FEB31FFCA693EE48590B6BF9242BC5CBE6920FC379382D8DF75035AC9DCAAB5AED28F71B53DAA447AB7B300C7124CCFB5717CCD6287AF63B0365FED3E3391F9B548AE20B9550F994B33776D2DC895E8D078488FDBCF5796AECFE1435EADF69F0801DDE418023CA85F332E92DAEFF99EFA3900E12BA56C6CF40A575BDF00BB1AE95EAB1381CAF4CD2005E569E111642A10CC3EA8883DC36B7CC3BDF30E362CDE55F47E18E4E58BE8A63D9C71B6314CDA12A3D1F75FFED47FFABFFB1B2262FED82C100000, N'6.2.0-61023')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201902232330042_InitialCreate', N'AppleStore.WebUI.Models.ApplicationContext', 0x1F8B0800000000000400DD5CDB6EE4B8117D0F907F10F49404DE962F99C1C468EFC2DBB61323E30BA6ED4DF234604BEC363112A59528AF8D60BF2C0FF9A4FC428ABA8B1789EA96BBDB8B05166EB278AA58AC228BA5E2FCEF3FFF9DFEF012F8D6338E1312D233FB6872685B98BAA147E8EACC4ED9F2BB4FF60FDFFFFE77D34B2F78B17E2AE94E381D8CA4C999FDC45874EA3889FB8403944C02E2C661122ED9C40D030779A1737C78F817E7E8C8C100610396654DBFA4949100673FE0E72CA42E8E588AFC9BD0C37E52B443CF3C43B56E51809308B9F8CC3E8F221FCF5918E3C93FF0E2F17A920FB1AD739F2010678EFDA56D214A438618087BFA9800791CD2D53C8206E43FBC4618E896C84F703189D39ADC743E87C77C3E4E3DB08472D38485C140C0A39342418E387C2D35DB9502418597A06AF6CA679DA9F1CCBEF670D6F425F4410122C3D3991F73E233FBA662719E44B7984DCA81931CF22A06B85FC2F8DBA4897860198F3BA80CEA7872C8FF3BB066A9CFD2189F519CB218F907D67DBAF089FB77FCFA107EC3F4ECE468B13CF9F4E123F24E3EFE199F7C68CE14E60A74AD0668BA8FC308C7201B5E56F3B72DA73DCE110756C31A6372AD802D816FD8D60D7AF98CE98A3D81D71C7FB2AD2BF282BDB2A530AE474AC09560108B53F8799BFA3E5AF8B8EA773A79F2FF77703DFEF07114AEB7E899ACB2A517F883E3C4E0575FB09FF5264F24CADDABB5DE5F0BB2AB380CF8EFB67DE5BD5FE7611ABB7C32A196E401C52BCCDAD24D9DDA788D4C9A438D6FD625EAFE9B369754366F25299FD03A9E50B2D8B63794F2BE2D5F638BE3C7107133D3E21AE93238CD893511200E2C91B036A2235323A230B9DFF29EF82F8CE292EB356527C783112E0344FC11B655032E10D62C491CE04A4F3F8660C4880E96F91E2509EC2ADEDF50F2D4213AFC3982E873ECA63118FB9CA1207A736EF74F21C5B769B0C0F136798DB6340FBF8457C8059FBDA47CD4C6789F43F75B98B24BEA5D20861F995B02F29F0F24300718459C73D7C5497205C68CBD590851FB66CEC7F7B95D8735331F91401DD7083BF2D792B48E6DD414527CA32153C5385DA27E0E57849A895A92EA45CD297A452DC8868ACAC1CC242D28F5826604BD72E654A3458DD90A8D1F3666B0FB1F376E76FCEBF682861AB3A8E6AF98E218B631EF1E3186635AAF80C9BEB18B70235B3ECEF4CDCFA68CD34FC84FC766B59637649BC0F8DE90C1EEBF37646242F333F178546270992A8901DE885E7D4FEBF73941B26DBB436B9ADB66BE9D3D40E72EE74912BA24F302451AAD4882B4E58718CEEACF88E4B311B32A30313074C28F3C6881B9D9A251DDD10BEC6386AD73374F33CE50E2224F56234CC81B205879A22A04ABB32B6DE1FE24F1044BC7311F84F82528014F2594C96E41A84B22E4F76A4918697884F1B9573CC49E0B1C61CA19F66AC284B93A99C205A8F8088BD2A7A1A9D3B0B86E43D444ADBA35EF0B61EB7597721C5BB1C99ED859639745FCF62686D9ADB12D1867B74A4C04D026067761A0C55DC5D400C48BCBBE19A87063D2186811526DC540DB1ADB8181B655F2EE0C34BFA29AAEBF705FDD37F36C5F94B77FAC77AA6B07B6D9D2C79E99661E7BC2180623702C9B27EFC22F4C713503298BDB595204BAA28170E83966ED844D1DED2AA350A71B4434A12EC0DACC7A408B0F8A1290E44E03842B33799DD21531C400D832EBD6095BECFC026CC30264ECE687D506A1FEF3AB689A46778F6A66953548266E745568E0280C42DCBADA1337508A2E2B2B2BC624121E120B3726562C4687827AE2568D92CAC98CAEA5D234FBB5A40AC78604641B6949089E345A2A2733BA960A1BED579222241810146CA4A2F6013E92B395798EEAACA9FAA64E5E7455344C1D4D75D6F4064511A1AB46B556D162CDF352ADD977F3E1E54B418EE1B889A28AA992B6E2C4C218ADB0D00BAC41D22B1227EC0231B4403CCB33F302894C71B26A36FF9261F3F09497B03C054A6AFE776D78AA2280D6712B472305D0154C32E0214D86A03001F5708B17D0211FC58AD4FD2CF4D380EA232CFDE8FC035E737CDE22234C1D417E2982925426C5B96DFD1BAD8EEC1763AE5415C7ACBF5A7A089DCECB18B4A9755D5CAA4729D3544D145DEA6A67ABA70B6886AF9818300E5FB05E84B7F1B0BCCAA5393E6F314728AA5C9A1045D3408C46A18404D6E833476DD7B23431DB3DE68842C14A1352E81A2065B32CA52564B3632D3C8D46D514E61CE4429426BADC6B8EAC284969422BBAD7C056C82CF699A32AAA569AC08A6E73ECBA8445DC8BF7F814D45E84363B06F30BF366E7A006E36D36D6718ED146554013A8D13C10ABF8EE2F8115ED7B6952DA5BE3662695274B3633290D867E0F6A7D546F6F419D95007ACCD697F2D636DF5529A0C71B66B86F6A1ED2CD5124A9B8573748E1A6382D6E6DFD8F7DA46B5C4E625BA51AE1887F4D180E269C6032FFD99FF904F30DBD24B841942C71C2F2EA10FBF8F0E858782AB43FCF769C24F17CC5AD57F776A7BD665B28F4A2CF28769F78242A965D6CF0B4A5069572DAD7D4C32F67F6BFB351A7597A84FF95351F58D7C923253FA7D0F110A7D8FA552E231DA7D4DFE0714925E8AFEFE2D586B9CAAFFFF9351F7A60DDC5E04EA7D6A1A0E87596BFFD96639034F9D00DA459FB85C7FBF5B6E6A309C237C74D9E4C28A512BC6DFD17120B325C3CD5EB8852CA3F04E8E58F434553BE80D80851F1CA612CBC5154A87BC5B00E96F60583073F59F68261D864D52F1AD6114DFB9A611DAF10DF32986F63E5C81D9E638A5BD736B6B44CCFBDB5E01B1586EEFA6C934AC6377274B92C7C00DCA8A5DF9B8538EFACA47AB4A35751313D1AF62EEDFECDCBA4F7A532BA0EFA775B10BDCD1AE88E2F5CBFA9D2E73D28D653941FEDBEC079DBB6A64B23EF7995E8B032E63D33B6E298DF7DB1F2B68D4D9760DE73631B5492BC67B6B6ABF373C796667C84EEBCC058AE96D27C0E5265A1FB4A88F3943D5CFF172118411E51E6EF3ED5356B5DF5B63D0C6B123D537DB19CC858721C89AF44D1CD76D85C8B03BF73B2054D375B4D896917EF62FFEFE45DD074F3D6146EEEA2F859593AA92A48EFD9C7BAEAB9DE53B1736B263DB5F57D316BE7B7FDF754DB3C8A525ADEA3F93AFD7E4A994751C998AE33A07459FED00C6767E3DF9E84F33B21AB1A82FF4B9414BBAD53B3A2B9A6CBB03CBC05894A122143738319F2E0483D8F1959229741374F40670FD7B3A41EFF0CB2C0DE35BD4B59943298320E167E2BE1C583802EFE597D765BE6E95DC47F25634C01C4243C717F477F4C89EF55725F2972421A081E5D14E95EBE968CA77D57AF15D26D480D810AF55541D1030E221FC0923B3A47CF781DD9C0FC3EE315725FEB0CA00EA47F21DA6A9F5E10B48A51901418F578F80936EC052FDFFF1F56AE706182550000, N'6.2.0-61023')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201902241620161_InitialCreate1', N'AppleStore.WebUI.Models.ApplicationContext', 0x1F8B0800000000000400E55CDB6EE436127D5F60FF41D0D366E1B47CD919CC1ADD099CB69D183BBE60DACEEEDB802DB1DBC4489422518E8D205F96877C527E614989BAF12251DD72AB9D6080414B2C9E2A16ABC862A9E83F7EFB7DFAED73E05B4F304E508867F6D1E4D0B62076430FE1F5CC4EC9EAEB0FF6B7DFFCFD6FD30B2F78B67E2CE84E181DED899399FD484874EA3889FB0803904C02E4C66112AEC8C40D030778A1737C78F86FE7E8C88114C2A6589635FD94628202983DD0C779885D189114F8D7A107FD84BFA72D8B0CD5BA01014C22E0C2997D16453E5C90308693FFC2E5C3D524EF625B673E02549C05F457B605300E092054D8D3878492C7215E2F22FA02F8F72F11A4742BE027900FE2B422371DCFE1311B8F53752CA0DC342161D013F0E8842BC811BB6FA466BB542055E10555357961A3CED438B3AF3C98BDFA14FA540122C3D3B91F33E2997D5DB2384BA21B482645C7490E791953B89FC3F8CBA48E786019F73B280DEA7872C8FE1D58F3D427690C6718A62406FE8175972E7DE4FE07BEDC875F209E9D1C2D57271FDEBD07DEC9FB7FC19377F591D2B152BAC60BFAEA2E0E231853D9E0AA1CBF6D39CD7E8ED8B1EC56EB936B85DA12F50DDBBA06CF1F215E9347EA35C71F6CEB123D43AF78C38DEB0123EA4AB4138953FA7893FA3E58FAB06C775A79B2FF5BB81EBF7B3F08D71BF084D6D9D40BFCA9E3C4D4AF3E413F6B4D1E5194BB5763BE3F73B2CB380CD873D3BEF2D6CF8B308D5D3698504B720FE235244DE9A64E65BC4626CDA08637EB0275FF4D9B492A9BB792940D68134F2858ECDA1B0A795F97AFB1C5B16D08B99969318DB4199C66C79A08100796485819D191A911613AB8BFF09A487F1A716D67721100E40FB0F21A70A191CF0AC5012C55F95D48ED1CE0DE8AB9034942171EEF07903CBEBA8216D04D63EA0F0B0282E8D5B9DD3D8618DEA4C192B9D9EE780D3635F73F8797C0A56E7D8159AFADF13E86EE97302517D83B07043E10B700648FF728300718449C33D7854972498D197AF39006F605E0152627C7BDE1D8523876E433F7010AD4A18FB0687F2E48ABF0474D2185401A325518D426EAC7708DB099A805A95ED49CA253544ED6575406662629A7D40B9A1174CA99530D16586633347C6499C1EE7F68B95D84A05B0B6A6ACC029FEF2186315DC6BC3B40088C71350326EBC6181149367D8CE9ABEF4D19A71F819F0ECD6A236FC81681E1BD2183DD7F6FC8C4A4AF9F90C7A21283F356414CE18DE8D547B96E9F1324DBB53B3486B96BE6BB590374EE729624A18B322F5064DA789EA4293F8DE1ACEEA4493E1A31F14207460D1DB12D8FBEA163B345A3BAC5E7D087045A676E9E899C83C4059EAC463A20AF8760C58EAA10AC4AC03485FBA7C4935A3A8C5927C00E4109F5548489EC1608BB28027EA796849E865B181B7BC9436C398711C48C61A7264C98ABF32D4C80928F30295D1A9A3A358B6B37444DD4AA9BF3AE10B69A77290DB2139BEC889D3576C9E3B75731CC768DEDC038DB556222803677388681F2B38AA9018807977D3350E1C4A431501E52EDC4409B1A1BC1409B2A7973069A1F514DE75F38AFEE9B79360FCABBDFD65BD535826D36F4B167A699C79EB40FA13D602C9B276B82CF447134A352F2D359C2035DD14018F4029266C2A68A769551A8D30E229A501B6065661DA0FC9BA30424B9530FE18A4C5EAB743C86E8015B64DD5A61F9CA2FC0D62C40C6AE7F7BAD11EABFD08AA66974F62847565A8364E24647851A8EC220C4A5AB397003A5E8B2B2B2624C22E13EB1706D607C325A14D411B76A94540C66702D15A6D9AD255538D62720DB4A4B42F0A4D1523198C1B5C46DB45B498A90A04750B0958A9A1BF840CE56E439CABDA66C9B3A795D167F317534055CD36B104508AF6B055DFC8DB5C8ABB9E65F2FFA5738053986E3268A42A752DA92130963B086422B654D25BD447142CE01014BC0B23C732F90C8143BAB66F12F18D6374F790A8B5DA0A066BF2BC353D50934B65B391AE140977490010B6932048509A8BB5BACC60EF82056A4EEE7A19F06581F61E97BE71FF0EAFDF33732C2D411E49722284965529CDBD4BFD1ECC87E31E44C9571CCE6B3A587D0E9BC8841EB5AD7C5A57A94224D5547D1A5AE469B3D5D40D37FC6C480B1FF8475228CED613A045EE55287E0AF7A62D40A2524B05A9B396AB396A58ED96C3147140A56EA9042530F29EB65290D21EB0D1BE16934AAA630E72017A2D4D1E556736445494A1D5AD1BC01B64266B1CD1C5551B5520756349B6357252CE25ABCC7BBA0F620B4DD36981F98B7DB073518AFB3B00EB38DD6AA02EA40B5D73DB1F8777F098CBFDF4B93D29E1AB733A93C59B29D496930F46B50E3A37A73096AAD04D06336BE943796F9B64A013D5E3FC37D55F3904E8E2249C9BD3C410A27C5293FB575DF07928E7139896D156AA45BFC4B426030610493C54FFEDC47902DE805C135C0680513925787D8C78747C7C26DA2FDB9D9E32489E72B4EBDBAEB3DCD39DB41A1177E02B1FB0862B9EC628B4AEF0A54CA695F610F3ECFEC5FB25EA7597A84FDCA5E1F5857C903463FA5B4E13E4EA1F5AB5C463ACC6D0083FB27A5A0BFBE898B1DE62ABFFADFE7BCEB81751B53773AB50E05456F32FDCDEB1EBDA4C9BB6E21CDC69740FE5CDEF68F003C7F5547EA7D7742299EE0769B5F95582232C83589ADC6ABBC0AB115A2E2BAC3507883A850779D61132CED55068F3E92EC2A43BFC1AAAF366C229AF65A03C2FDC1C44B0DE6EB59D173C40D4D71FCDAC5DA96E9B9B3287CAB0AD1B13739A9767C2B4797EBC37BC00D5A03BE5DACF3C66AAB07DB8315A5D383618F69F7AF5E2FBD2F25D255F43F6E65F42E8BA15B3E75FDA96AA0F7A06A4F5187347EA5F3AE6D4D974FDEF372D17EF5CC7B666C7C9B1FBF6A79D7C6A6CB34EFB9B1F5AA4DDE335B1B6BFF1CD9D28CB7D0D12B8DE5B229CD7721553ABAAB9638CFDDD3E3FF32A446904794F9055075F15A5BE16D07C38A44CF545F352732961C47E22B51B4B3ED3756BEE1B70E96D3B4B3D5D49AB6F1E6EB7F2B6F4ED3CE5B53C1394615B4B286525599DEB18EB51576BDA5AAE7C6483A8AECBB62D6D68FFC6FA9C87910A534BC47F399FAEDD4340FA292215DA7470DB3FCC599EE9DB5BF5349F7EF04AD2B08F6572B31741BBB664973855761B1790B1215244286E61A12E0D12DF52C2668055C429B59023ABBC19E25F5D8679025F4AEF06D4AA294D021C360E937125E2C0868E39F156A37659EDE46EC29196208544CC412F7B7F8BB14F95E29F7A52227A48160D1054FF7B2B9242CEDBB7E29916E426C08C4D5570645F730887C0A96DCE20578829BC846CDEF235C03F7A5CA00EA40BA27A2A9F6E93902EB180409C7A8FAD3476AC35EF0FCCDFF0129DB7B39AE550000, N'6.2.0-61023')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'19de0ba2-3e5a-4218-9c08-418479e934db', N'zak@gmail.com', 0, N'AAW7CV3Dd97j/wYmtbPQeHC7L5K63Y9Udn/T8pfGZ6VGkF8TGKGv5AY3jw8yR5ZKUQ==', N'7da01cca-2602-45e9-96dc-54ab13a423fc', NULL, 0, 0, NULL, 0, 0, N'zak@gmail.com', N'Igor')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'539cf7ae-b95a-4243-9a7b-6bacb605772f', N'dsadasd@dsad.dsa', 0, N'AEa1IMu7Xi74J/VHSBa5aKHPL0SFhFrM67CRrZh4yZRlcRwKYmi9CTfGAhPMS4N2UA==', N'adc77787-60c2-4576-86e9-daf9e435a068', NULL, 0, 0, NULL, 0, 0, N'dsadasd@dsad.dsa', N'Авыавы')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'54abaef5-6795-4551-a242-dceb126a91b8', N'dsadsa@dsa.ds', 0, N'ADs+tdb2MAKj87pW+fi6fDCI+Hja8M12F3hP6HsSrWn2dZL97jnMqF37TvQ+oArW+w==', N'2c1f6cbd-f4a9-413d-989e-4526c209db4c', NULL, 0, 0, NULL, 0, 0, N'dsadsa@dsa.ds', N'dsadsa')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'66427a77-85d7-4a7d-85ac-64fd914cca2e', N'xsilentchannelx1@gmail.com', 0, N'ADWyBPQxu5v5Xhgbz9C4nO8HQQUNGCYeK54uwaeCkFOwNtR4bQrthCaOWKDl+LzBKg==', N'0a63dff3-5b5c-4e27-9573-8ae3f7f1ca79', NULL, 0, 0, NULL, 0, 0, N'xsilentchannelx1@gmail.com', N'Игорь Александрович Томилин')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'998a6fe3-04a0-409c-87d8-462bec51c4f7', N'fadka@gmail.com', 0, N'APn5dCrRGHbyQ3o6iJVicO3AAxZ248sDvzkX6bF5Ax9l34W+06UTx/Rb8hm5DOMm5w==', N'459083e9-59d8-48ed-9ef8-fe11ff918e34', NULL, 0, 0, NULL, 0, 0, N'fadka@gmail.com', N'Алалала')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', N'xsilentchannelx@gmail.com', 0, N'AHNgNA49JoueA/ceEn0bLbmuRK+CHurg0HgFQh0ummkwD4BOz2vi0cdP6QKsFmlrow==', N'3eeadfd0-95a3-4546-a530-c5da628e478e', NULL, 0, 0, NULL, 0, 0, N'xsilentchannelx@gmail.com', N'Игорь')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'da011c9a-d8dc-4fa0-9692-ec48cef5e65b', N'fadafero4ek@gmail.com', 0, N'AB1XkYD+CubS8sejf4BW4QWATSFIfl+XafGBD0dfsFFSLqm2FwJmdCuoCol5uRV5zQ==', N'32f0fba0-ab94-480c-88b5-b1dec622d45a', NULL, 0, 0, NULL, 0, 0, N'Andre', N'Andre')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'e9a061da-d7aa-431c-b624-7c24a5081815', N'paker@gmail.com', 0, N'APdF2R5DsYmsfDDGNiQnZFC1hzrtvbf2TaqO8vSQQQuTOFJStcEiTwa7KkOb+aPXdQ==', N'3e01551e-284b-4dcc-9fae-c47cf2b3deb2', NULL, 0, 0, NULL, 0, 0, N'paker@gmail.com', N'Igor')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'f489f7c0-8767-43a1-b4eb-66c72ff215d1', N'fadafka@gmail.com', 0, N'ABpVDpc/D6H7ZCTu4CCAKfA3nl6FNUP2boJAt2au/4xc7DYndy0IwPNQikJecUnu2Q==', N'6b31658e-4dac-49dc-92e4-3336c9a805b6', NULL, 0, 0, NULL, 0, 0, N'fdsfsd', N'fdsfsd')
SET IDENTITY_INSERT [dbo].[Gadgets] ON 

INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (8, N'iPhone SE 128Gb Gold Золотой', N'iPhone SE', CAST(24190.00 AS Decimal(18, 2)), N'iOS 12', N'1136x640', N'4 дюйма', N'16:9', N'IPS', N'Apple A9', N'128GB', N'12 МП основная, 1.2 МП фронт.', N'58.6x123.8x7.6 мм', N'326', N'113г', N'Алюминий', N'nano Sim', N'Отсутствует', N'3840x2160', N'60 кадров/сек', N'3.5 мм', N'1624 мАч', N'освещенности, приближения, гироскоп, компас, считывание отпечатка пальца', N'смартфон, гарнитура с пультом управления, USB адаптер, коннектор - Lightning', N'2GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (9, N'iPhone XS Max 512Gb Gold', N'iPhone XS Max', CAST(91990.00 AS Decimal(18, 2)), N'iOS 12', N'2436x1125', N'5.8 дюйма', N'18:9', N'OLED', N'Apple A12 Bionic', N'512GB', N'12 МП', N'143.6x70.9x7.7', N'458', N'177г', N'Стекло/сталь', N'nano Sim', N'IP68', N'3840x2160', N'60 кадров/сек', N'Отсутствует', N'2658 мАч', N'	освещенности, приближения, гироскоп, компас, барометр, FaceID', N'смартфон, гарнитура с пультом управления, USB адаптер, коннектор - Lightning', N'4GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (10, N'iPad Pro 12.9" (2018) 1Tb Wi-Fi + Сellular Space Gray', N'iPad Pro 12,9 (2018)', CAST(134990.00 AS Decimal(18, 2)), N'iOS 12', N'2732x2048', N'12.9 дюйма', N'12.9:9', N'IPS', N'Apple A12X Bionic', N'1TB', N'12 МП', N'280,6x 214,9x 5,9', N'264', N'631г', N'Алюминий', N'nano Sim', N'Отсутствует', N'3840x2160', N'60 кадров/сек', N'Отсутсвует', N'9720 мАч', N'Face ID, Трёхосевой гироскоп, Акселерометр, Барометр, Датчик внешней освещённости', N'iPad Pro, Кабель USB‑C для зарядки (1 м), Адаптер питания USB‑C мощностью 18 Вт', N'6GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (11, N'MacBook Air 13 (2018) Z0VJ (1.6GHz, 8Gb, 512Gb) Gold', N'MacBook Air 13 (2018)', CAST(149990.00 AS Decimal(18, 2)), N'macOS Mojave', N'2560x1600', N'13.3', N'16:10', N'IPS', N'Core i5 8210Y', N'256GB', NULL, N'304 x 212 x 4.1- 15.6 мм', N'227', N'1250г', N'Алюминий', NULL, N'Отсутствует', NULL, NULL, N'Отсутствует', N'До 12 часов работы в интернете по беспроводной свя', NULL, N'Ноутбук, блок питания, кабель USB-C для зарядки, инструкция, наклейки Apple', N'8GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (12, N'iMac Pro 27" (8-Core, 32Gb, Vega 56, 1Tb)', N'iMac Pro 27', CAST(376990.00 AS Decimal(18, 2)), N'macOS Mojave', N'5210x2880', N'27', N'16:9', N'IPS', N'	Intel Xeon W 3,2 ГГц', N'1TB', NULL, N'51,6 x 65,0 x 20,3 см', NULL, N'9.7кг', N'Алюминий', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'iMac 27 дюйма, Клавиатура Magic Keyboard, Мышь Magic Mouse 2, Кабель Lightning/USB', N'32GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (13, N'iPhone XS 64Gb Space Gray', N'iPhone XS', CAST(71990.00 AS Decimal(18, 2)), N'iOS 12', N'2436x1125', N'5.8 дюйм.', N'18:9', N'OLED', N'Apple A12 Bionic', N'64GB', N'12 МП основная, 7 фронтальная', N'	70.9x143.6x7.7 мм', N'463', N'177г', N'стекло/сталь', N'nano Sim', N'IP68', N'3840x2160', N'60 кадров/сек', N'Отсутствует', N'2659 мАч', N'	освещенности, приближения, гироскоп, компас, барометр', N'смартфон, гарнитура с пультом управления, USB адаптер, коннектор - Lightning', N'4GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (14, N'iPhone X 64Gb Silver', N'iPhone X', CAST(57490.00 AS Decimal(18, 2)), N'iOS 12', N'2436x1125', N'5.8 дюйма', N'18:9', N'OLED', N'Apple A11 Bionic', N'64GB', N'12 МП', N'143.6x70.9x7.7мм', N'458', N'174г', N'Стекло/сталь', N'nano Sim', N'IP67', N'3840x2160', N'60 кадров/сек', N'Отсутствует', N'2716 мАч', N'	освещенности, приближения, гироскоп, компас, барометр, FaceID', N'смартфон, гарнитура с пультом управления, USB адаптер, коннектор - Lightning', N'3GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (15, N'iPhone 8 Plus 64Gb Space Gray', N'iPhone 8 Plus', CAST(47990.00 AS Decimal(18, 2)), N'iOS 12', N'1920×1080', N'5.5 дюйма', N'16:9', N'IPS', N'Apple A11 Bionic', N'64GB', N'12 МП', N'	158,4x78,1x7,5 мм', N'401', N'202г', N'Стекло/сталь', N'nano SIm', N'IP67', N'3840x2160', N'60 кадров/сек', N'Отсутствует', N'2691 мАч', N'Touch ID, 	освещенности, приближения, гироскоп, компас, барометр', N'смартфон, гарнитура с пультом управления, USB адаптер, коннектор - Lightning, переходник на miniJack', N'3GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (16, N'iPhone 8 64Gb Space Gray', N'iPhone 8', CAST(40999.00 AS Decimal(18, 2)), N'iOS 12', N'1334x750', N'4.7 дюйма', N'16:9', N'IPS', N'Apple A11 Bionic', N'64GB', N'12 МП', N'138.4x67.3x7.3мм', N'326', N'148г', N'Стекло/сталь', N'nano SIm', N'IP67', N'3840x2160', N'60 кадров/сек', N'Отсутствует', N'1821 мАч', N'Touch ID, 	освещенности, приближения, гироскоп, компас, барометр', N'смартфон, гарнитура с пультом управления, USB адаптер, коннектор - Lightning, переходник на miniJack', N'2GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (17, N'iPhone 7 Plus 32Gb Jet Black', N'iPhone 7 Plus', CAST(38490.00 AS Decimal(18, 2)), N'iOS 12', N'1920x1080', N'5.5 дюйма', N'16:9', N'IPS', N'Apple A10 Fusion', N'32GB', N'12 МП', N'158,2x77,9x7,3мм', N'401', N'188г', N'Алюминий', N'nano Sim', N'IP67', N'3840x2160', N'60 кадров/сек', N'Отсутствует', N'2900 мАч', N'Touch ID, 	освещенности, приближения, гироскоп, компас, барометр', N'смартфон, гарнитура с пультом управления, USB адаптер, коннектор - Lightning, переходник на miniJack', N'3GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (19, N'iPhone 7 32Gb Black', N'iPhone 7', CAST(32990.00 AS Decimal(18, 2)), N'iOS 12', N'1334x750', N'4.7 дюйма', N'16:9', N'IPS', N'Apple A10 Fusion', N'32GB', N'12 МП', N'138,3×67,1×7,1 мм', N'326', N'138г', N'Алюминий', N'nano Sim', N'IP67', N'3840x2160', N'60 кадров/сек', N'Отсутствует', N'1960 мАч', N'Touch ID, 	освещенности, приближения, гироскоп, компас, барометр', N'смартфон, гарнитура с пультом управления, USB адаптер, коннектор - Lightning, переходник на miniJack', N'2GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (20, N'iPhone 6S Plus 32Gb Silver', N'iPhone 6S Plus', CAST(37990.00 AS Decimal(18, 2)), N'iOS 12', N'1920x1080', N'5.5 дюйма', N'16:9', N'IPS', N'Apple A9', N'32GB', N'12 МП', N'	77.9x158.2x7.3 мм', N'491', N'192г', N'Алюминий', N'nano Sim', N'Отсутствует', N'3840x2160', N'60 кадров/сек', N'3.5 мм', N'2750 мАч', N'Touch ID, 	освещенности, приближения, гироскоп, компас, барометр', N'смартфон, гарнитура с пультом управления, USB адаптер, коннектор - Lightning', N'3GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (21, N'iPhone 6S 32Gb Rose Gold', N'iPhone 6S', CAST(22990.00 AS Decimal(18, 2)), N'iOS 12', N'1334x750', N'4.7 дюйма', N'16:9', N'IPS', N'Apple A9', N'32GB', N'12 МП', N'138.3 x 67.1 x 7.1 мм', N'326', N'143г', N'Алюминий', N'nano Sim', N'Отсутствует', N'3840x2160', N'60 кадров/сек', N'3.5 мм', N'1715 мАч', N'Touch ID, 	освещенности, приближения, гироскоп, компас, барометр', N'смартфон, гарнитура с пультом управления, USB адаптер, коннектор - Lightning', N'2GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (22, N'iPhone 6 32Gb', N'iPhone 6', CAST(21490.00 AS Decimal(18, 2)), N'iOS 12', N'1334x750', N'4.7 дюйма', N'16:9', N'IPS', N'Apple A8', N'32GB', N'12 МП', N'138.1 x 67 x 6.9 мм', N'326', N'129г', N'Алюминий', N'nano Sim', N'Отсутствует', N'1920x1080', N'60 кадров/сек', N'3.5 мм', N'1810 мАч', N'Touch ID, 	освещенности, приближения, гироскоп, компас, барометр', N'смартфон, гарнитура с пультом управления, USB адаптер, коннектор - Lightning', N'2GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (23, N'iPhone SE 128Gb Rose Gold Розовое золото', N'iPhone SE', CAST(24190.00 AS Decimal(18, 2)), N'iOS 12', N'1136x640', N'4 дюйма', N'16:9', N'IPS', N'Apple A9', N'128GB', N'12 МП', N'123.8 x 58.6 x 7.6 мм', N'326', N'113г', N'Алюминий', N'nano Sim', N'Отсутствует', N'1920x1080', N'60 кадров/сек', N'3.5 мм', N'1624 мАч', N'Touch ID, 	освещенности, приближения, гироскоп, компас, барометр', N'смартфон, гарнитура с пультом управления, USB адаптер, коннектор - Lightning', N'2GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (24, N'iPad Pro 11" (2018) 1Tb Wi-Fi + Сellular Space Gray', N'iPad Pro 11 (2018)', CAST(140990.00 AS Decimal(18, 2)), N'iOS 12', N'2388x1668', N'11 дюймов', N'4.3:3', N'IPS', N'Apple A12X Bionic', N'1TB', N'12 МП', N'247.6 x 178.5 x 5.9 мм', N'265', N'468г', N'Алюминий', N'nano Sim', N'Отсутствует', N'3840x2160', N'60 кадров/сек', N'Отсутствует', N'7812 мАч', N'освещенности, приближения, гироскоп, компас, барометр, FaceID', N'iPad Pro, Кабель USB‑C для зарядки (1 м), Адаптер питания USB‑C мощностью 18 Вт', N'6GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (25, N'iPad Pro 12.9" (2017) 256Gb Wi-Fi + Сellular Gold', N'iPad Pro 12,9 (2017)', CAST(71990.00 AS Decimal(18, 2)), N'iOS 12', N'2732x2048', N'12.9 дюйма', N'4:3', N'IPS', N'Apple A10X Fusion', N'256GB', N'12 МП', N'305.7 x 220.6 x 6.9 мм', N'265', N'677г', N'Алюминий', N'nano Sim', N'Отсутствует', N'3840x2160', N'60 кадров/сек', N'3.5 мм', N'10891 мАч', N'Touch ID,освещенности, приближения, гироскоп, компас, барометр', N'планшет, кабель Lightning-USB, адаптер питания, документация', N'4GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (26, N'iPad Pro 10.5" 256Gb Wi-Fi Gold', N'iPad Pro 10,5', CAST(45990.00 AS Decimal(18, 2)), N'iOS 12', N'2224x1668', N'10.5 дюймов', N'4:3', N'IPS', N'Apple A10X Fusion', N'256GB', N'12 МП', N'250.6 x 174.1 x 6.1 мм', N'265', N'469г', N'Алюминий', N'Отсутствует', N'Отсутствует', N'3840x2160', N'60 кадров/сек', N'3.5 мм', N'8134 мАч', N'Touch ID,освещенности, приближения, гироскоп, компас, барометр', N'планшет, кабель Lightning-USB, адаптер питания, документация', N'4GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (27, N'iPad 2018 128Gb Wi-Fi Silver', N'iPad 2018', CAST(27499.00 AS Decimal(18, 2)), N'iOS 12', N'2048x1536', N'9.7 дюймов', N'4:3', N'IPS', N'Apple A10 Fusion', N'128GB', N'8 МП', N'240 x 169.5 x 7.5мм', N'264', N'469г', N'Алюминий', N'Отсутствует', N'Отсутствует', N'1920x1080', N'60 кадров/сек', N'3.5 мм', N'8827 мАч', N'Touch ID,освещенности, приближения, гироскоп, компас, барометр', N'планшет, кабель Lightning-USB, адаптер питания, документация', N'2GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (28, N'iPad 2017 32Gb Wi-Fi Space Gray', N'iPad 2017', CAST(23990.00 AS Decimal(18, 2)), N'iOS 12', N'2048x1536', N'9.7 дюймов', N'4:3', N'IPS', N'Apple A9', N'32GB', N'8 МП', N'240 x 169.5 x 7.5мм', N'264', N'469г', N'Алюминий', N'Отсутствует', N'Отсутствует', N'1920x1080', N'60 кадров/сек', N'3.5 мм', N'8827 мАч', N'Touch ID,освещенности, приближения, гироскоп, компас, барометр', N'планшет, кабель Lightning-USB, адаптер питания, документация', N'2GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (29, N'iPad Mini 4 128 Gb Wi-Fi + Celluar Gold', N'iPad Mini 4', CAST(33990.00 AS Decimal(18, 2)), N'iOS 12', N'2048x1536', N'7.9 дюймов', N'4:3', N'IPS', N'Apple A8', N'128GB', N'8 МП', N'203.2 x 134.8 x 6.1 мм', N'324', N'299г', N'Алюминий', N'nano Sim', N'Отсутствует', N'1920x1080', N'60 кадров/сек', N'3.5 мм', N'5124 мАч', N'Освещенности, приближения, гироскоп, компас, барометр', N'планшет, кабель Lightning-USB, адаптер питания, документация', N'2GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (30, N'MacBook Pro 15 Retina Touch Bar Z0V30037R Space Gray (2,9 GHz i9, 32GB, 2TB, Radeon Pro Vega 20 4GB)', N'MacBook Pro 15 (2018)', CAST(393990.00 AS Decimal(18, 2)), N'macOS Mojave', N'2880х1800', N'15.4 дюйма', N'16:10', N'IPS', N'Intel Core i9 8950HK', N'2TB', NULL, N'349 х 240 х 15.5 мм', N'220', N'1830г', N'Алюминий', NULL, N'Отсутствует', N'', N'', NULL, N'До 10 часов работы в Интернете по беспроводной свя', NULL, N'Ноутбук, блок питания, кабель USB-C для зарядки, инструкция, наклейки Apple', N'32GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (31, N'MacBook Pro 13 Retina Touch Bar Z0VA/11 Silver (2,7 GHz, 16GB, 2TB)', N'MacBook Pro 13 (2018)', CAST(269990.00 AS Decimal(18, 2)), N'macOS Mojave', N'2560x1600', N'13.3 дюйма', N'16:10', N'IPS', N'	Intel Core i7 с тактовой частотой 2.7GHz (Ускорение Turbo Boost до 4,5 ГГц)', N'2TB', NULL, N'304.1x212.4x14.9 мм', N'227', N'1370г', N'Алюминий', NULL, N'Отсутствует', NULL, N'', NULL, N'До 10 часов работы в Интернете по беспроводной свя', NULL, N'Ноутбук, блок питания, кабель USB-C для зарядки, инструкция, наклейки Apple', N'16GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (32, N'MacBook Pro 15 Retina Touch Bar MPTX2 Silver (3,1 GHz, 16GB, 1TB)', N'MacBook Pro 15 (2017)', CAST(169990.00 AS Decimal(18, 2)), N'macOS Mojave', N'2880х1800', N'15.4 дюйма', N'16:10', N'IPS', N'	Intel Core i7 с тактовой частотой 3,1 ГГц (ускорение Turbo Boost до 3,9 ГГц)', N'1TB', NULL, N'349 х 240 х 15.5 мм', N'220', N'1830г', N'Алюминий', NULL, N'Отсутствует', NULL, N'', NULL, N'До 10 часов работы в Интернете по беспроводной свя', NULL, N'Ноутбук, блок питания, кабель USB-C для зарядки, инструкция, наклейки Apple', N'16GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (33, N'MacBook Pro 13 Retina Touch Bar MPXY2 Silver (3,1GHz, 8GB, 512GB)', N'MacBook Pro 13 (2017)', CAST(125990.00 AS Decimal(18, 2)), N'macOS Mojave', N'2560x1600', N'13.3 дюйма', N'16:10', N'IPS', N'Intel Core i5 с тактовой частотой 3,1 ГГц (Ускорение Turbo Boost до 3,5 ГГц)', N'512GB', NULL, N'304.1x212.4x14.9 мм', N'227', N'1370г', N'Алюминий', NULL, N'Отсутствует', NULL, N'', NULL, N'До 10 часов работы в Интернете по беспроводной свя', NULL, N'Ноутбук, блок питания, кабель USB-C для зарядки, инструкция, наклейки Apple', N'8GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (34, N'MacBook Pro 15 Retina Touch Bar MLH52 Space Gray (2.9GHz, 16GB, 1TB, Radeon Pro 460 4Gb)', N'MacBook Pro 15 (2016)', CAST(179990.00 AS Decimal(18, 2)), N'macOS Mojave', N'2880х1800', N'15.4 дюйма', N'16:10', N'IPS', N'	Intel Core i7, 2,9 ГГц', N'1TB', NULL, N'349 х 240 х 15.5 мм', N'220', N'1830г', N'Алюминий', NULL, N'Отсутствует', NULL, N'', NULL, N'До 10 часов работы в Интернете по беспроводной свя', NULL, N'Ноутбук, блок питания, кабель USB-C для зарядки, инструкция, наклейки Apple', N'16GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (35, N'MacBook Pro 13 Retina Touch Bar MNQG2 Silver (2.9GHz, 8GB, 512GB)', N'MacBook Pro 13 (2016)', CAST(116990.00 AS Decimal(18, 2)), N'macOS Mojave', N'2560x1600', N'13.3 дюйма', N'16:10', N'IPS', N'	Intel Core i5, 2,9 ГГц', N'512GB', NULL, N'304.1x212.4x14.9 мм', N'227', N'1370г', N'Алюминий', NULL, N'Отсутствует', NULL, N'', NULL, N'До 10 часов работы в Интернете по беспроводной свя', NULL, N'Ноутбук, блок питания, кабель USB-C для зарядки, инструкция, наклейки Apple', N'8GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (36, N'Macbook 12 Retina MRQP2 (1.3GHz, 8GB, 512GB) Gold', N'MacBook 12 (2017)', CAST(100990.00 AS Decimal(18, 2)), N'macOS Mojave', N'2304x1440', N'12 дюймов', N'16:10', N'IPS', N'Intel Core i5 с тактовой частотой 1,3 ГГц', N'512GB', NULL, N'131x280.5x196.5 мм', N'226', N'920г', N'Алюминий', NULL, N'Отсутствует', NULL, N'', NULL, N'До 10 часов работы в Интернете по беспроводной свя', NULL, N'Ноутбук, блок питания, кабель USB-C для зарядки, инструкция, наклейки Apple', N'8GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (37, N'MacBook Air 13 (2017) MQD32 (1,8Ghz, 8Gb, 128Gb) РСТ', N'MacBook Air 13', CAST(64999.00 AS Decimal(18, 2)), N'macOS Mojave', N'1440x900', N'13.3 дюйма', N'16:10', N'TN', N' Intel Core i5 ("Broadwell") 1.8ГГц', N'128GB', NULL, N'325x227x0.3-1.7мм', N'128', N'1350г', N'Алюминий', NULL, N'Отсутствует', NULL, N'', NULL, N'До 12 часов работы в Интернете по беспроводной свя', NULL, N'Ноутбук, блок питания, кабель USB-C для зарядки, инструкция, наклейки Apple', N'8GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (38, N'MacBook Pro 15 Retina MJLQ2 (2.2 GHz, 16GB, 256GB)', N'MacBook Pro (2015)', CAST(149990.00 AS Decimal(18, 2)), N'macOS Mojave', N'2880x1800', N'15 дюймов', N'16:10', N'IPS', N'Intel Core i7 2200 МГц Haswell', N'256GB', NULL, N'18x 358,9 x 247,1 мм', N'220', N'2020г', N'Алюминий', NULL, N'Отсутствует', NULL, N'', NULL, N'До 10 часов работы в Интернете по беспроводной свя', NULL, N'Ноутбук, блок питания, кабель USB-C для зарядки, инструкция, наклейки Apple', N'16GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (39, N'Mac mini MRTT2 (3.0GHz, 8Gb, 256Gb)', N'Mac mini (2018)', CAST(81990.00 AS Decimal(18, 2)), N'macOS Mojave', NULL, NULL, NULL, NULL, N'Intel Core i5 с тактовой частотой 3,0 ГГц', N'256GB', NULL, N'197x197x36 мм', NULL, N'1300г', N'Алюминий', NULL, NULL, NULL, N'', NULL, NULL, NULL, N'	Mac mini, Кабель питания', N'8GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (40, N'iMac 21.5" (2017) MMQA2RU/A (2.3 Ghz, 8Gb, 1Tb) РСТ', N'iMac', CAST(78990.00 AS Decimal(18, 2)), N'macOS Mojave', N'	1920x1080', N'21.5 дюймов', N'16:9', N'IPS', N'	Intel Core i5 с тактовой частотой 2,3 ГГц', N'1TB', NULL, N'450х528х175 мм', NULL, N'5660г', N'Алюминий', NULL, NULL, NULL, N'', NULL, NULL, NULL, N'iMac 21,5 дюйма, Клавиатура Magic Keyboard, Мышь Magic Mouse 2, Кабель Lightning/USB', N'8GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (41, N'Mac mini MGEQ2 РСТ (2.8Ghz, 8Gb, 1Tb)', N'Mac mini', CAST(65990.00 AS Decimal(18, 2)), N'macOS Mojave', NULL, NULL, NULL, NULL, N'	Intel Core i5 2.8 ГГц (до 3.3 ГГц с Turbo Boost)', N'1TB', NULL, N'36x197x197 мм', NULL, N'1300г', N'Алюминий', NULL, NULL, NULL, N'', NULL, NULL, NULL, N'Mac mini, Кабель питания', N'8GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (42, N'Mac Pro E5 MQGG2 (3.0Ghz, 16Gb, 256Gb)', N'Mac Pro', CAST(229990.00 AS Decimal(18, 2)), N'macOS Mojave', NULL, NULL, NULL, NULL, N'Intel Xeon E5 с 25 МБ кэш‑памяти третьего уровня и ускорением Turbo Boost до 3,9 ГГц', N'256GB', NULL, N'251x167x167 мм', NULL, N'5000г', N'Алюминий', NULL, NULL, NULL, N'', NULL, NULL, NULL, N'Mac Pro, Кабель питания', N'16GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (44, N'iMac Pro 27" (8-Core, 32Gb, Vega 56, 1Tb)', N'iMac Pro', CAST(376990.00 AS Decimal(18, 2)), N'macOS Mojave', N'5120х2880', N'27 дюймов', N'16:9', N'IPS', N'Intel Xeon W 3,2 ГГц', N'1TB', NULL, N'51,6 x 65,0 x 20,3 см', N'218', N'9700г', N'Алюминий', NULL, NULL, NULL, N'', NULL, NULL, NULL, N'iMac 27 дюйма, Клавиатура Magic Keyboard, Мышь Magic Mouse 2, Кабель Lightning/USB', N'32GB')
INSERT [dbo].[Gadgets] ([GadgetId], [Name], [Category], [Price], [OperatingSystem], [Resolution], [Diagonal], [AspectRatio], [DisplayTechnology], [CPU], [ROM], [CameraResolution], [Measurements], [PixelsPerInch], [Weight], [Material], [SIMType], [WaterResistant], [MaxVideoResolution], [MaxFPSVideo], [MiniJack], [BatteryCapacity], [Sensors], [Equipment], [RAM]) VALUES (45, N'iPhone XR 64Gb (PRODUCT)RED', N'iPhone XR', CAST(53999.00 AS Decimal(18, 2)), N'iOS12', N'1792×828', N'6.1 дюйма', N'18:9', N'IPS', N'Apple A12 Bionic', N'64GB', N'12МП', N'	150,9x 75,7x8,3 мм', N'326', N'194г', N'Алюминий/стекло', N'nano Sim', N'IP67', N'3840x2160', N'60 кадров/сек', N'Отсутствует', N'2,942 мАч', N'освещенности, приближения, гироскоп, компас, барометр, FaceID', N'смартфон, гарнитура с пультом управления, USB адаптер, коннектор - Lightning', N'3GB')
SET IDENTITY_INSERT [dbo].[Gadgets] OFF
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (8, 8, N'~/Pictures/8.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (9, 9, N'~/Pictures/9.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (10, 10, N'~/Pictures/10.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (11, 11, N'~/Pictures/11.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (12, 12, N'~/Pictures/12.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (13, 13, N'~/Pictures/13.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (14, 14, N'~/Pictures/14.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (15, 15, N'~/Pictures/15.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (16, 16, N'~/Pictures/16.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (17, 17, N'~/Pictures/17.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (18, 18, N'~/Pictures/18.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (19, 19, N'~/Pictures/19.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (20, 20, N'~/Pictures/20.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (21, 21, N'~/Pictures/21.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (22, 22, N'~/Pictures/22.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (23, 23, N'~/Pictures/23.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (24, 24, N'~/Pictures/24.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (25, 25, N'~/Pictures/25.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (26, 26, N'~/Pictures/26.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (27, 27, N'~/Pictures/27.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (28, 28, N'~/Pictures/28.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (29, 29, N'~/Pictures/29.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (30, 30, N'~/Pictures/30.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (31, 31, N'~/Pictures/31.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (32, 32, N'~/Pictures/32.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (33, 33, N'~/Pictures/33.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (34, 34, N'~/Pictures/34.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (35, 35, N'~/Pictures/35.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (36, 36, N'~/Pictures/36.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (37, 37, N'~/Pictures/37.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (38, 38, N'~/Pictures/38.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (39, 39, N'~/Pictures/39.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (40, 40, N'~/Pictures/40.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (41, 41, N'~/Pictures/41.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (42, 42, N'~/Pictures/42.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (44, 44, N'~/Pictures/44.jpg')
INSERT [dbo].[Images] ([ImageId], [GadgetId], [Path]) VALUES (45, 45, N'~/Pictures/45.jpg')
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (1, N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', 9)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (2, N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', 9)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (3, N'539cf7ae-b95a-4243-9a7b-6bacb605772f', 12)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (4, N'539cf7ae-b95a-4243-9a7b-6bacb605772f', 8)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (5, N'539cf7ae-b95a-4243-9a7b-6bacb605772f', 9)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (6, N'539cf7ae-b95a-4243-9a7b-6bacb605772f', 8)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (7, N'539cf7ae-b95a-4243-9a7b-6bacb605772f', 8)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (9, N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', 12)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (11, N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', 8)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (12, N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', 9)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (13, N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', 9)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (14, N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', 8)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (15, N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', 9)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (16, N'998a6fe3-04a0-409c-87d8-462bec51c4f7', 8)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (17, N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', 8)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (18, N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', 9)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (19, N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', 9)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (20, N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', 9)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (21, N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', 9)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (22, N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', 9)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (23, N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', 9)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (24, N'e9a061da-d7aa-431c-b624-7c24a5081815', 10)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (25, N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', 13)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (26, N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', 10)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (27, N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', 12)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (28, N'19de0ba2-3e5a-4218-9c08-418479e934db', 9)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (29, N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', 9)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (30, N'66427a77-85d7-4a7d-85ac-64fd914cca2e', 13)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (31, N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', 8)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (32, N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', 9)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (33, N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', 12)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (34, N'66427a77-85d7-4a7d-85ac-64fd914cca2e', 11)
INSERT [dbo].[Orders] ([OrderID], [UserID], [GadgetID]) VALUES (35, N'b20dd5e1-8ef8-4d0a-986c-d788579980c7', 12)
SET IDENTITY_INSERT [dbo].[Orders] OFF
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO

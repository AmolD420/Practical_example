USE [Practical_DB]
GO
/****** Object:  StoredProcedure [dbo].[getMasterProducts]    Script Date: 27-09-2021 09:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getMasterProducts]
AS
BEGIN
	SET NOCOUNT ON;  --Avaid the number of affected rows
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED; --darty read with nolock

	SELECT d.id,mp.[Name] as [name]
	,FIeldType as fieldType
	,Value1 as value1
	,Value2 as value2
	,Value3 as value3
	,Value4 as value4 
	,Value5 as value5
	,Value6 as value6
	,Value7 as value7
	,Value8 as value8 
	,Value9 as value9
	,Value10 as value10
	,Value11 as value11
	,Value12 as value12 
	,Value13 as value13
	,Value14 as value14
	,Value15 as value15
	,Value16 as value16
	FROM MasterProducts mp
	INNER JOIN DataDetails d ON mp.id=d.MPID
END
GO
/****** Object:  StoredProcedure [dbo].[getPlantMachine]    Script Date: 27-09-2021 09:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getPlantMachine]
(
	@ID INT=0
)
AS
BEGIN
SET NOCOUNT ON;  --Avaid the number of affected rows
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED; --darty read with nolock
		SELECT ID as id ,[Name] as [name] FROM PlantMachine WHERE PlantId=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[getPlantName]    Script Date: 27-09-2021 09:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getPlantName]
AS
BEGIN
SET NOCOUNT ON;  --Avaid the number of affected rows
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED; --darty read with nolock
		SELECT ID as id ,[Name] as [name] FROM PlantName
END
GO

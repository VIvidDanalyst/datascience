CREATE TABLE [dbo].[FactSalesOrder] (

	[SalesOrderKey] int NOT NULL, 
	[SalesOrderDateKey] int NOT NULL, 
	[ProductKey] int NOT NULL, 
	[CustomerKey] int NOT NULL, 
	[Quantity] int NULL, 
	[SalesTotal] decimal(18,0) NULL
);


GO
ALTER TABLE [dbo].[FactSalesOrder] ADD CONSTRAINT UQ_9a6b90ae_7951_4691_8e80_7de660129b43 unique NONCLUSTERED ([SalesOrderDateKey]);
GO
ALTER TABLE [dbo].[FactSalesOrder] ADD CONSTRAINT FK_05445d0b_8761_4d12_a671_838d23cc8906 FOREIGN KEY ([CustomerKey]) REFERENCES [dbo].[DimCustomer]([CustomerKey]);
GO
ALTER TABLE [dbo].[FactSalesOrder] ADD CONSTRAINT FK_4a592740_f4a7_4579_88b9_7337bac89f9f FOREIGN KEY ([ProductKey]) REFERENCES [dbo].[DimProduct]([ProductKey]);
﻿ALTER TABLE [SalesLT].[SalesOrderDetail]
    ADD CONSTRAINT [AK_SalesOrderDetail_rowguid] UNIQUE NONCLUSTERED ([rowguid] ASC) WITH (ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered constraint. Used to support replication samples.', @level0type = N'SCHEMA', @level0name = N'SalesLT', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'CONSTRAINT', @level2name = N'AK_SalesOrderDetail_rowguid';


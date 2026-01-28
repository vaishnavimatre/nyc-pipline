CREATE EXTERNAL TABLE dbo.NYC_Payroll_Summary (
    FiscalYear INT,
    AgencyName VARCHAR(50),
    TotalPaid FLOAT
)
WITH (
    LOCATION = 'dirstaging/',
    DATA_SOURCE = pipelinestorageac1_adlsnycpayroll_vaishnavi_m,
    FILE_FORMAT = SynapseDelimitedTextFormat
);
GO

-- ============================================================
-- FACT: FactWorkerAgreementAnalysis
-- Dimensional Warehouse Model (DWM)
-- ============================================================

CREATE TABLE FactWorkerAgreementAnalysis (
    -- Surrogate Key
    WorkerAgreementKey                  INT             NOT NULL IDENTITY(1,1),

    -- Foreign Keys (to Dimension Tables)
    WorkerId                            INT             NOT NULL,   -- FK -> DimWorker
    EmploymentAgreementId               INT             NOT NULL,
    EmploymentPositionId                INT             NULL,       -- FK -> DimEmploymentPosition
    EmploymentPositionDepartmentId      INT             NULL,       -- FK -> DimDepartment
    PrimaryEmployeeQualificationId      INT             NULL,       -- FK -> DimQualification
    WorkerAgreementStartId              INT             NULL,       -- FK -> DimDate (start)
    WorkerAgreementEndId                INT             NULL,       -- FK -> DimDate (end)
    WorkingLocationId                   INT             NULL,       -- FK -> DimLocation

    -- Measures / Facts
    AnnualLeaveEntitlement              DECIMAL(10,4)   NULL,
    AnnualTaxableBenefit                DECIMAL(18,4)   NULL,
    BaseSalary                          DECIMAL(18,4)   NULL,
    BonusSalary                         DECIMAL(18,4)   NULL,
    ContractorDailyRate                 DECIMAL(18,4)   NULL,
    WorkerHourlyCost                    DECIMAL(18,4)   NULL,
    WorkingHours                        DECIMAL(10,4)   NULL,

    -- Audit Columns
    CreatedDate                         DATETIME        NOT NULL DEFAULT GETDATE(),
    CreatedBy                           NVARCHAR(100)   NOT NULL DEFAULT SYSTEM_USER,
    ModifiedDate                        DATETIME        NULL,
    ModifiedBy                          NVARCHAR(100)   NULL,

    -- Constraints
    CONSTRAINT PK_FactWorkerAgreementAnalysis
        PRIMARY KEY CLUSTERED (WorkerAgreementKey)
);
GO

-- Indexes
CREATE NONCLUSTERED INDEX IX_FactWorkerAgreement_WorkerId
    ON FactWorkerAgreementAnalysis (WorkerId);
GO

CREATE NONCLUSTERED INDEX IX_FactWorkerAgreement_EmploymentAgreementId
    ON FactWorkerAgreementAnalysis (EmploymentAgreementId);
GO

CREATE NONCLUSTERED INDEX IX_FactWorkerAgreement_PositionId
    ON FactWorkerAgreementAnalysis (EmploymentPositionId);
GO

CREATE NONCLUSTERED INDEX IX_FactWorkerAgreement_DepartmentId
    ON FactWorkerAgreementAnalysis (EmploymentPositionDepartmentId);
GO

CREATE NONCLUSTERED INDEX IX_FactWorkerAgreement_StartEndId
    ON FactWorkerAgreementAnalysis (WorkerAgreementStartId, WorkerAgreementEndId);
GO


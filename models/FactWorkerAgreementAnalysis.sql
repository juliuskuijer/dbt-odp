{{ config(
    materialized='table'
) }}

select
    -- Foreign Keys
    WorkerId,
    EmploymentAgreementId,
    EmploymentPositionId,
    EmploymentPositionDepartmentId,
    PrimaryEmployeeQualificationId,
    WorkerAgreementStartId,
    WorkerAgreementEndId,
    WorkingLocationId,

    -- Measures
    AnnualLeaveEntitlement,
    AnnualTaxableBenefit,
    BaseSalary,
    BonusSalary,
    ContractorDailyRate,
    WorkerHourlyCost,
    WorkingHours,

    -- Audit
    CreatedDate,
    CreatedBy,
    ModifiedDate,
    ModifiedBy

from {{ ref('my_first_dbt_model') }}
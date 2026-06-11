{{ config(materialized='table') }}

select
    1                       as WorkerAgreementKey,
    1                       as WorkerId,
    1                       as EmploymentAgreementId,
    null::int               as EmploymentPositionId,
    null::int               as EmploymentPositionDepartmentId,
    null::int               as PrimaryEmployeeQualificationId,
    null::int               as WorkerAgreementStartId,
    null::int               as WorkerAgreementEndId,
    null::int               as WorkingLocationId,
    null::decimal(18,4)     as AnnualLeaveEntitlement,
    null::decimal(18,4)     as AnnualTaxableBenefit,
    null::decimal(18,4)     as BaseSalary,
    null::decimal(18,4)     as BonusSalary,
    null::decimal(18,4)     as ContractorDailyRate,
    null::decimal(18,4)     as WorkerHourlyCost,
    null::decimal(10,4)     as WorkingHours,
    current_timestamp()     as CreatedDate,
    current_user()          as CreatedBy,
    null::timestamp         as ModifiedDate,
    null::varchar           as ModifiedBy
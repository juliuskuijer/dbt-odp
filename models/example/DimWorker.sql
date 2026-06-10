

-- ============================================================
-- DimWorker Dimension Table
-- Data Warehouse Model (DWM)
-- ============================================================

CREATE TABLE DimWorker (
    -- Surrogate & Natural Keys
    WorkerKey                           INT             NOT NULL IDENTITY(1,1),   -- Surrogate key
    WorkerID                            NVARCHAR(50)    NOT NULL,                 -- Source system natural key

    -- Address
    AddressStatusCode                   NVARCHAR(20)    NULL,
    AddressStatusId                     INT             NULL,
    AddressNumber                       NVARCHAR(20)    NULL,
    BirthPlaceCode                      NVARCHAR(20)    NULL,
    BirthPlaceLabel                     NVARCHAR(100)   NULL,
    BirthingAgent                       NVARCHAR(100)   NULL,
    ContactPointBit                     BIT             NULL,
    Country                             NVARCHAR(100)   NULL,

    -- Criminal Record
    CriminalRecordStatusCode            NVARCHAR(20)    NULL,
    CriminalRecordStatusId              INT             NULL,
    CriminalRecordStatusLabel           NVARCHAR(100)   NULL,

    -- Date of Birth
    DateOfBirth                         DATE            NULL,
    DateOfBirthStatus                   NVARCHAR(50)    NULL,

    -- Disability
    DisabilityStatusCode                NVARCHAR(20)    NULL,
    DisabilityStatusId                  INT             NULL,

    -- Education
    EducationLevelCode                  NVARCHAR(20)    NULL,
    EducationLevelId                    INT             NULL,
    EducationLevelLabel                 NVARCHAR(100)   NULL,
    EducationLevelUId                   NVARCHAR(50)    NULL,

    -- Email
    EmailAddress                        NVARCHAR(255)   NULL,

    -- Employment / Reemployment
    ReemploymentStatusId                INT             NULL,
    ReemploymentStatusLabel             NVARCHAR(100)   NULL,

    -- Family Cycle
    FamilyCycleId                       INT             NULL,
    FamilyCycleLabel                    NVARCHAR(100)   NULL,

    -- Person Name
    FirstName                           NVARCHAR(100)   NULL,
    LastName                            NVARCHAR(100)   NULL,
    MiddleName                          NVARCHAR(100)   NULL,
    FullName                            NVARCHAR(300)   NULL,

    -- Gender
    GenderCode                          NVARCHAR(20)    NULL,
    GenderId                            INT             NULL,
    GenderLabel                         NVARCHAR(100)   NULL,

    -- Identification
    IdentificationNumber                NVARCHAR(100)   NULL,
    IdentificationPartyName             NVARCHAR(100)   NULL,
    IdentifierTypeCode                  NVARCHAR(50)    NULL,
    IdentifierTypeId                    INT             NULL,
    IdentifierTypeLabel                 NVARCHAR(100)   NULL,

    -- Job / Last Contact
    LastContactDate                     DATE            NULL,

    -- Language
    LanguageCode                        NVARCHAR(20)    NULL,
    LanguageId                          INT             NULL,
    LanguageLabel                       NVARCHAR(100)   NULL,

    -- Legal Competency
    LegalCompetencyStatusCode           NVARCHAR(20)    NULL,
    LegalCompetencyStatusId             INT             NULL,
    LegalCompetencyStatusLabel          NVARCHAR(100)   NULL,

    -- Literacy
    LiteracyIndicatorCode               NVARCHAR(20)    NULL,
    LiteracyIndicatorId                 INT             NULL,
    LiteracyIndicatorLabel              NVARCHAR(100)   NULL,

    -- Marital Status
    MaritalStatusCode                   NVARCHAR(20)    NULL,
    MaritalStatusId                     INT             NULL,
    MaritalStatusLabel                  NVARCHAR(100)   NULL,

    -- Mobile
    MobileName                          NVARCHAR(100)   NULL,
    MobilePrefix                        NVARCHAR(20)    NULL,

    -- Name Type
    NameTypeAuthority                   NVARCHAR(100)   NULL,
    NameTypeCode                        NVARCHAR(20)    NULL,
    NameTypeId                          INT             NULL,
    NameTypeLabel                       NVARCHAR(100)   NULL,

    -- Nationality
    NationalityId                       INT             NULL,
    NationalityLabel                    NVARCHAR(100)   NULL,

    -- Occupation
    OccupationCode                      NVARCHAR(20)    NULL,
    OccupationId                        INT             NULL,

    -- PO Box
    POBox                               NVARCHAR(50)    NULL,

    -- Party
    PartyId                             INT             NULL,
    PartyRegistrationIdentifier         NVARCHAR(100)   NULL,

    -- Person Type
    PersonTypeCode                      NVARCHAR(20)    NULL,
    PersonTypeId                        INT             NULL,
    PersonTypeLabel                     NVARCHAR(100)   NULL,

    -- Phone
    PhoneNumber                         NVARCHAR(50)    NULL,
    PhoneNumberTypeCode                 NVARCHAR(20)    NULL,
    PhoneNumberTypeId                   INT             NULL,
    PhoneNumberTypeLabel                NVARCHAR(100)   NULL,

    -- Primary Citizenship
    PrimaryCitizenshipCode              NVARCHAR(20)    NULL,
    PrimaryCitizenshipId                INT             NULL,
    PrimaryCitizenshipPriority          INT             NULL,
    PrimaryCitizenshipResidenceIndicator NVARCHAR(20)   NULL,

    -- Primary Ethnicity
    PrimaryEthnicityCode                NVARCHAR(20)    NULL,
    PrimaryEthnicityId                  INT             NULL,

    -- Primary Patron
    PrimaryPatronPercentage             DECIMAL(5,2)    NULL,
    PrimaryPatronIndicator              BIT             NULL,

    -- Primary Race
    PrimaryRaceCode                     NVARCHAR(20)    NULL,
    PrimaryRaceId                       INT             NULL,
    PrimaryRaceManager                  NVARCHAR(100)   NULL,

    -- Reliability Rating
    ReliabilityRatingCode               NVARCHAR(20)    NULL,
    ReliabilityRatingId                 INT             NULL,
    ReliabilityRatingLabel              NVARCHAR(100)   NULL,

    -- Religion
    ReligionTypeCode                    NVARCHAR(20)    NULL,
    ReligionTypeId                      INT             NULL,
    ReligionTypeLabel                   NVARCHAR(100)   NULL,

    -- Result Class
    ResultClassCode                     NVARCHAR(20)    NULL,

    -- Social Media
    SocialClassLabel                    NVARCHAR(100)   NULL,
    SocialMediaAccountName              NVARCHAR(255)   NULL,
    SocialMediaAccountPurposeCode       NVARCHAR(20)    NULL,
    SocialMediaAccountPurposeId         INT             NULL,
    SocialMediaAccountPurposeLabel      NVARCHAR(100)   NULL,
    SocialMediaCode                     NVARCHAR(20)    NULL,
    SocialMediaId                       INT             NULL,
    SocialMediaLabel                    NVARCHAR(100)   NULL,

    -- Spread Speed
    SpreadSpeed                         NVARCHAR(50)    NULL,
    SpreadSpeedId                       INT             NULL,

    -- Stam (Status)
    StamCode                            NVARCHAR(20)    NULL,

    -- Street
    StreetNumber                        NVARCHAR(50)    NULL,
    StreetName                          NVARCHAR(100)   NULL,
    StreetPrefix                        NVARCHAR(50)    NULL,
    StreetSuffix                        NVARCHAR(50)    NULL,
    StreetTypeCode                      NVARCHAR(20)    NULL,
    StreetTypeId                        INT             NULL,
    StreetTypeLabel                     NVARCHAR(100)   NULL,
    StreetWalkerTermsUseIndicator       NVARCHAR(20)    NULL,

    -- Town
    TownId                              INT             NULL,
    TownName                            NVARCHAR(100)   NULL,

    -- Weekly Target
    WeeklyTargetHours                   DECIMAL(5,2)    NULL,
    WorkerAllocationNumber              INT             NULL,

    -- Worker Type
    WorkerTypeCode                      NVARCHAR(20)    NULL,
    WorkerTypeId                        INT             NULL,
    WorkerTypeLabel                     NVARCHAR(100)   NULL,

    -- Anchor
    AnchorId                            INT             NULL,

    -- Valid Date Range (SCD Type 2 support)
    ValidFrom                           DATE            NULL,
    ValidTo                             DATE            NULL,
    IsCurrent                           BIT             NOT NULL DEFAULT 1,

    -- Source Reference
    SourceSystem                        NVARCHAR(50)    NULL,
    SourceID                            NVARCHAR(100)   NULL,

    -- Address (continued)
    AddressLabel                        NVARCHAR(255)   NULL,

    -- Secondary Identification
    SecondIdentificationCode            NVARCHAR(50)    NULL,
    SecondIdentificationId              INT             NULL,

    -- General / Other
    PopulationPercentage                DECIMAL(7,4)    NULL,
    Population                          INT             NULL,
    BrandName                           NVARCHAR(100)   NULL,

    -- Audit Columns
    CreatedDate                         DATETIME        NOT NULL DEFAULT GETDATE(),
    CreatedBy                           NVARCHAR(100)   NOT NULL DEFAULT SYSTEM_USER,
    ModifiedDate                        DATETIME        NULL,
    ModifiedBy                          NVARCHAR(100)   NULL,

    -- Constraints
    CONSTRAINT PK_DimWorker PRIMARY KEY CLUSTERED (WorkerKey),
    CONSTRAINT UQ_DimWorker_WorkerID_ValidFrom UNIQUE (WorkerID, ValidFrom)
)


/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null

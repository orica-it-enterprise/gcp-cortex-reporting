SELECT
  AccountingDocuments.Client_MANDT,
  AccountingDocuments.ExchangeRateType_KURST,
  AccountingDocuments.CompanyCode_BUKRS,
  CompaniesMD.CompanyText_BUTXT,
  AccountingDocuments.CustomerNumber_KUNNR,
  AccountingDocuments.FiscalYear_GJAHR,
  CustomersMD.NAME1_NAME1,
  CompaniesMD.Country_LAND1 AS Company_Country,
  CompaniesMD.CityName_ORT01 AS Company_City,
  CustomersMD.CountryKey_LAND1,
  CustomersMD.City_ORT01,
  AccountingDocuments.AccountingDocumentNumber_BELNR,
  AccountingDocuments.NumberOfLineItemWithinAccountingDocument_BUZEI,
  AccountingDocuments.CurrencyKey_WAERS,
  AccountingDocuments.LocalCurrency_HWAER,
  CompaniesMD.FiscalyearVariant_PERIV,
  IF(`{{ project_id_tgt }}.{{ dataset_reporting_tgt }}.Fiscal_Period_s4`(AccountingDocuments.Client_MANDT,
      CompaniesMD.FiscalyearVariant_PERIV,
      AccountingDocuments.PostingDateInTheDocument_BUDAT) = 'CASE1',
    `{{ project_id_tgt }}.{{ dataset_reporting_tgt }}.Fiscal_Case1`(AccountingDocuments.Client_MANDT,
      CompaniesMD.FiscalyearVariant_PERIV,
      AccountingDocuments.PostingDateInTheDocument_BUDAT),
    IF(`{{ project_id_tgt }}.{{ dataset_reporting_tgt }}.Fiscal_Period_s4`(AccountingDocuments.Client_MANDT,
        CompaniesMD.FiscalyearVariant_PERIV,
        AccountingDocuments.PostingDateInTheDocument_BUDAT) = 'CASE2',
      `{{ project_id_tgt }}.{{ dataset_reporting_tgt }}.Fiscal_Case2_s4`(AccountingDocuments.Client_MANDT,
        CompaniesMD.FiscalyearVariant_PERIV,
        AccountingDocuments.PostingDateInTheDocument_BUDAT),
      IF(`{{ project_id_tgt }}.{{ dataset_reporting_tgt }}.Fiscal_Period_s4`(AccountingDocuments.Client_MANDT,
          CompaniesMD.FiscalyearVariant_PERIV,
          AccountingDocuments.PostingDateInTheDocument_BUDAT) = 'CASE3',
        `{{ project_id_tgt }}.{{ dataset_reporting_tgt }}.Fiscal_Case3_s4`(AccountingDocuments.Client_MANDT,
          CompaniesMD.FiscalyearVariant_PERIV,
          AccountingDocuments.PostingDateInTheDocument_BUDAT),
        'DATA ISSUE'))) AS Period,
  IF(`{{ project_id_tgt }}.{{ dataset_reporting_tgt }}.Fiscal_Period`(AccountingDocuments.Client_MANDT,
      CompaniesMD.FiscalyearVariant_PERIV,
      CURRENT_DATE()) = 'CASE1',
    `{{ project_id_tgt }}.{{ dataset_reporting_tgt }}.Fiscal_Case1`(AccountingDocuments.Client_MANDT,
      CompaniesMD.FiscalyearVariant_PERIV,
      CURRENT_DATE()),
    IF(`{{ project_id_tgt }}.{{ dataset_reporting_tgt }}.Fiscal_Period_s4`(AccountingDocuments.Client_MANDT,
        CompaniesMD.FiscalyearVariant_PERIV,
        CURRENT_DATE()) = 'CASE2',
      `{{ project_id_tgt }}.{{ dataset_reporting_tgt }}.Fiscal_Case2_s4`(AccountingDocuments.Client_MANDT,
        CompaniesMD.FiscalyearVariant_PERIV,
        CURRENT_DATE()),
      IF(`{{ project_id_tgt }}.{{ dataset_reporting_tgt }}.Fiscal_Period_s4`(AccountingDocuments.Client_MANDT,
          CompaniesMD.FiscalyearVariant_PERIV,
          CURRENT_DATE()) = 'CASE3',
        `{{ project_id_tgt }}.{{ dataset_reporting_tgt }}.Fiscal_Case3_s4`(AccountingDocuments.Client_MANDT,
          CompaniesMD.FiscalyearVariant_PERIV,
          CURRENT_DATE()),
        'DATA ISSUE'))) AS Current_Period,
  AccountingDocuments.AccountType_KOART,
  AccountingDocuments.PostingDateInTheDocument_BUDAT,
  AccountingDocuments.DocumentDateInDocument_BLDAT,
  AccountingDocuments.InvoiceToWhichTheTransactionBelongs_REBZG,
  AccountingDocuments.BillingDocument_VBELN,
  AccountingDocuments.WrittenOffAmount_DMBTR,
  AccountingDocuments.BadDebt_DMBTR,
  AccountingDocuments.netDueDateCalc AS NetDueDate,
  AccountingDocuments.sk2dtCalc AS CashDiscountDate1,
  AccountingDocuments.sk1dtCalc AS CashDiscountDate2,
  AccountingDocuments.OpenAndNotDue,
  AccountingDocuments.ClearedAfterDueDate,
  AccountingDocuments.ClearedOnOrBeforeDueDate,
  AccountingDocuments.OpenAndOverDue,
  AccountingDocuments.DoubtfulReceivables,
  AccountingDocuments.DaysInArrear,
  AccountingDocuments.AccountsReceivable,
  AccountingDocuments.Sales
FROM
  `{{ project_id_tgt }}.{{ dataset_reporting_tgt }}.AccountingDocuments` AS AccountingDocuments
LEFT JOIN
  `{{ project_id_tgt }}.{{ dataset_reporting_tgt }}.CustomersMD` AS CustomersMD
  ON
    AccountingDocuments.Client_MANDT = CustomersMD.Client_MANDT
    AND AccountingDocuments.CustomerNumber_KUNNR = CustomersMD.CustomerNumber_KUNNR
LEFT JOIN
  `{{ project_id_tgt }}.{{ dataset_reporting_tgt }}.CompaniesMD` AS CompaniesMD
  ON
    AccountingDocuments.Client_MANDT = CompaniesMD.Client_MANDT
    AND AccountingDocuments.CompanyCode_BUKRS = CompaniesMD.CompanyCode_BUKRS
WHERE
  AccountingDocuments.AccountType_KOART = "D"

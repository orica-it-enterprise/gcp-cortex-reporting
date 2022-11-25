---SOURCE_SYS to avoid duplicates while using sql_flavour as UNION will be added later in this view
SELECT
  vbak.MANDT AS Client_MANDT,
  vbak.VBELN AS SalesDocument_VBELN,
  vbap.POSNR AS Item_POSNR,
  vbap.MATNR AS MaterialNumber_MATNR,
  vbap.ERDAT AS CreationDate_ERDAT,
  vbak.ERZET AS CreationTime_ERZET,
  vbak.ERNAM AS CreatedBy_ERNAM,
  vbak.ANGDT AS QuotationDateFrom_ANGDT,
  vbak.BNDDT AS QuotationDateTo_BNDDT,
  vbak.AUDAT AS DocumentDate_AUDAT,
  vbak.VBTYP AS DocumentCategory_VBTYP,
  vbak.TRVOG AS TransactionGroup_TRVOG,
  vbak.AUART AS SalesDocumentType_AUART,
  vbak.AUGRU AS Reason_AUGRU,
  vbak.GWLDT AS WarrantyDate_GWLDT,
  vbak.SUBMI AS CollectiveNumber_SUBMI,
  vbak.LIFSK AS DeliveryBlock_LIFSK,
  vbak.FAKSK AS BillingBlock_FAKSK,
  vbak.WAERK AS CurrencyHdr_WAERK,
  vbak.VKORG AS SalesOrganization_VKORG,
  vbak.VTWEG AS DistributionChannel_VTWEG,
  vbak.SPART AS DivisionHdr_SPART,
  vbak.VKGRP AS SalesGroup_VKGRP,
  vbak.VKBUR AS SalesOffice_VKBUR,
  vbak.GSBER AS BusinessAreaHdr_GSBER,
  vbak.GSKST AS CostCtrBusinessArea_GSKST,
  vbak.GUEBG AS AgreementValidFrom_GUEBG,
  vbak.GUEEN AS AgreementValidTo_GUEEN,
  vbak.KNUMV AS ConditionNumber_KNUMV,
  vbak.VDATU AS RequestedDeliveryDate_VDATU,
  vbak.VPRGR AS ProposedDateType_VPRGR,
  vbak.AUTLF AS CompleteDeliveryFlag_AUTLF,
  vbak.VBKLA AS OriginalSystem_VBKLA,
  vbak.VBKLT AS DocumentIndicator_VBKLT,
  vbak.KALSM AS PricingProcedure_KALSM,
  vbak.VSBED AS ShippingConditions_VSBED,
  vbak.FKARA AS ProposedBillingType_FKARA,
  vbak.AWAHR AS SalesProbability_AWAHR,
  vbak.KTEXT AS SearchTermForProductProposal_KTEXT,
  vbak.BSTNK AS CustomerPurchaseOrderNumber_BSTNK,
  vbak.BSARK AS CustomerPurchaseOrderType_BSARK,
  vbak.BSTDK AS CustomerPurchaseOrderDate_BSTDK,
  vbak.BSTZD AS PurchaseOrderNumberSupplement_BSTZD,
  vbak.IHREZ AS YourReference_IHREZ,
  vbak.BNAME AS NameOfOrderer_BNAME,
  vbak.TELF1 AS TelephoneNumber_TELF1,
  vbak.MAHZA AS NumberOfContactsFromTheCustomer_MAHZA,
  vbak.MAHDT AS LastCustomerContactDate_MAHDT,
  vbak.KUNNR AS SoldToParty_KUNNR,
  vbak.KOSTL AS CostCenterHdr_KOSTL,
  vbak.STAFO AS UpdateGroupForStatistics_STAFO,
  vbak.STWAE AS StatisticScurrency_STWAE,
  vbak.AEDAT AS ChangedOn_AEDAT,
  vbak.KVGR1 AS CustomerGroup1_KVGR1,
  vbak.KVGR2 AS CustomerGroup2_KVGR2,
  vbak.KVGR3 AS CustomerGroup3_KVGR3,
  vbak.KVGR4 AS CustomerGroup4_KVGR4,
  vbak.KVGR5 AS CustomerGroup5_KVGR5,
  vbak.KNUMA AS Agreement_KNUMA,
  vbak.KOKRS AS ControllingArea_KOKRS,
  vbak.PS_PSP_PNR AS WBSElementHdr_PS_PSP_PNR,
  vbak.KURST AS ExchangeRateType_KURST,
  vbak.KKBER AS CreditControlArea_KKBER,
  vbak.KNKLI AS CustomerCreditLimitRef_KNKLI,
  vbak.GRUPP AS CustomerCreditGroup_GRUPP,
  vbak.SBGRP AS CreditRepresentativeGroupForCreditManagement_SBGRP,
  vbak.CTLPC AS RiskCategory_CTLPC,
  vbak.CMWAE AS CurrencyKeyOfCreditControlArea_CMWAE,
  vbak.CMFRE AS ReleASeDateOfTheDocumentDeterminedByCreditManagement_CMFRE,
  vbak.CMNUP AS DateOfNextCreditCheckOfDocument_CMNUP,
  vbak.CMNGV AS NextDate_CMNGV,
  vbak.AMTBL AS ReleasedCreditValueOfTheDocument_AMTBL,
  vbak.HITYP_PR AS HierarchyTypeForPricing_HITYP_PR,
  vbak.ABRVW AS UsageIndicator_ABRVW,
  vbak.ABDIS AS MRPForDeliveryScheduleTypes_ABDIS,
  vbak.VGBEL AS DocumentNumberOfTheReferenceDocument_VGBEL,
  vbak.OBJNR AS ObjectNumberAtHeaderLevel_OBJNR,
  vbak.BUKRS_VF AS CompanyCodeToBeBilled_BUKRS_VF,
  vbak.TAXK1 AS AlternativeTaxClassification_TAXK1,
  vbak.TAXK2 AS TaxClassification2_TAXK2,
  vbak.TAXK3 AS TaxClassification3_TAXK3,
  vbak.TAXK4 AS TaxClassification4_TAXK4,
  vbak.TAXK5 AS TaxClassification5_TAXK5,
  vbak.TAXK6 AS TaxClassification6_TAXK6,
  vbak.TAXK7 AS TaxClassification7_TAXK7,
  vbak.TAXK8 AS TaxClassification8_TAXK8,
  vbak.TAXK9 AS TaxClassification9_TAXK9,
  vbak.XBLNR AS ReferenceDocumentNumber_XBLNR,
  vbak.ZUONR AS AssignmentNumber_ZUONR,
  vbak.VGTYP AS PreDocCategory_VGTYP,
  vbak.AUFNR AS OrderNumberHdr_AUFNR,
  vbak.QMNUM AS NotificationNo_QMNUM,
  vbak.VBELN_GRP AS MasterContractNumber_VBELN_GRP,
  vbak.STCEG_L AS TaxDestinationCountry_STCEG_L,
  vbak.LANDTX AS TaxDepartureCountry_LANDTX,
  vbak.HANDLE AS InternationalUniqueKey_HANDLE,
  vbak.PROLI AS DangerousGoodsManagementProfile_PROLI,
  vbak.CONT_DG AS DangerousGoodsFlag_CONT_DG,
  vbak.UPD_TMSTMP AS UTCTimeStampL_UPD_TMSTMP,
  vbap.MATWA AS MaterialEntered_MATWA,
  vbap.PMATN AS PricingReferenceMaterial_PMATN,
  vbap.CHARG AS BatchNumber_CHARG,
  vbap.MATKL AS MaterialGroup_MATKL,
  vbap.ARKTX AS ShortText_ARKTX,
  vbap.PSTYV AS ItemCategory_PSTYV,
  vbap.POSAR AS ItemType_POSAR,
  vbap.LFREL AS RelevantForDelivery_LFREL,
  vbap.FKREL AS RelevantForBilling_FKREL,
  vbap.UEPOS AS BOMItemLevel_UEPOS,
  vbap.GRPOS AS AlternativeForItem_GRPOS,
  vbap.ABGRU AS RejectionReason_ABGRU,
  vbap.PRODH AS ProductHierarchy_PRODH,
  vbap.ZWERT AS TargetValue_ZWERT,
  vbap.ZMENG AS TargetQuantityUoM_ZMENG,
  vbap.ZIEME AS TargetQuantityUoM_ZIEME,
  vbap.UMZIZ AS BaseTargetConversionFactor_UMZIZ,
  vbap.UMZIN AS ConversionFactor_UMZIN,
  vbap.MEINS AS BaseUnitOfMeasure_MEINS,
  vbap.SMENG AS ScaleQuantity_SMENG,
  vbap.ABLFZ AS RoundingQuantityForDelivery_ABLFZ,
  vbap.ABDAT AS ReconciliationDate_ABDAT,
  vbap.ABSFZ AS AllowedDeviation_ABSFZ,
  vbap.POSEX AS ItemNumberOfTheUnderlyingPurchaseOrder_POSEX,
  vbap.KDMAT AS CustomerMaterialNumber_KDMAT,
  vbap.KBVER AS AllowedDeviationPercent_KBVER,
  vbap.KEVER AS DaysByWhichTheQuantityCanBeShifted_KEVER,
  vbap.VKGRU AS RepairProcessing_VKGRU,
  vbap.VKAUS AS UsageIndicator_VKAUS,
  vbap.GRKOR AS DeliveryGroup_GRKOR,
  vbap.FMENG AS QuantityIsFixed_FMENG,
  vbap.UEBTK AS UnlimitedOverDeliveryAllowed_UEBTK,
  vbap.UEBTO AS OverDeliveryToleranceLimit_UEBTO,
  vbap.UNTTO AS UnderDeliveryToleranceLimit_UNTTO,
  vbap.FAKSP AS BillingBlockForItem_FAKSP,
  vbap.ATPKZ AS ReplacementPart_ATPKZ,
  vbap.RKFKF AS FormOfBillingForCO_RKFKF,
  vbap.SPART AS Division_SPART,
  vbap.GSBER AS BusinessArea_GSBER,
  vbap.NETWR AS NetPrice_NETWR,
  vbap.WAERK AS Currency_WAERK,
  vbap.ANTLF AS MaximumPartialDeliveries_ANTLF,
  vbap.KZTLF AS PartialDeliveryAtItemLevel_KZTLF,
  vbap.CHSPL AS BatchSplitAllowed_CHSPL,
  vbap.KWMENG AS CumulativeOrderQuantity_KWMENG,
  vbap.LSMENG AS CumulativeTargetDeliveryQty_LSMENG,
  vbap.KBMENG AS CumulativeConfirmedQuantity_KBMENG,
  vbap.KLMENG AS CumulativeConfirmedQuantityInBASeUoM_KLMENG,
  vbap.VRKME AS SalesUnit_VRKME,
  vbap.UMVKZ AS NumeratorQty_UMVKZ,
  vbap.UMVKN AS DenominatorQty_UMVKN,
  vbap.BRGEW AS GrossWeightOfItem_BRGEW,
  vbap.NTGEW AS NetWeightOfItem_NTGEW,
  vbap.GEWEI AS WeightUnit_GEWEI,
  vbap.VOLUM AS VolumeOfTheItem_VOLUM,
  vbap.VOLEH AS VolumeUnit_VOLEH,
  vbap.VBELV AS OriginatingDocument_VBELV,
  vbap.POSNV AS OriginatingItem_POSNV,
  vbap.VGBEL AS ReferenceDocument_VGBEL,
  vbap.VGPOS AS ReferenceItem_VGPOS,
  vbap.VOREF AS ReferenceIndicator_VOREF,
  vbap.UPFLU AS UpdateIndicator_UPFLU,
  vbap.ERLRE AS CompletionRuleForQuotation_ERLRE,
  vbap.LPRIO AS DeliveryPriority_LPRIO,
  vbap.WERKS AS Plant_WERKS,
  vbap.LGORT AS StorageLocation_LGORT,
  vbap.VSTEL AS ShippingReceivingPoint_VSTEL,
  vbap.ROUTE AS Route_ROUTE,
  vbap.STKEY AS BOMOrigin_STKEY,
  vbap.STDAT AS BOMDate_STDAT,
  vbap.STLNR AS BOM_STLNR,
  vbap.AWAHR AS OrderProbabilityOfTheItem_AWAHR,
  vbap.TAXM1 AS TaxClassification1_TAXM1,
  vbap.TAXM2 AS TaxClassification2_TAXM2,
  vbap.TAXM3 AS TaxClassification3_TAXM3,
  vbap.TAXM4 AS TaxClassification4_TAXM4,
  vbap.TAXM5 AS TaxClassification5_TAXM5,
  vbap.TAXM6 AS TaxClassification6_TAXM6,
  vbap.TAXM7 AS TaxClassification7_TAXM7,
  vbap.TAXM8 AS TaxClassification8_TAXM8,
  vbap.TAXM9 AS TaxClassification9_TAXM9,
  vbap.VBEAF AS FixedShippingProcessingTimeInDays_VBEAF,
  vbap.VBEAV AS VariableShippingProcessingTimeInDays_VBEAV,
  vbap.VGREF AS PrecedingDocumentHasResultedFromReference_VGREF,
  vbap.KPEIN AS ConditionPricingUnit_KPEIN,
  vbap.KMEIN AS ConditionUnit_KMEIN,
  vbap.SHKZG AS ReturnsItem_SHKZG,
  vbap.SKTOF AS CashDiscountIndicator_SKTOF,
  vbap.MTVFP AS CheckingGroupForAvailabilityCheck_MTVFP,
  vbap.SUMBD AS SummingUpOfRequirements_SUMBD,
  vbap.KONDM AS MaterialPricingGroup_KONDM,
  vbap.KTGRM AS AccountAssignmentGroupForThisMaterial_KTGRM,
  vbap.BONUS AS VolumeRebateGroup_BONUS,
  vbap.PROVG AS CommissionGroup_PROVG,
  vbap.PRSOK AS PricingIsOK_PRSOK,
  vbap.BWTAR AS ValuationType_BWTAR,
  vbap.BWTEX AS SeparateValuation_BWTEX,
  vbap.XCHPF AS BatchManagementRequirementIndicator_XCHPF,
  vbap.XCHAR AS BatchManagementIndicator_XCHAR,
  vbap.LFMNG AS MinimumDeliveryQuantityInDeliveryNoteProcessing_LFMNG,
  vbap.STAFO AS UpdateGroupForStatisticsUpdate_STAFO,
  vbap.KZWI1 AS SubTotal1FromPricingProcedureForCondition_KZWI1,
  vbap.KZWI2 AS SubTotal2FromPricingProcedureForCondition_KZWI2,
  vbap.KZWI3 AS SubTotal3FromPricingProcedureForCondition_KZWI3,
  vbap.KZWI4 AS SubTotal4FromPricingProcedureForCondition_KZWI4,
  vbap.KZWI5 AS SubTotal5FromPricingProcedureForCondition_KZWI5,
  vbap.KZWI6 AS SubTotal6FromPricingProcedureForCondition_KZWI6,
  vbap.STCUR AS ExchangeRateForStatistics_STCUR,
  vbap.AEDAT AS LastChangedOn_AEDAT,
  vbap.EAN11 AS InternationalArticleNumber_EAN11,
  vbap.FIXMG AS DeliveryDateAndQuantityFixed_FIXMG,
  vbap.PRCTR AS ProfitCenter_PRCTR,
  vbap.MVGR1 AS MaterialGroup1_MVGR1,
  vbap.MVGR2 AS MaterialGroup2_MVGR2,
  vbap.MVGR3 AS MaterialGroup3_MVGR3,
  vbap.MVGR4 AS MaterialGroup4_MVGR4,
  vbap.MVGR5 AS MaterialGroup5_MVGR5,
  vbap.KMPMG AS ComponentQuantity_KMPMG,
  vbap.SUGRD AS ReasonForMaterialSubstitution_SUGRD,
  vbap.SOBKZ AS SpecialStockIndicator_SOBKZ,
  vbap.VPZUO AS AllocationIndicator_VPZUO,
  vbap.PAOBJNR AS ProfitabilitySegmentNumber_PAOBJNR,
  vbap.PS_PSP_PNR AS WBSElement_PS_PSP_PNR,
  vbap.AUFNR AS OrderNumber_AUFNR,
  vbap.VPMAT AS PlanningMaterial_VPMAT,
  vbap.VPWRK AS PlanningPlant_VPWRK,
  vbap.PRBME AS BaseUnitOfMeasureForProductGroup_PRBME,
  vbap.UMREF AS ConversionFactorQuantities_UMREF,
  vbap.KNTTP AS AccountAssignmentCategory_KNTTP,
  vbap.KZVBR AS ConsumptionPosting_KZVBR,
  vbap.SERNR AS BOMExplosionNumber_SERNR,
  vbap.OBJNR AS ObjectNumberAtItemLevel_OBJNR,
  vbap.ABGRS AS ResultsAnalysisKey_ABGRS,
  vbap.BEDAE AS RequirementsType_BEDAE,
  vbap.CMPRE AS ItemCreditPrice_CMPRE,
  vbap.CMTFG AS CreditBlock_CMTFG,
  vbap.CMPNT AS RelevantForCredit_CMPNT,
  vbap.CUOBJ AS Configuration_CUOBJ,
  vbap.CUOBJ_CH AS InternalObjectNumberOfTheBatchClassification_CUOBJ_CH,
  vbap.CEPOK AS StatusExpectedPrice_CEPOK,
  vbap.KOUPD AS ConditionUpdate_KOUPD,
  vbap.SERAIL AS SerialNumberProfile_SERAIL,
  vbap.ANZSN AS NumberOfSerialNumbers_ANZSN,
  vbap.NACHL AS CustomerHasNotPostedGoodsReceipt_NACHL,
  vbap.MAGRV AS PackagingMaterials_MAGRV,
  vbap.MPROK AS StatusManualPriceChange_MPROK,
  vbap.VGTYP AS PrecedingDocCategory_VGTYP,
  vbap.KALNR AS CostEstimateNumber_KALNR,
  vbap.KLVAR AS CostingVariant_KLVAR,
  vbap.SPOSN AS BOMItemNumber_SPOSN,
  vbap.KOWRR AS StatisticalValues_KOWRR,
  vbap.STADAT AS StatisticsDate_STADAT,
  vbap.EXART AS BusinessTransactionTypeForForeignTrade_EXART,
  vbap.PREFE AS ImportExportFlag_PREFE,
  vbap.KNUMH AS NumberOfConditionRecord_KNUMH,
  vbap.CLINT AS InternalClassNumber_CLINT,
  vbap.STLTY AS BOMCategory_STLTY,
  vbap.STLKN AS BOMItemNodeNumber_STLKN,
  vbap.STPOZ AS InternalCounter_STPOZ,
  vbap.STMAN AS InconsistentConfiguration_STMAN,
  vbap.ZSCHL_K AS OverHeadKey_ZSCHL_K,
  vbap.KALSM_K AS CostingSheet_KALSM_K,
  vbap.KALVAR AS CostingVariant_KALVAR,
  vbap.KOSCH AS ProductAllocation_KOSCH,
  vbap.UPMAT AS PricingReferenceMaterial_UPMAT,
  vbap.UKONM AS MaterialPricingGroup_UKONM,
  vbap.MFRGR AS MaterialFreightGroup_MFRGR,
  vbap.PLAVO AS PlanningReleaseRegulation_PLAVO,
  vbap.KANNR AS KANBAN_KANNR,
  vbap.CMPRE_FLT AS ItemCreditPrice_CMPRE_FLT,
  vbap.ABFOR AS FormOfPaymentGuarantee_ABFOR,
  vbap.ABGES AS GuaranteedFactor_ABGES,
  vbap.WKTNR AS ValueContractNo_WKTNR,
  vbap.WKTPS AS ValueContractItem_WKTPS,
  vbap.SKOPF AS AssortmentModule_SKOPF,
  vbap.KZBWS AS ValuationofSpecialStock_KZBWS,
  vbap.WGRU1 AS MaterialGroupHierarchy1_WGRU1,
  vbap.WGRU2 AS MaterialGroupHierarchy2_WGRU2,
  vbap.KNUMA_PI AS Promotion_KNUMA_PI,
  vbap.KNUMA_AG AS SalesDeal_KNUMA_AG,
  vbap.KZFME AS LeadingUoM_KZFME,
  vbap.LSTANR AS FreeGoodsDeliveryControl_LSTANR,
  vbap.TECHS AS ParameterVariant_TECHS,
  vbap.BERID AS MRPArea_BERID,
  vbap.PCTRF AS ProfitCenterForBilling_PCTRF,
  vbap.STOCKLOC AS ManagingLocation_STOCKLOC,
  vbap.SLOCTYPE AS TypeOfFirstInventory_SLOCTYPE,
  vbap.MSR_RET_REASON AS ReturnReason_MSR_RET_REASON,
  vbap.MSR_REFUND_CODE AS ReturnsRefundCode_MSR_REFUND_CODE,
  vbap.MSR_APPROV_BLOCK AS ApprovalBlock_MSR_APPROV_BLOCK,
  vbap.NRAB_KNUMH AS ConditionRecordNumber_NRAB_KNUMH,
  vbap.TRMRISK_RELEVANT AS RiskRelevancyInSales_TRMRISK_RELEVANT,
  vbap.HANDOVERLOC AS LocationForAPhysicalHandOverOfGoods_HANDOVERLOC,
  vbap.HANDOVERDATE AS HandOverDateAtTheHandOverLocation_HANDOVERDATE,
  vbap.HANDOVERTIME AS HandOverTimeAtTheHandOverLocation_HANDOVERTIME,
  vbap.TC_AUT_DET AS TaxCodeAutomaticallyDetermined_TC_AUT_DET,
  vbap.MANUAL_TC_REASON AS ManualTaxCodeReASon_MANUAL_TC_REASON,
  vbap.FISCAL_INCENTIVE AS TaxIncentiveType_FISCAL_INCENTIVE,
  vbap.FISCAL_INCENTIVE_ID AS IncentiveID_FISCAL_INCENTIVE_ID,
  vbap.SPCSTO AS NotAFiscalSpecialCaseForCFOPDetermination_SPCSTO,
  vbap.KOSTL AS CostCenter_KOSTL,
  vbap.FONDS AS Fund_FONDS,
  vbap.FISTL AS FundsCenter_FISTL,
  vbap.FKBER AS FunctionalArea_FKBER,
  --##CORTEX-CUSTOMER Consider adding other dimensions from the calendar_date_dim table as per your requirement
  CalendarDateDimension_ERDAT.CalYear AS YearOfSalesOrderCreationDate_ERDAT,
  CalendarDateDimension_ERDAT.CalMonth AS MonthOfSalesOrderCreationDate_ERDAT,
  CalendarDateDimension_ERDAT.CalWeek AS WeekOfSalesOrderCreationDate_ERDAT,
  CalendarDateDimension_ERDAT.DayOfMonth AS DayOfSalesOrderCreationDate_ERDAT,
  CalendarDateDimension_ERDAT.CalQuarter AS QuarterOfSalesOrderCreationDate_ERDAT,
  CalendarDateDimension_VDATU.CalYear AS YearOfRequestedDeliveryDate_VDATU,
  CalendarDateDimension_VDATU.CalMonth AS MonthOfRequestedDeliveryDate_VDATU,
  CalendarDateDimension_VDATU.CalWeek AS WeekOfRequestedDeliveryDate_VDATU,
  CalendarDateDimension_VDATU.DayOfMonth AS DayOfRequestedDeliveryDate_VDATU,
  CalendarDateDimension_VDATU.CalQuarter AS QuarterOfRequestedDeliveryDate_VDATU,
  --##CORTEX-CUSTOMER If you prefer to use currency conversion, uncomment below
  -- currency_conversion.UKURS AS ExchangeRateTargetCurrency_UKURS,
  -- currency_conversion.conv_date AS Conversion_date,
  -- currency_conversion.TCURR AS TargetCurrency_TCURR,
  -- vbap.NETPR * currency_conversion.UKURS AS NetPriceTargetCurrency_NETPR,
  -- vbak.NETWR * currency_conversion.UKURS AS NetValueOfTheSalesOrderInTargetCurrency_NETWR,
  -- vbap.WAVWR * currency_conversion.UKURS AS CostInTargetCurrency_WAVWR,
  -- vbap.MWSBP * currency_conversion.UKURS AS TaxAmountInTargetCurrency_MWSBP,
  ---- Sales Order Value at item level in Target Currency
  -- (vbap.NETPR * currency_conversion.UKURS * vbap.KWMENG) AS SalesOrderValueLineItemTargetCurrency,
  COALESCE(vbap.NETPR * tcurx_vbap.CURRFIX, vbap.NETPR) AS NetPrice_NETPR,
  COALESCE(vbak.NETWR * tcurx_vbak.CURRFIX, vbak.NETWR) AS NetValueOfTheSalesOrderInDocumentCurrency_NETWR,
  COALESCE(vbap.WAVWR * tcurx_vbap.CURRFIX, vbap.WAVWR) AS CostInDocumentCurrency_WAVWR,
  COALESCE(vbap.MWSBP * tcurx_vbap.CURRFIX, vbap.MWSBP) AS TaxAmountInDocumentCurrency_MWSBP,
  ---- Sales Order Value at item level in Source Currency
  COALESCE(vbap.NETPR * tcurx_vbap.CURRFIX, vbap.NETPR) * vbap.KWMENG AS SalesOrderValueLineItemSourceCurrency
FROM `{{ project_id_src }}.{{ dataset_cdc_processed_s4 }}.vbak` AS vbak
INNER JOIN `{{ project_id_src }}.{{ dataset_cdc_processed_s4 }}.vbap` AS vbap
  ON vbak.VBELN = vbap.VBELN
    AND vbak.MANDT = vbap.MANDT
LEFT JOIN `{{ project_id_src }}.{{ dataset_cdc_processed_s4 }}.currency_decimal` AS tcurx_vbak
  ON vbak.WAERK = tcurx_vbak.CURRKEY
LEFT JOIN `{{ project_id_src }}.{{ dataset_cdc_processed_s4 }}.currency_decimal` AS tcurx_vbap
  ON vbap.WAERK = tcurx_vbap.CURRKEY
--##CORTEX-CUSTOMER If you prefer to use currency conversion, uncomment below
-- LEFT JOIN `{{ project_id_src }}.{{ dataset_cdc_processed_s4 }}.currency_conversion` AS currency_conversion
--   ON vbak.MANDT = currency_conversion.MANDT
--     AND vbak.WAERK = currency_conversion.FCURR
--     AND vbak.ERDAT = currency_conversion.conv_date
--     AND currency_conversion.TCURR {{ currency }}
--##CORTEX-CUSTOMER Modify the exchange rate type based on your requirement
--     AND currency_conversion.KURST = 'M'
LEFT JOIN `{{ project_id_src }}.{{ dataset_cdc_processed_s4 }}.calendar_date_dim` AS CalendarDateDimension_ERDAT
  ON CalendarDateDimension_ERDAT.Date = vbak.ERDAT
LEFT JOIN `{{ project_id_src }}.{{ dataset_cdc_processed_s4 }}.calendar_date_dim` AS CalendarDateDimension_VDATU
  ON CalendarDateDimension_VDATU.Date = vbak.VDATU

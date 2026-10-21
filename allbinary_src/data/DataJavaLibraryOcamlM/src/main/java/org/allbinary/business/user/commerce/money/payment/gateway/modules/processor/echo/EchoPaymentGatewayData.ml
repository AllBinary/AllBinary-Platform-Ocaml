(*

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo *)

open Allbinary_java [@@warning "-33"]

let tRANSACTION_TYPE : string ref = ref ("transaction_type")
let get_tRANSACTION_TYPE () = !tRANSACTION_TYPE
let set_tRANSACTION_TYPE value' = tRANSACTION_TYPE := value'
let () = java_register_static "EchoPaymentGatewayData.get_tRANSACTION_TYPE" (fun _ -> Obj.repr (get_tRANSACTION_TYPE ()))
let mERCHANT_ECHO_ID : string ref = ref ("merchant_echo_id")
let get_mERCHANT_ECHO_ID () = !mERCHANT_ECHO_ID
let set_mERCHANT_ECHO_ID value' = mERCHANT_ECHO_ID := value'
let () = java_register_static "EchoPaymentGatewayData.get_mERCHANT_ECHO_ID" (fun _ -> Obj.repr (get_mERCHANT_ECHO_ID ()))
let oRDER_TYPE : string ref = ref ("order_type")
let get_oRDER_TYPE () = !oRDER_TYPE
let set_oRDER_TYPE value' = oRDER_TYPE := value'
let () = java_register_static "EchoPaymentGatewayData.get_oRDER_TYPE" (fun _ -> Obj.repr (get_oRDER_TYPE ()))
let mERCHANT_PIN : string ref = ref ("merchant_pin")
let get_mERCHANT_PIN () = !mERCHANT_PIN
let set_mERCHANT_PIN value' = mERCHANT_PIN := value'
let () = java_register_static "EchoPaymentGatewayData.get_mERCHANT_PIN" (fun _ -> Obj.repr (get_mERCHANT_PIN ()))
let iSP_ECHO_ID : string ref = ref ("isp_echo_id")
let get_iSP_ECHO_ID () = !iSP_ECHO_ID
let set_iSP_ECHO_ID value' = iSP_ECHO_ID := value'
let () = java_register_static "EchoPaymentGatewayData.get_iSP_ECHO_ID" (fun _ -> Obj.repr (get_iSP_ECHO_ID ()))
let iSP_PIN : string ref = ref ("isp_pin")
let get_iSP_PIN () = !iSP_PIN
let set_iSP_PIN value' = iSP_PIN := value'
let () = java_register_static "EchoPaymentGatewayData.get_iSP_PIN" (fun _ -> Obj.repr (get_iSP_PIN ()))
let bILLING_IP_ADDRESS : string ref = ref ("billing_ip_address")
let get_bILLING_IP_ADDRESS () = !bILLING_IP_ADDRESS
let set_bILLING_IP_ADDRESS value' = bILLING_IP_ADDRESS := value'
let () = java_register_static "EchoPaymentGatewayData.get_bILLING_IP_ADDRESS" (fun _ -> Obj.repr (get_bILLING_IP_ADDRESS ()))
let mERCHANT_EMAIL : string ref = ref ("merchant_email")
let get_mERCHANT_EMAIL () = !mERCHANT_EMAIL
let set_mERCHANT_EMAIL value' = mERCHANT_EMAIL := value'
let () = java_register_static "EchoPaymentGatewayData.get_mERCHANT_EMAIL" (fun _ -> Obj.repr (get_mERCHANT_EMAIL ()))
let aUTHORIZATION : string ref = ref ("authorization")
let get_aUTHORIZATION () = !aUTHORIZATION
let set_aUTHORIZATION value' = aUTHORIZATION := value'
let () = java_register_static "EchoPaymentGatewayData.get_aUTHORIZATION" (fun _ -> Obj.repr (get_aUTHORIZATION ()))
let bILLING_PREFIX : string ref = ref ("billing_prefix")
let get_bILLING_PREFIX () = !bILLING_PREFIX
let set_bILLING_PREFIX value' = bILLING_PREFIX := value'
let () = java_register_static "EchoPaymentGatewayData.get_bILLING_PREFIX" (fun _ -> Obj.repr (get_bILLING_PREFIX ()))
let bILLING_NAME : string ref = ref ("billing_name")
let get_bILLING_NAME () = !bILLING_NAME
let set_bILLING_NAME value' = bILLING_NAME := value'
let () = java_register_static "EchoPaymentGatewayData.get_bILLING_NAME" (fun _ -> Obj.repr (get_bILLING_NAME ()))
let bILLING_FIRST_NAME : string ref = ref ("billing_first_name")
let get_bILLING_FIRST_NAME () = !bILLING_FIRST_NAME
let set_bILLING_FIRST_NAME value' = bILLING_FIRST_NAME := value'
let () = java_register_static "EchoPaymentGatewayData.get_bILLING_FIRST_NAME" (fun _ -> Obj.repr (get_bILLING_FIRST_NAME ()))
let bILLING_LAST_NAME : string ref = ref ("billing_last_name")
let get_bILLING_LAST_NAME () = !bILLING_LAST_NAME
let set_bILLING_LAST_NAME value' = bILLING_LAST_NAME := value'
let () = java_register_static "EchoPaymentGatewayData.get_bILLING_LAST_NAME" (fun _ -> Obj.repr (get_bILLING_LAST_NAME ()))
let bILLING_COMPANY_NAME : string ref = ref ("billing_company_name")
let get_bILLING_COMPANY_NAME () = !bILLING_COMPANY_NAME
let set_bILLING_COMPANY_NAME value' = bILLING_COMPANY_NAME := value'
let () = java_register_static "EchoPaymentGatewayData.get_bILLING_COMPANY_NAME" (fun _ -> Obj.repr (get_bILLING_COMPANY_NAME ()))
let bILLING_ADDRESS1 : string ref = ref ("billing_address1")
let get_bILLING_ADDRESS1 () = !bILLING_ADDRESS1
let set_bILLING_ADDRESS1 value' = bILLING_ADDRESS1 := value'
let () = java_register_static "EchoPaymentGatewayData.get_bILLING_ADDRESS1" (fun _ -> Obj.repr (get_bILLING_ADDRESS1 ()))
let bILLING_ADDRESS2 : string ref = ref ("billing_address2")
let get_bILLING_ADDRESS2 () = !bILLING_ADDRESS2
let set_bILLING_ADDRESS2 value' = bILLING_ADDRESS2 := value'
let () = java_register_static "EchoPaymentGatewayData.get_bILLING_ADDRESS2" (fun _ -> Obj.repr (get_bILLING_ADDRESS2 ()))
let bILLING_CITY : string ref = ref ("billing_city")
let get_bILLING_CITY () = !bILLING_CITY
let set_bILLING_CITY value' = bILLING_CITY := value'
let () = java_register_static "EchoPaymentGatewayData.get_bILLING_CITY" (fun _ -> Obj.repr (get_bILLING_CITY ()))
let bILLING_STATE : string ref = ref ("billing_state")
let get_bILLING_STATE () = !bILLING_STATE
let set_bILLING_STATE value' = bILLING_STATE := value'
let () = java_register_static "EchoPaymentGatewayData.get_bILLING_STATE" (fun _ -> Obj.repr (get_bILLING_STATE ()))
let bILLING_ZIP : string ref = ref ("billing_zip")
let get_bILLING_ZIP () = !bILLING_ZIP
let set_bILLING_ZIP value' = bILLING_ZIP := value'
let () = java_register_static "EchoPaymentGatewayData.get_bILLING_ZIP" (fun _ -> Obj.repr (get_bILLING_ZIP ()))
let bILLING_COUNTRY : string ref = ref ("billing_country")
let get_bILLING_COUNTRY () = !bILLING_COUNTRY
let set_bILLING_COUNTRY value' = bILLING_COUNTRY := value'
let () = java_register_static "EchoPaymentGatewayData.get_bILLING_COUNTRY" (fun _ -> Obj.repr (get_bILLING_COUNTRY ()))
let bILLING_PHONE : string ref = ref ("billing_phone")
let get_bILLING_PHONE () = !bILLING_PHONE
let set_bILLING_PHONE value' = bILLING_PHONE := value'
let () = java_register_static "EchoPaymentGatewayData.get_bILLING_PHONE" (fun _ -> Obj.repr (get_bILLING_PHONE ()))
let bILLING_FAX : string ref = ref ("billing_fax")
let get_bILLING_FAX () = !bILLING_FAX
let set_bILLING_FAX value' = bILLING_FAX := value'
let () = java_register_static "EchoPaymentGatewayData.get_bILLING_FAX" (fun _ -> Obj.repr (get_bILLING_FAX ()))
let bILLING_EMAIL : string ref = ref ("billing_email")
let get_bILLING_EMAIL () = !bILLING_EMAIL
let set_bILLING_EMAIL value' = bILLING_EMAIL := value'
let () = java_register_static "EchoPaymentGatewayData.get_bILLING_EMAIL" (fun _ -> Obj.repr (get_bILLING_EMAIL ()))
let cC_NUMBER : string ref = ref ("cc_number")
let get_cC_NUMBER () = !cC_NUMBER
let set_cC_NUMBER value' = cC_NUMBER := value'
let () = java_register_static "EchoPaymentGatewayData.get_cC_NUMBER" (fun _ -> Obj.repr (get_cC_NUMBER ()))
let cCEXP_MONTH : string ref = ref ("ccexp_month")
let get_cCEXP_MONTH () = !cCEXP_MONTH
let set_cCEXP_MONTH value' = cCEXP_MONTH := value'
let () = java_register_static "EchoPaymentGatewayData.get_cCEXP_MONTH" (fun _ -> Obj.repr (get_cCEXP_MONTH ()))
let cCEXP_YEAR : string ref = ref ("ccexp_year")
let get_cCEXP_YEAR () = !cCEXP_YEAR
let set_cCEXP_YEAR value' = cCEXP_YEAR := value'
let () = java_register_static "EchoPaymentGatewayData.get_cCEXP_YEAR" (fun _ -> Obj.repr (get_cCEXP_YEAR ()))
let cNP_RECURRING : string ref = ref ("cnp_recurring")
let get_cNP_RECURRING () = !cNP_RECURRING
let set_cNP_RECURRING value' = cNP_RECURRING := value'
let () = java_register_static "EchoPaymentGatewayData.get_cNP_RECURRING" (fun _ -> Obj.repr (get_cNP_RECURRING ()))
let cnp_security : string ref = ref ("cnp_security")
let get_cnp_security () = !cnp_security
let set_cnp_security value' = cnp_security := value'
let () = java_register_static "EchoPaymentGatewayData.get_cnp_security" (fun _ -> Obj.repr (get_cnp_security ()))
let cOUNTER : string ref = ref ("counter")
let get_cOUNTER () = !cOUNTER
let set_cOUNTER value' = cOUNTER := value'
let () = java_register_static "EchoPaymentGatewayData.get_cOUNTER" (fun _ -> Obj.repr (get_cOUNTER ()))
let dEBUG : string ref = ref ("debug")
let get_dEBUG () = !dEBUG
let set_dEBUG value' = dEBUG := value'
let () = java_register_static "EchoPaymentGatewayData.get_dEBUG" (fun _ -> Obj.repr (get_dEBUG ()))
let eC_ACCOUNT : string ref = ref ("ec_account")
let get_eC_ACCOUNT () = !eC_ACCOUNT
let set_eC_ACCOUNT value' = eC_ACCOUNT := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_ACCOUNT" (fun _ -> Obj.repr (get_eC_ACCOUNT ()))
let eC_ACCOUNT_TYPE : string ref = ref ("ec_account_type")
let get_eC_ACCOUNT_TYPE () = !eC_ACCOUNT_TYPE
let set_eC_ACCOUNT_TYPE value' = eC_ACCOUNT_TYPE := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_ACCOUNT_TYPE" (fun _ -> Obj.repr (get_eC_ACCOUNT_TYPE ()))
let eC_ADDRESS1 : string ref = ref ("ec_address1")
let get_eC_ADDRESS1 () = !eC_ADDRESS1
let set_eC_ADDRESS1 value' = eC_ADDRESS1 := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_ADDRESS1" (fun _ -> Obj.repr (get_eC_ADDRESS1 ()))
let eC_ADDRESS2 : string ref = ref ("ec_address2")
let get_eC_ADDRESS2 () = !eC_ADDRESS2
let set_eC_ADDRESS2 value' = eC_ADDRESS2 := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_ADDRESS2" (fun _ -> Obj.repr (get_eC_ADDRESS2 ()))
let eC_BANK_NAME : string ref = ref ("ec_bank_name")
let get_eC_BANK_NAME () = !eC_BANK_NAME
let set_eC_BANK_NAME value' = eC_BANK_NAME := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_BANK_NAME" (fun _ -> Obj.repr (get_eC_BANK_NAME ()))
let eC_CITY : string ref = ref ("ec_city")
let get_eC_CITY () = !eC_CITY
let set_eC_CITY value' = eC_CITY := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_CITY" (fun _ -> Obj.repr (get_eC_CITY ()))
let eC_EMAIL : string ref = ref ("ec_email")
let get_eC_EMAIL () = !eC_EMAIL
let set_eC_EMAIL value' = eC_EMAIL := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_EMAIL" (fun _ -> Obj.repr (get_eC_EMAIL ()))
let eC_FIRST_NAME : string ref = ref ("ec_first_name")
let get_eC_FIRST_NAME () = !eC_FIRST_NAME
let set_eC_FIRST_NAME value' = eC_FIRST_NAME := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_FIRST_NAME" (fun _ -> Obj.repr (get_eC_FIRST_NAME ()))
let eC_ID_COUNTRY : string ref = ref ("ec_id_country")
let get_eC_ID_COUNTRY () = !eC_ID_COUNTRY
let set_eC_ID_COUNTRY value' = eC_ID_COUNTRY := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_ID_COUNTRY" (fun _ -> Obj.repr (get_eC_ID_COUNTRY ()))
let eC_ID_EXP_MM : string ref = ref ("ec_id_exp_mm")
let get_eC_ID_EXP_MM () = !eC_ID_EXP_MM
let set_eC_ID_EXP_MM value' = eC_ID_EXP_MM := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_ID_EXP_MM" (fun _ -> Obj.repr (get_eC_ID_EXP_MM ()))
let eC_ID_EXP_DD : string ref = ref ("ec_id_exp_dd")
let get_eC_ID_EXP_DD () = !eC_ID_EXP_DD
let set_eC_ID_EXP_DD value' = eC_ID_EXP_DD := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_ID_EXP_DD" (fun _ -> Obj.repr (get_eC_ID_EXP_DD ()))
let eC_ID_EXP_YY : string ref = ref ("ec_id_exp_yy")
let get_eC_ID_EXP_YY () = !eC_ID_EXP_YY
let set_eC_ID_EXP_YY value' = eC_ID_EXP_YY := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_ID_EXP_YY" (fun _ -> Obj.repr (get_eC_ID_EXP_YY ()))
let eC_ID_NUMBER : string ref = ref ("ec_id_number")
let get_eC_ID_NUMBER () = !eC_ID_NUMBER
let set_eC_ID_NUMBER value' = eC_ID_NUMBER := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_ID_NUMBER" (fun _ -> Obj.repr (get_eC_ID_NUMBER ()))
let eC_ID_STATE : string ref = ref ("ec_id_state")
let get_eC_ID_STATE () = !eC_ID_STATE
let set_eC_ID_STATE value' = eC_ID_STATE := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_ID_STATE" (fun _ -> Obj.repr (get_eC_ID_STATE ()))
let eC_ID_TYPE : string ref = ref ("ec_id_type")
let get_eC_ID_TYPE () = !eC_ID_TYPE
let set_eC_ID_TYPE value' = eC_ID_TYPE := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_ID_TYPE" (fun _ -> Obj.repr (get_eC_ID_TYPE ()))
let eC_LAST_NAME : string ref = ref ("ec_last_name")
let get_eC_LAST_NAME () = !eC_LAST_NAME
let set_eC_LAST_NAME value' = eC_LAST_NAME := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_LAST_NAME" (fun _ -> Obj.repr (get_eC_LAST_NAME ()))
let eC_BUSINESS_NAME : string ref = ref ("ec_BUSINESS_NAME")
let get_eC_BUSINESS_NAME () = !eC_BUSINESS_NAME
let set_eC_BUSINESS_NAME value' = eC_BUSINESS_NAME := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_BUSINESS_NAME" (fun _ -> Obj.repr (get_eC_BUSINESS_NAME ()))
let eC_LICENSE_NUMBER : string ref = ref ("ec_LICENSE_NUMBER")
let get_eC_LICENSE_NUMBER () = !eC_LICENSE_NUMBER
let set_eC_LICENSE_NUMBER value' = eC_LICENSE_NUMBER := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_LICENSE_NUMBER" (fun _ -> Obj.repr (get_eC_LICENSE_NUMBER ()))
let eC_LICENSE_STATE : string ref = ref ("ec_LICENSE_STATE")
let get_eC_LICENSE_STATE () = !eC_LICENSE_STATE
let set_eC_LICENSE_STATE value' = eC_LICENSE_STATE := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_LICENSE_STATE" (fun _ -> Obj.repr (get_eC_LICENSE_STATE ()))
let eC_MERCHANT_REF : string ref = ref ("ec_MERCHANT_REF")
let get_eC_MERCHANT_REF () = !eC_MERCHANT_REF
let set_eC_MERCHANT_REF value' = eC_MERCHANT_REF := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_MERCHANT_REF" (fun _ -> Obj.repr (get_eC_MERCHANT_REF ()))
let eC_NBDS_CODE : string ref = ref ("ec_NBDS_CODE")
let get_eC_NBDS_CODE () = !eC_NBDS_CODE
let set_eC_NBDS_CODE value' = eC_NBDS_CODE := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_NBDS_CODE" (fun _ -> Obj.repr (get_eC_NBDS_CODE ()))
let eC_OTHER_NAME : string ref = ref ("ec_other_name")
let get_eC_OTHER_NAME () = !eC_OTHER_NAME
let set_eC_OTHER_NAME value' = eC_OTHER_NAME := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_OTHER_NAME" (fun _ -> Obj.repr (get_eC_OTHER_NAME ()))
let eC_PAYEE : string ref = ref ("ec_payee")
let get_eC_PAYEE () = !eC_PAYEE
let set_eC_PAYEE value' = eC_PAYEE := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_PAYEE" (fun _ -> Obj.repr (get_eC_PAYEE ()))
let eC_PAYMENT_TYPE : string ref = ref ("ec_payment_type")
let get_eC_PAYMENT_TYPE () = !eC_PAYMENT_TYPE
let set_eC_PAYMENT_TYPE value' = eC_PAYMENT_TYPE := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_PAYMENT_TYPE" (fun _ -> Obj.repr (get_eC_PAYMENT_TYPE ()))
let eC_RT : string ref = ref ("ec_rt")
let get_eC_RT () = !eC_RT
let set_eC_RT value' = eC_RT := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_RT" (fun _ -> Obj.repr (get_eC_RT ()))
let eC_SERIAL_NUMBER : string ref = ref ("ec_serial_number")
let get_eC_SERIAL_NUMBER () = !eC_SERIAL_NUMBER
let set_eC_SERIAL_NUMBER value' = eC_SERIAL_NUMBER := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_SERIAL_NUMBER" (fun _ -> Obj.repr (get_eC_SERIAL_NUMBER ()))
let eC_STATE : string ref = ref ("ec_state")
let get_eC_STATE () = !eC_STATE
let set_eC_STATE value' = eC_STATE := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_STATE" (fun _ -> Obj.repr (get_eC_STATE ()))
let eC_TRANSACTION_DT : string ref = ref ("ec_transaction_dt")
let get_eC_TRANSACTION_DT () = !eC_TRANSACTION_DT
let set_eC_TRANSACTION_DT value' = eC_TRANSACTION_DT := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_TRANSACTION_DT" (fun _ -> Obj.repr (get_eC_TRANSACTION_DT ()))
let eC_ZIP : string ref = ref ("ec_zip")
let get_eC_ZIP () = !eC_ZIP
let set_eC_ZIP value' = eC_ZIP := value'
let () = java_register_static "EchoPaymentGatewayData.get_eC_ZIP" (fun _ -> Obj.repr (get_eC_ZIP ()))
let gRAND_TOTAL : string ref = ref ("grand_total")
let get_gRAND_TOTAL () = !gRAND_TOTAL
let set_gRAND_TOTAL value' = gRAND_TOTAL := value'
let () = java_register_static "EchoPaymentGatewayData.get_gRAND_TOTAL" (fun _ -> Obj.repr (get_gRAND_TOTAL ()))
let mERCHANT_TRACE_NBR : string ref = ref ("merchant_trace_nbr")
let get_mERCHANT_TRACE_NBR () = !mERCHANT_TRACE_NBR
let set_mERCHANT_TRACE_NBR value' = mERCHANT_TRACE_NBR := value'
let () = java_register_static "EchoPaymentGatewayData.get_mERCHANT_TRACE_NBR" (fun _ -> Obj.repr (get_mERCHANT_TRACE_NBR ()))
let oRDER_NUMBER : string ref = ref ("order_number")
let get_oRDER_NUMBER () = !oRDER_NUMBER
let set_oRDER_NUMBER value' = oRDER_NUMBER := value'
let () = java_register_static "EchoPaymentGatewayData.get_oRDER_NUMBER" (fun _ -> Obj.repr (get_oRDER_NUMBER ()))
let oRIGINAL_AMOUNT : string ref = ref ("original_amount")
let get_oRIGINAL_AMOUNT () = !oRIGINAL_AMOUNT
let set_oRIGINAL_AMOUNT value' = oRIGINAL_AMOUNT := value'
let () = java_register_static "EchoPaymentGatewayData.get_oRIGINAL_AMOUNT" (fun _ -> Obj.repr (get_oRIGINAL_AMOUNT ()))
let oRIGINAL_TRANDATE_MM : string ref = ref ("original_trandate_mm")
let get_oRIGINAL_TRANDATE_MM () = !oRIGINAL_TRANDATE_MM
let set_oRIGINAL_TRANDATE_MM value' = oRIGINAL_TRANDATE_MM := value'
let () = java_register_static "EchoPaymentGatewayData.get_oRIGINAL_TRANDATE_MM" (fun _ -> Obj.repr (get_oRIGINAL_TRANDATE_MM ()))
let oRIGINAL_TRANDATE_DD : string ref = ref ("original_trandate_dd")
let get_oRIGINAL_TRANDATE_DD () = !oRIGINAL_TRANDATE_DD
let set_oRIGINAL_TRANDATE_DD value' = oRIGINAL_TRANDATE_DD := value'
let () = java_register_static "EchoPaymentGatewayData.get_oRIGINAL_TRANDATE_DD" (fun _ -> Obj.repr (get_oRIGINAL_TRANDATE_DD ()))
let oRIGINAL_TRANDATE_YYYY : string ref = ref ("original_trandate_yyyy")
let get_oRIGINAL_TRANDATE_YYYY () = !oRIGINAL_TRANDATE_YYYY
let set_oRIGINAL_TRANDATE_YYYY value' = oRIGINAL_TRANDATE_YYYY := value'
let () = java_register_static "EchoPaymentGatewayData.get_oRIGINAL_TRANDATE_YYYY" (fun _ -> Obj.repr (get_oRIGINAL_TRANDATE_YYYY ()))
let oRIGINAL_REFERENCE : string ref = ref ("original_reference")
let get_oRIGINAL_REFERENCE () = !oRIGINAL_REFERENCE
let set_oRIGINAL_REFERENCE value' = oRIGINAL_REFERENCE := value'
let () = java_register_static "EchoPaymentGatewayData.get_oRIGINAL_REFERENCE" (fun _ -> Obj.repr (get_oRIGINAL_REFERENCE ()))
let pRODUCT_DESCRIPTION : string ref = ref ("product_description")
let get_pRODUCT_DESCRIPTION () = !pRODUCT_DESCRIPTION
let set_pRODUCT_DESCRIPTION value' = pRODUCT_DESCRIPTION := value'
let () = java_register_static "EchoPaymentGatewayData.get_pRODUCT_DESCRIPTION" (fun _ -> Obj.repr (get_pRODUCT_DESCRIPTION ()))
let pURCHASE_ORDER_NUMBER : string ref = ref ("purchase_order_number")
let get_pURCHASE_ORDER_NUMBER () = !pURCHASE_ORDER_NUMBER
let set_pURCHASE_ORDER_NUMBER value' = pURCHASE_ORDER_NUMBER := value'
let () = java_register_static "EchoPaymentGatewayData.get_pURCHASE_ORDER_NUMBER" (fun _ -> Obj.repr (get_pURCHASE_ORDER_NUMBER ()))
let sALES_TAX : string ref = ref ("sales_tax")
let get_sALES_TAX () = !sALES_TAX
let set_sALES_TAX value' = sALES_TAX := value'
let () = java_register_static "EchoPaymentGatewayData.get_sALES_TAX" (fun _ -> Obj.repr (get_sALES_TAX ()))
class echoPaymentGatewayData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "EchoPaymentGatewayData" (fun arguments -> Obj.repr (new echoPaymentGatewayData (Obj.obj arguments)))



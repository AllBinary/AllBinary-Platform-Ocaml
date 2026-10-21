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
(* package org.allbinary.business.installer *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringMaker *)

class initializerData () =
  object
    val mutable dBUSER : string = ""
    method dBUSER = dBUSER
    method set_dBUSER value' = dBUSER <- value'
    val mutable dBPASSWORD : string = ""
    method dBPASSWORD = dBPASSWORD
    method set_dBPASSWORD value' = dBPASSWORD <- value'
    val mutable aDMINJDBCDRIVER : string = ""
    method aDMINJDBCDRIVER = aDMINJDBCDRIVER
    method set_aDMINJDBCDRIVER value' = aDMINJDBCDRIVER <- value'
    val mutable aDMINSCHEMA : string = ""
    method aDMINSCHEMA = aDMINSCHEMA
    method set_aDMINSCHEMA value' = aDMINSCHEMA <- value'
    val mutable aDMINSERVER : string = ""
    method aDMINSERVER = aDMINSERVER
    method set_aDMINSERVER value' = aDMINSERVER <- value'
    val mutable aDMINPORT : string = ""
    method aDMINPORT = aDMINPORT
    method set_aDMINPORT value' = aDMINPORT <- value'
    val mutable cUSTOMERJDBCDRIVER : string = ""
    method cUSTOMERJDBCDRIVER = cUSTOMERJDBCDRIVER
    method set_cUSTOMERJDBCDRIVER value' = cUSTOMERJDBCDRIVER <- value'
    val mutable cUSTOMERNAME : string = ""
    method cUSTOMERNAME = cUSTOMERNAME
    method set_cUSTOMERNAME value' = cUSTOMERNAME <- value'
    val mutable cUSTOMERUSERNAME : string = ""
    method cUSTOMERUSERNAME = cUSTOMERUSERNAME
    method set_cUSTOMERUSERNAME value' = cUSTOMERUSERNAME <- value'
    val mutable cUSTOMERPASSWORD : string = ""
    method cUSTOMERPASSWORD = cUSTOMERPASSWORD
    method set_cUSTOMERPASSWORD value' = cUSTOMERPASSWORD <- value'
    val mutable cUSTOMERSCHEMA : string = ""
    method cUSTOMERSCHEMA = cUSTOMERSCHEMA
    method set_cUSTOMERSCHEMA value' = cUSTOMERSCHEMA <- value'
    val mutable cUSTOMERSERVER : string = ""
    method cUSTOMERSERVER = cUSTOMERSERVER
    method set_cUSTOMERSERVER value' = cUSTOMERSERVER <- value'
    val mutable cUSTOMERPORT : string = ""
    method cUSTOMERPORT = cUSTOMERPORT
    method set_cUSTOMERPORT value' = cUSTOMERPORT <- value'
    val mutable hISTORYJDBCDRIVER : string = ""
    method hISTORYJDBCDRIVER = hISTORYJDBCDRIVER
    method set_hISTORYJDBCDRIVER value' = hISTORYJDBCDRIVER <- value'
    val mutable hISTORYNAME : string = ""
    method hISTORYNAME = hISTORYNAME
    method set_hISTORYNAME value' = hISTORYNAME <- value'
    val mutable hISTORYUSERNAME : string = ""
    method hISTORYUSERNAME = hISTORYUSERNAME
    method set_hISTORYUSERNAME value' = hISTORYUSERNAME <- value'
    val mutable hISTORYPASSWORD : string = ""
    method hISTORYPASSWORD = hISTORYPASSWORD
    method set_hISTORYPASSWORD value' = hISTORYPASSWORD <- value'
    val mutable hISTORYSCHEMA : string = ""
    method hISTORYSCHEMA = hISTORYSCHEMA
    method set_hISTORYSCHEMA value' = hISTORYSCHEMA <- value'
    val mutable hISTORYSERVER : string = ""
    method hISTORYSERVER = hISTORYSERVER
    method set_hISTORYSERVER value' = hISTORYSERVER <- value'
    val mutable hISTORYPORT : string = ""
    method hISTORYPORT = hISTORYPORT
    method set_hISTORYPORT value' = hISTORYPORT <- value'
    val mutable lOGJDBCDRIVER : string = ""
    method lOGJDBCDRIVER = lOGJDBCDRIVER
    method set_lOGJDBCDRIVER value' = lOGJDBCDRIVER <- value'
    val mutable lOGNAME : string = ""
    method lOGNAME = lOGNAME
    method set_lOGNAME value' = lOGNAME <- value'
    val mutable lOGUSERNAME : string = ""
    method lOGUSERNAME = lOGUSERNAME
    method set_lOGUSERNAME value' = lOGUSERNAME <- value'
    val mutable lOGPASSWORD : string = ""
    method lOGPASSWORD = lOGPASSWORD
    method set_lOGPASSWORD value' = lOGPASSWORD <- value'
    val mutable lOGSCHEMA : string = ""
    method lOGSCHEMA = lOGSCHEMA
    method set_lOGSCHEMA value' = lOGSCHEMA <- value'
    val mutable lOGSERVER : string = ""
    method lOGSERVER = lOGSERVER
    method set_lOGSERVER value' = lOGSERVER <- value'
    val mutable lOGPORT : string = ""
    method lOGPORT = lOGPORT
    method set_lOGPORT value' = lOGPORT <- value'
    val mutable iNVENTORYJDBCDRIVER : string = ""
    method iNVENTORYJDBCDRIVER = iNVENTORYJDBCDRIVER
    method set_iNVENTORYJDBCDRIVER value' = iNVENTORYJDBCDRIVER <- value'
    val mutable iNVENTORYNAME : string = ""
    method iNVENTORYNAME = iNVENTORYNAME
    method set_iNVENTORYNAME value' = iNVENTORYNAME <- value'
    val mutable iNVENTORYUSERNAME : string = ""
    method iNVENTORYUSERNAME = iNVENTORYUSERNAME
    method set_iNVENTORYUSERNAME value' = iNVENTORYUSERNAME <- value'
    val mutable iNVENTORYPASSWORD : string = ""
    method iNVENTORYPASSWORD = iNVENTORYPASSWORD
    method set_iNVENTORYPASSWORD value' = iNVENTORYPASSWORD <- value'
    val mutable iNVENTORYSCHEMA : string = ""
    method iNVENTORYSCHEMA = iNVENTORYSCHEMA
    method set_iNVENTORYSCHEMA value' = iNVENTORYSCHEMA <- value'
    val mutable iNVENTORYSERVER : string = ""
    method iNVENTORYSERVER = iNVENTORYSERVER
    method set_iNVENTORYSERVER value' = iNVENTORYSERVER <- value'
    val mutable iNVENTORYPORT : string = ""
    method iNVENTORYPORT = iNVENTORYPORT
    method set_iNVENTORYPORT value' = iNVENTORYPORT <- value'
    val mutable sTATICPAGESJDBCDRIVER : string = ""
    method sTATICPAGESJDBCDRIVER = sTATICPAGESJDBCDRIVER
    method set_sTATICPAGESJDBCDRIVER value' = sTATICPAGESJDBCDRIVER <- value'
    val mutable sTATICPAGESNAME : string = ""
    method sTATICPAGESNAME = sTATICPAGESNAME
    method set_sTATICPAGESNAME value' = sTATICPAGESNAME <- value'
    val mutable sTATICPAGESUSERNAME : string = ""
    method sTATICPAGESUSERNAME = sTATICPAGESUSERNAME
    method set_sTATICPAGESUSERNAME value' = sTATICPAGESUSERNAME <- value'
    val mutable sTATICPAGESPASSWORD : string = ""
    method sTATICPAGESPASSWORD = sTATICPAGESPASSWORD
    method set_sTATICPAGESPASSWORD value' = sTATICPAGESPASSWORD <- value'
    val mutable sTATICPAGESSCHEMA : string = ""
    method sTATICPAGESSCHEMA = sTATICPAGESSCHEMA
    method set_sTATICPAGESSCHEMA value' = sTATICPAGESSCHEMA <- value'
    val mutable sTATICPAGESSERVER : string = ""
    method sTATICPAGESSERVER = sTATICPAGESSERVER
    method set_sTATICPAGESSERVER value' = sTATICPAGESSERVER <- value'
    val mutable sTATICPAGESPORT : string = ""
    method sTATICPAGESPORT = sTATICPAGESPORT
    method set_sTATICPAGESPORT value' = sTATICPAGESPORT <- value'
    

    method getJdbcDriverSolutionInfo () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("The following describes the possible problems and solutions regarding the Jdbc Driver error(s):<p/>"));
        ignore (!stringBuffer#append ("1. A JDBC driver you specified is not in your classpath.<br/>"));
        ignore (!stringBuffer#append ("Solution 1: Move the JDBC driver into any directory specified in the existing classpath. <br/>"));
        ignore (!stringBuffer#append ("Solution 2: Add the directory that contains the JDBC driver to the classpath.<br/>"));
        ignore (!stringBuffer#append ("Solution 3: Add the JDBC driver to the WEB-INF/lib directory where you installed this webapp.<br/>"));
        ignore (!stringBuffer#append ("2. The JDBC driver you specified does not exit.<br/>"));
        ignore (!stringBuffer#append ("Solution: Get a JDBC driver. <br/>"));
        ignore (!stringBuffer#append ("3. The JDBC driver you specified is not valid.<br/>"));
        ignore (!stringBuffer#append ("Solution: Use a valid JDBC driver.<p/>"));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        dBUSER <- "DBUSER";
        dBPASSWORD <- "DBPASSWORD";
        aDMINJDBCDRIVER <- "ADMIN_JDBCDRIVER";
        aDMINSCHEMA <- "ADMINSCHEMA";
        aDMINSERVER <- "ADMINSERVER";
        aDMINPORT <- "ADMINPORT";
        cUSTOMERJDBCDRIVER <- "CUSTOMER_JDBCDRIVER";
        cUSTOMERNAME <- "CUSTOMERNAME";
        cUSTOMERUSERNAME <- "CUSTOMERUSERNAME";
        cUSTOMERPASSWORD <- "CUSTOMERPASSWORD";
        cUSTOMERSCHEMA <- "CUSTOMERSCHEMA";
        cUSTOMERSERVER <- "CUSTOMERSERVER";
        cUSTOMERPORT <- "CUSTOMERPORT";
        hISTORYJDBCDRIVER <- "HISTORY_JDBCDRIVER";
        hISTORYNAME <- "HISTORYNAME";
        hISTORYUSERNAME <- "HISTORYUSERNAME";
        hISTORYPASSWORD <- "HISTORYPASSWORD";
        hISTORYSCHEMA <- "HISTORYSCHEMA";
        hISTORYSERVER <- "HISTORYSERVER";
        hISTORYPORT <- "HISTORYPORT";
        lOGJDBCDRIVER <- "LOG_JDBCDRIVER";
        lOGNAME <- "LOGNAME";
        lOGUSERNAME <- "LOGUSERNAME";
        lOGPASSWORD <- "LOGPASSWORD";
        lOGSCHEMA <- "LOGSCHEMA";
        lOGSERVER <- "LOGSERVER";
        lOGPORT <- "LOGPORT";
        iNVENTORYJDBCDRIVER <- "INVENTORY_JDBCDRIVER";
        iNVENTORYNAME <- "INVENTORYNAME";
        iNVENTORYUSERNAME <- "INVENTORYUSERNAME";
        iNVENTORYPASSWORD <- "INVENTORYPASSWORD";
        iNVENTORYSCHEMA <- "INVENTORYSCHEMA";
        iNVENTORYSERVER <- "INVENTORYSERVER";
        iNVENTORYPORT <- "INVENTORYPORT";
        sTATICPAGESJDBCDRIVER <- "STATICPAGES_JDBCDRIVER";
        sTATICPAGESNAME <- "STATICPAGESNAME";
        sTATICPAGESUSERNAME <- "STATICPAGESUSERNAME";
        sTATICPAGESPASSWORD <- "STATICPAGESPASSWORD";
        sTATICPAGESSCHEMA <- "STATICPAGESSCHEMA";
        sTATICPAGESSERVER <- "STATICPAGESSERVER";
        sTATICPAGESPORT <- "STATICPAGESPORT";
        ()
      end
  end
let () = java_register_constructor "InitializerData" (fun arguments -> Obj.repr (new initializerData (Obj.obj arguments)))

let instance = (new initializerData ())
let get_instance () = instance
let () = java_register_static "InitializerData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "InitializerData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



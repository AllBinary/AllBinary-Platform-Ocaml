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
(* package org.allbinary.logic.system.os.android *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.android.AndroidInfoFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.os.GenericOperatingSystem *)
(* import org.allbinary.string.CommonSeps *)

class androidOS () =
  object (self)
    inherit GenericOperatingSystem.genericOperatingSystem () as super
    val mutable stringBuffer : StringMaker.stringMaker = (Obj.magic 0)
    method stringBuffer = stringBuffer
    method set_stringBuffer value' = stringBuffer <- value'
    val mutable dEVICE_ID : string = ""
    method dEVICE_ID = dEVICE_ID
    method set_dEVICE_ID value' = dEVICE_ID <- value'
    val mutable dEVICE_SOFTWARE_VERSION : string = ""
    method dEVICE_SOFTWARE_VERSION = dEVICE_SOFTWARE_VERSION
    method set_dEVICE_SOFTWARE_VERSION value' = dEVICE_SOFTWARE_VERSION <- value'
    val mutable lINE_1_NUMBER : string = ""
    method lINE_1_NUMBER = lINE_1_NUMBER
    method set_lINE_1_NUMBER value' = lINE_1_NUMBER <- value'
    val mutable oUYA : string = ""
    method oUYA = oUYA
    method set_oUYA value' = oUYA <- value'
    
    

    method isOverScan () : bool =
        try
        begin
        let properties : AndroidSystemProperties.androidSystemProperties ref = ref (((AndroidSystemProperties.getInstance ()) :> AndroidSystemProperties.androidSystemProperties)) in ();
        if ((java_string_index_of ((!properties#getDevice ())#toLowerCase ()) (Obj.repr (oUYA))) >= 0) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getOverScanXPercent () : int =
        begin
        90
        end [@@warning "-7"]
    

    method getOverScanYPercent () : int =
        begin
        90
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        let osBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!osBuffer#append ((super#toString ())));
        ignore (!osBuffer#append ((CommonSeps.getInstance ())#sPACE));
        ignore (!osBuffer#append ("Other System Info: \n"));
        ignore (!osBuffer#append ((java_string_of (Obj.repr stringBuffer))));
        (java_string_of (Obj.repr !osBuffer))
        end [@@warning "-7"]

    initializer
      begin
        stringBuffer <- ((new StringMaker.stringMaker ()) :> StringMaker.stringMaker);
        dEVICE_ID <- "DeviceId";
        dEVICE_SOFTWARE_VERSION <- "DeviceSoftwareVersion";
        lINE_1_NUMBER <- "Line1Number";
        oUYA <- "ouya";
        ();
        let sDK_VERSION : int ref = ref (((AndroidInfoFactory.getInstance ())#getVersion ())) in ();
        if (!sDK_VERSION > 10) then begin
            (self#set_scalable) (true)
        end;
        let properties : AndroidSystemProperties.androidSystemProperties ref = ref (((AndroidSystemProperties.getInstance ()) :> AndroidSystemProperties.androidSystemProperties)) in ();
        let commonStrings : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        ignore (stringBuffer#append (dEVICE_ID));
        ignore (stringBuffer#append (!commonStrings#eQUALS));
        ignore (stringBuffer#append ((!properties#getDeviceId ())));
        ignore (stringBuffer#append (!commonStrings#sPACE));
        ignore (stringBuffer#append (dEVICE_SOFTWARE_VERSION));
        ignore (stringBuffer#append (!commonStrings#eQUALS));
        ignore (stringBuffer#append ((!properties#getDeviceSoftwareVersion ())));
        ignore (stringBuffer#append (!commonStrings#sPACE));
        ignore (stringBuffer#append (lINE_1_NUMBER));
        ignore (stringBuffer#append (!commonStrings#eQUALS));
        ignore (stringBuffer#append ((!properties#getLine1Number ())));
        ignore (stringBuffer#append (!commonStrings#sPACE));
        ignore (stringBuffer#append ("NetworkCountryIso"));
        ignore (stringBuffer#append (!commonStrings#eQUALS));
        ignore (stringBuffer#append ((!properties#getNetworkCountryIso ())));
        ignore (stringBuffer#append (!commonStrings#sPACE));
        ignore (stringBuffer#append ("NetworkOperator"));
        ignore (stringBuffer#append (!commonStrings#eQUALS));
        ignore (stringBuffer#append ((!properties#getNetworkOperator ())));
        ignore (stringBuffer#append (!commonStrings#sPACE));
        ignore (stringBuffer#append ("NetworkOperatorName"));
        ignore (stringBuffer#append (!commonStrings#eQUALS));
        ignore (stringBuffer#append ((!properties#getNetworkOperatorName ())));
        ignore (stringBuffer#append (!commonStrings#sPACE));
        ignore (stringBuffer#append ("NetworkType"));
        ignore (stringBuffer#append (!commonStrings#eQUALS));
        ignore (stringBuffer#appendint ((java_to_int (Obj.repr ((!properties#getNetworkType ()))))));
        ignore (stringBuffer#append (!commonStrings#sPACE));
        ignore (stringBuffer#append ("PhoneType"));
        ignore (stringBuffer#append (!commonStrings#eQUALS));
        ignore (stringBuffer#appendint ((java_to_int (Obj.repr ((!properties#getPhoneType ()))))));
        ignore (stringBuffer#append (!commonStrings#sPACE));
        ignore (stringBuffer#append ("SimCountryIso"));
        ignore (stringBuffer#append (!commonStrings#eQUALS));
        ignore (stringBuffer#append ((!properties#getSimCountryIso ())));
        ignore (stringBuffer#append (!commonStrings#sPACE));
        ignore (stringBuffer#append ("SimOperator"));
        ignore (stringBuffer#append (!commonStrings#eQUALS));
        ignore (stringBuffer#append ((!properties#getSimOperator ())));
        ignore (stringBuffer#append (!commonStrings#sPACE));
        ignore (stringBuffer#append ("SimOperatorName"));
        ignore (stringBuffer#append (!commonStrings#eQUALS));
        ignore (stringBuffer#append ((!properties#getSimOperatorName ())));
        ignore (stringBuffer#append (!commonStrings#sPACE));
        ignore (stringBuffer#append ("SimSerialNumber"));
        ignore (stringBuffer#append (!commonStrings#eQUALS));
        ignore (stringBuffer#append ((!properties#getSimSerialNumber ())));
        ignore (stringBuffer#append (!commonStrings#sPACE));
        ignore (stringBuffer#append ("SubscriberId"));
        ignore (stringBuffer#append (!commonStrings#eQUALS));
        ignore (stringBuffer#append ((!properties#getSubscriberId ())));
        ignore (stringBuffer#append (!commonStrings#sPACE));
        ignore (stringBuffer#append ("VoiceMailAlphaTag"));
        ignore (stringBuffer#append (!commonStrings#eQUALS));
        ignore (stringBuffer#append ((!properties#getVoiceMailAlphaTag ())));
        ignore (stringBuffer#append (!commonStrings#sPACE));
        ignore (stringBuffer#append ("VoiceMailNumber"));
        ignore (stringBuffer#append (!commonStrings#eQUALS));
        ignore (stringBuffer#append ((!properties#getVoiceMailNumber ())));
        ignore (stringBuffer#append (!commonStrings#sPACE))
      end
  end
let () = java_register_constructor "AndroidOS" (fun arguments -> Obj.repr (new androidOS (Obj.obj arguments)))



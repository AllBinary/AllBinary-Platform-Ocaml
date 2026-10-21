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
(* import android.content.Context *)
(* import android.os.Build *)
(* import org.allbinary.data.resource.ResourceUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)

class androidSystemProperties (_context) =
  object
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    
    

    method getDeviceId () : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end
    

    method getDeviceSoftwareVersion () : string =
        begin
        commonStrings#dISABLE
        end
    

    method getLine1Number () : string =
        begin
        commonStrings#dISABLE
        end
    

    method getNetworkCountryIso () : string =
        begin
        commonStrings#dISABLE
        end
    

    method getNetworkOperator () : string =
        begin
        commonStrings#dISABLE
        end
    

    method getNetworkOperatorName () : string =
        begin
        commonStrings#dISABLE
        end
    

    method getSimCountryIso () : string =
        begin
        commonStrings#dISABLE
        end
    

    method getSimOperator () : string =
        begin
        commonStrings#dISABLE
        end
    

    method getSimOperatorName () : string =
        begin
        commonStrings#dISABLE
        end
    

    method getSimSerialNumber () : string =
        begin
        commonStrings#dISABLE
        end
    

    method getSubscriberId () : string =
        begin
        commonStrings#dISABLE
        end
    

    method getVoiceMailAlphaTag () : string =
        begin
        commonStrings#dISABLE
        end
    

    method getVoiceMailNumber () : string =
        begin
        commonStrings#dISABLE
        end
    

    method getNetworkType () : int =
        begin
        (-1)
        end
    

    method getPhoneType () : int =
        begin
        (-1)
        end
    

    method getBoard () : string =
        begin
        (Build.get_bOARD ())
        end
    

    method getBrand () : string =
        begin
        (Build.get_bRAND ())
        end
    

    method getDevice () : string =
        begin
        (Build.get_dEVICE ())
        end
    

    method getFingerprint () : string =
        begin
        (Build.get_fINGERPRINT ())
        end
    

    method getHost () : string =
        begin
        (Build.get_hOST ())
        end
    

    method getId () : string =
        begin
        (Build.get_iD ())
        end
    

    method getModel () : string =
        begin
        (Build.get_mODEL ())
        end
    

    method getProduct () : string =
        begin
        (Build.get_pRODUCT ())
        end
    

    method getTags () : string =
        begin
        (Build.get_tAGS ())
        end
    

    method getTime () : int =
        begin
        (Build.get_tIME ())
        end
    

    method getType () : string =
        begin
        (Build.get_tYPE ())
        end
    

    method getUser () : string =
        begin
        (Build.get_uSER ())
        end

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ()
      end
  end
let () = java_register_constructor "AndroidSystemProperties" (fun arguments -> Obj.repr (new androidSystemProperties (Obj.obj arguments)))

let sINGLETON = (new androidSystemProperties (((Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ())))#getContext ())))
let get_sINGLETON () = sINGLETON
let () = java_register_static "AndroidSystemProperties.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "AndroidSystemProperties.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



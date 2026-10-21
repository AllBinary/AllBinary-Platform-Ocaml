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
(* package org.allbinary.logic.math *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.string.CommonPhoneStrings *)
(* import org.allbinary.string.CommonSeps *)

class mathData () =
  object
    val mutable eQUALS : string = ""
    method eQUALS = eQUALS
    method set_eQUALS value' = eQUALS <- value'
    val mutable pLUS : string = ""
    method pLUS = pLUS
    method set_pLUS value' = pLUS <- value'
    val mutable gREATER_THAN : string = ""
    method gREATER_THAN = gREATER_THAN
    method set_gREATER_THAN value' = gREATER_THAN <- value'
    val mutable mINUS : string = ""
    method mINUS = mINUS
    method set_mINUS value' = mINUS <- value'
    val mutable dIVIDE : string = ""
    method dIVIDE = dIVIDE
    method set_dIVIDE value' = dIVIDE <- value'
    val mutable mULTIPLY : string = ""
    method mULTIPLY = mULTIPLY
    method set_mULTIPLY value' = mULTIPLY <- value'
    

    initializer
      begin
        ();
        pLUS <- "+";
        gREATER_THAN <- ">";
        ();
        ();
        ();
        ();
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        eQUALS <- !commonSeps#eQUALS;
        mINUS <- !commonSeps#dASH;
        dIVIDE <- !commonSeps#fORWARD_SLASH;
        mULTIPLY <- (CommonPhoneStrings.getInstance ())#sTAR
      end
  end
let () = java_register_constructor "MathData" (fun arguments -> Obj.repr (new mathData (Obj.obj arguments)))

let instance = (new mathData ())
let get_instance () = instance
let () = java_register_static "MathData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "MathData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



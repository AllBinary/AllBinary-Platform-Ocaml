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
(* package org.allbinary.logic.string *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.math.MathData *)
(* import org.allbinary.string.CommonPhoneStrings *)
(* import org.allbinary.string.CommonSeps *)


let getHashMap () : java_hash_map =
        begin
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        let commonPhoneStrings : CommonPhoneStrings.commonPhoneStrings ref = ref (((CommonPhoneStrings.getInstance ()) :> CommonPhoneStrings.commonPhoneStrings)) in ();
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ("!", !stringUtil#eMPTY_STRING));
        ignore (!hashMap#put ("@", !stringUtil#eMPTY_STRING));
        ignore (!hashMap#put (!commonPhoneStrings#pOUND, !stringUtil#eMPTY_STRING));
        ignore (!hashMap#put ("$", !stringUtil#eMPTY_STRING));
        ignore (!hashMap#put ("%", !stringUtil#eMPTY_STRING));
        ignore (!hashMap#put ("^", !stringUtil#eMPTY_STRING));
        ignore (!hashMap#put (!commonSeps#aMPERSAND, !stringUtil#eMPTY_STRING));
        ignore (!hashMap#put (!commonPhoneStrings#sTAR, !stringUtil#eMPTY_STRING));
        ignore (!hashMap#put (!commonSeps#pARENTHESIS_OPEN, !stringUtil#eMPTY_STRING));
        ignore (!hashMap#put (!commonSeps#pARENTHESIS_CLOSE, !stringUtil#eMPTY_STRING));
        ignore (!hashMap#put (!commonSeps#dASH, !stringUtil#eMPTY_STRING));
        ignore (!hashMap#put (!commonSeps#uNDERSCORE, !stringUtil#eMPTY_STRING));
        ignore (!hashMap#put ((MathData.getInstance ())#pLUS, !stringUtil#eMPTY_STRING));
        ignore (!hashMap#put (!commonSeps#eQUALS, !stringUtil#eMPTY_STRING));
        ignore (!hashMap#put ("\\", !stringUtil#eMPTY_STRING));
        ignore (!hashMap#put ("|", !stringUtil#eMPTY_STRING));
        ignore (!hashMap#put ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#eXTENSION_SEP, !stringUtil#eMPTY_STRING));
        ignore (!hashMap#put (",", !stringUtil#eMPTY_STRING));
        ignore (!hashMap#put ("<", !stringUtil#eMPTY_STRING));
        ignore (!hashMap#put (">", !stringUtil#eMPTY_STRING));
        ignore (!hashMap#put ("?", !stringUtil#eMPTY_STRING));
        ignore (!hashMap#put ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR, !stringUtil#eMPTY_STRING));
        ignore (!hashMap#put ("~", !stringUtil#eMPTY_STRING));
        ignore (!hashMap#put ("`", !stringUtil#eMPTY_STRING));
        (!hashMap :> java_hash_map)
        end

let () = java_register_static "SpecialCharacterUtil.getHashMap" (fun arguments -> Obj.repr (getHashMap (Obj.obj arguments)))
class specialCharacterUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "SpecialCharacterUtil" (fun arguments -> Obj.repr (new specialCharacterUtil (Obj.obj arguments)))



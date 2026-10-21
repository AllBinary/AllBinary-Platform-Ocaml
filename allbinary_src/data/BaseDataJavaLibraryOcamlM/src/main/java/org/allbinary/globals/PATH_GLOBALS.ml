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
(* package org.allbinary.globals *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonStrings *)

class pATH_GLOBALS () =
  object
    val mutable dATA_PATH : string = ""
    method dATA_PATH = dATA_PATH
    method set_dATA_PATH value' = dATA_PATH <- value'
    val mutable iNIT_PATH : string = ""
    method iNIT_PATH = iNIT_PATH
    method set_iNIT_PATH value' = iNIT_PATH <- value'
    val mutable vIEWS_PATH : string = ""
    method vIEWS_PATH = vIEWS_PATH
    method set_vIEWS_PATH value' = vIEWS_PATH <- value'
    val mutable lOG_PATH : string = ""
    method lOG_PATH = lOG_PATH
    method set_lOG_PATH value' = lOG_PATH <- value'
    val mutable bACKUP_PATH : string = ""
    method bACKUP_PATH = bACKUP_PATH
    method set_bACKUP_PATH value' = bACKUP_PATH <- value'
    

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let abPathData : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ()))))) in ();
        ignore (!stringBuffer#append ("data"));
        ignore (!stringBuffer#append ((Obj.magic !abPathData)#sEPARATOR));
        dATA_PATH <- (java_string_of (Obj.repr !stringBuffer));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append (dATA_PATH));
        ignore (!stringBuffer#append ((CommonStrings.getInstance ())#iNIT));
        ignore (!stringBuffer#append ((Obj.magic !abPathData)#sEPARATOR));
        iNIT_PATH <- (java_string_of (Obj.repr !stringBuffer));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append (dATA_PATH));
        ignore (!stringBuffer#append ("log"));
        ignore (!stringBuffer#append ((Obj.magic !abPathData)#sEPARATOR));
        lOG_PATH <- (java_string_of (Obj.repr !stringBuffer));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append (dATA_PATH));
        ignore (!stringBuffer#append ("backup"));
        ignore (!stringBuffer#append ((Obj.magic !abPathData)#sEPARATOR));
        bACKUP_PATH <- (java_string_of (Obj.repr !stringBuffer));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append (iNIT_PATH));
        ignore (!stringBuffer#append ("views"));
        ignore (!stringBuffer#append ((Obj.magic !abPathData)#sEPARATOR));
        vIEWS_PATH <- (java_string_of (Obj.repr !stringBuffer))
      end
  end
let () = java_register_constructor "PATH_GLOBALS" (fun arguments -> Obj.repr (new pATH_GLOBALS (Obj.obj arguments)))

let instance = (new pATH_GLOBALS ())
let get_instance () = instance
let () = java_register_static "PATH_GLOBALS.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PATH_GLOBALS.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



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
(* package org.allbinary.logic.visual.transform.template.util *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.globals.GLOBALS2 *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.regex.replace.Replace *)
(* import org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData *)
(* import org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData *)
(* import org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)

class transformTemplateCustomizerUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable cUSTOMIZER_NAME : string = ""
    method cUSTOMIZER_NAME = cUSTOMIZER_NAME
    method set_cUSTOMIZER_NAME value' = cUSTOMIZER_NAME <- value'
    val mutable bODY_VIEWNAMEKEY : string = ""
    method bODY_VIEWNAMEKEY = bODY_VIEWNAMEKEY
    method set_bODY_VIEWNAMEKEY value' = bODY_VIEWNAMEKEY <- value'
    val mutable tITLE_VIEWNAMEKEY : string = ""
    method tITLE_VIEWNAMEKEY = tITLE_VIEWNAMEKEY
    method set_tITLE_VIEWNAMEKEY value' = tITLE_VIEWNAMEKEY <- value'
    val mutable gLOBALS_NEW : string = ""
    method gLOBALS_NEW = gLOBALS_NEW
    method set_gLOBALS_NEW value' = gLOBALS_NEW <- value'
    val mutable gLOBALS_INSERT : string = ""
    method gLOBALS_INSERT = gLOBALS_INSERT
    method set_gLOBALS_INSERT value' = gLOBALS_INSERT <- value'
    val mutable gLOBALS_DELETE : string = ""
    method gLOBALS_DELETE = gLOBALS_DELETE
    method set_gLOBALS_DELETE value' = gLOBALS_DELETE <- value'
    val mutable gLOBALS_EDIT : string = ""
    method gLOBALS_EDIT = gLOBALS_EDIT
    method set_gLOBALS_EDIT value' = gLOBALS_EDIT <- value'
    val mutable gLOBALS_UPDATE : string = ""
    method gLOBALS_UPDATE = gLOBALS_UPDATE
    method set_gLOBALS_UPDATE value' = gLOBALS_UPDATE <- value'
    
    

    method getPageNameHack ((viewName : string), (storeName : string)) : string =
        begin
        let sPACE : string ref = ref ((CommonSeps.getInstance ())#sPACE) in ();
        let oNE_EMPTY_STRING_ARRAY : string array ref = ref ((StringUtil.getInstance ())#oNE_EMPTY_STRING_ARRAY) in ();
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ([| (viewName ^ !sPACE) |], !oNE_EMPTY_STRING_ARRAY));
        ignore (!hashMap#put ([| (storeName ^ !sPACE) |], !oNE_EMPTY_STRING_ARRAY));
        ignore (!hashMap#put ([| cUSTOMIZER_NAME |], !oNE_EMPTY_STRING_ARRAY));
        ignore (!hashMap#put ([| bODY_VIEWNAMEKEY |], !oNE_EMPTY_STRING_ARRAY));
        ignore (!hashMap#put ([| tITLE_VIEWNAMEKEY |], !oNE_EMPTY_STRING_ARRAY));
        ignore (!hashMap#put ([| gLOBALS_NEW |], !oNE_EMPTY_STRING_ARRAY));
        ignore (!hashMap#put ([| gLOBALS_INSERT |], !oNE_EMPTY_STRING_ARRAY));
        ignore (!hashMap#put ([| gLOBALS_DELETE |], !oNE_EMPTY_STRING_ARRAY));
        ignore (!hashMap#put ([| gLOBALS_EDIT |], !oNE_EMPTY_STRING_ARRAY));
        ignore (!hashMap#put ([| gLOBALS_UPDATE |], !oNE_EMPTY_STRING_ARRAY));
        let replace : Replace.replace ref = ref (((Obj.magic 0) :> Replace.replace)) in ();
        let rootViewName : string ref = ref ((!replace#all (viewName))) in ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("RootViewName for ObjectConfig: " ^ !rootViewName), self, "getPageNameHack"))
        end;
        !rootViewName
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        let sPACE : string ref = ref ((CommonSeps.getInstance ())#sPACE) in ();
        cUSTOMIZER_NAME <- (!sPACE ^ java_string_of (Obj.repr ((CustomizerTransformInfoData.get_nAME ()))));
        bODY_VIEWNAMEKEY <- (!sPACE ^ java_string_of (Obj.repr ((BodyData.getInstance ())#vIEWNAMEKEY)));
        tITLE_VIEWNAMEKEY <- (!sPACE ^ java_string_of (Obj.repr ((TitleData.getInstance ())#vIEWNAMEKEY)));
        gLOBALS_NEW <- (java_string_of (Obj.repr ((GLOBALS2.get_nEW ()))) ^ !sPACE);
        gLOBALS_INSERT <- (java_string_of (Obj.repr (!commonStrings#iNSERT)) ^ !sPACE);
        gLOBALS_DELETE <- (java_string_of (Obj.repr (!commonStrings#dELETE)) ^ !sPACE);
        gLOBALS_EDIT <- (java_string_of (Obj.repr ((GLOBALS2.get_eDIT ()))) ^ !sPACE);
        gLOBALS_UPDATE <- (java_string_of (Obj.repr (!commonStrings#uPDATE)) ^ !sPACE)
      end
  end [@@warning "-20"]
let () = java_register_constructor "TransformTemplateCustomizerUtil" (fun arguments -> Obj.repr (new transformTemplateCustomizerUtil (Obj.obj arguments)))

let instance = (new transformTemplateCustomizerUtil ())
let get_instance () = instance
let () = java_register_static "TransformTemplateCustomizerUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TransformTemplateCustomizerUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



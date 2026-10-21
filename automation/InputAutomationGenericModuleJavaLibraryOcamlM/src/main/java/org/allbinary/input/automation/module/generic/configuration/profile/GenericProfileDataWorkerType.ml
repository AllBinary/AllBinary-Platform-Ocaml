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
(* package org.allbinary.input.automation.module.generic.configuration.profile *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.input.media.image.InputImageType *)
(* import org.allbinary.logic.StdUtil *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map))
let get_hashMap () = !hashMap
let set_hashMap value' = hashMap := value'
let () = java_register_static "GenericProfileDataWorkerType.get_hashMap" (fun _ -> Obj.repr (get_hashMap ()))
let sAVED_CAPTURE = ref ((SavedCaptureGenericProfileDataWorkerType.get_sAVED_CAPTURE ()))
let get_sAVED_CAPTURE () = !sAVED_CAPTURE
let set_sAVED_CAPTURE value' = sAVED_CAPTURE := value'
let () = java_register_static "GenericProfileDataWorkerType.get_sAVED_CAPTURE" (fun _ -> Obj.repr (get_sAVED_CAPTURE ()))

let getInstance : 'any1. 'any1 -> _ = fun (node) ->
        let node = Obj.repr node in
        begin
        let name_arg : string ref = ref ((DomNodeHelper.getTextNodeValue ((Obj.magic node)))) in ();
        (Obj.magic (!hashMap#get (!name_arg)))
        end [@@warning "-20"]

let () = java_register_static "GenericProfileDataWorkerType.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class genericProfileDataWorkerType ((name_arg : string)) =
  object (self)
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    
    

    method getName () : string =
        begin
        name
        end
    

    method setName ((name_arg : string)) : unit =
        begin
        name <- name_arg
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr (ModDomHelper.createTextNode ((Obj.magic document), (GenericProfileDataWorkerData.get_nAME ()), name)))) in ();
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]
    

    method toString () : string =
        begin
        ("GenericProfileDataWorkerType: " ^ (self#getName ()))
        end

    initializer
      begin
        name <- "";
        ();
        (self#setName (name_arg));
        ignore (!hashMap#put ((self#getName ()), self))
      end
  end
let () = java_register_constructor "GenericProfileDataWorkerType" (fun arguments -> Obj.repr (new genericProfileDataWorkerType (Obj.obj arguments)))

let sCREEN_CAPTURE = ref ((new genericProfileDataWorkerType (("Screen " ^ ((InputImageType.get_cAPTURE ())#getName ())))))
let get_sCREEN_CAPTURE () = !sCREEN_CAPTURE
let set_sCREEN_CAPTURE value' = sCREEN_CAPTURE := value'
let () = java_register_static "GenericProfileDataWorkerType.get_sCREEN_CAPTURE" (fun _ -> Obj.repr (get_sCREEN_CAPTURE ()))

let cOMPARISON = ref ((new genericProfileDataWorkerType (((InputImageType.get_cOMPARISON ())#getName ()))))
let get_cOMPARISON () = !cOMPARISON
let set_cOMPARISON value' = cOMPARISON := value'
let () = java_register_static "GenericProfileDataWorkerType.get_cOMPARISON" (fun _ -> Obj.repr (get_cOMPARISON ()))

let mOTION = ref ((new genericProfileDataWorkerType (((InputImageType.get_mOTION ())#getName ()))))
let get_mOTION () = !mOTION
let set_mOTION value' = mOTION := value'
let () = java_register_static "GenericProfileDataWorkerType.get_mOTION" (fun _ -> Obj.repr (get_mOTION ()))



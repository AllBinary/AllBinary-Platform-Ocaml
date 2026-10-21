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
(* package org.allbinary.input.media.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.StdUtil *)

let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map))
let get_hashMap () = !hashMap
let set_hashMap value' = hashMap := value'
let () = java_register_static "InputImageType.get_hashMap" (fun _ -> Obj.repr (get_hashMap ()))
let tYPE_VECTOR : BasicArrayList.basicArrayList = ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)
let get_tYPE_VECTOR () = tYPE_VECTOR
let () = java_register_static "InputImageType.get_tYPE_VECTOR" (fun _ -> Obj.repr (get_tYPE_VECTOR ()))

let getInstance ((imageTypeString : string)) =
        begin
        (Obj.magic (!hashMap#get (imageTypeString)))
        end

and getAllAsVector () : BasicArrayList.basicArrayList =
        begin
        (tYPE_VECTOR :> BasicArrayList.basicArrayList)
        end

let () = java_register_static "InputImageType.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "InputImageType.getAllAsVector" (fun arguments -> Obj.repr (getAllAsVector (Obj.obj arguments)))
class inputImageType ((name_arg : string), (index_arg : int)) =
  object (self)
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable index : int = 0
    method index = index
    method set_index value' = index <- value'
    
    

    method toString () : string =
        begin
        ("ImageType: " ^ (self#getName ()))
        end
    

    method getName () : string =
        begin
        name
        end
    

    method getIndex () : int =
        begin
        index
        end

    initializer
      begin
        ();
        ();
        ();
        name <- name_arg;
        index <- index_arg;
        ignore (tYPE_VECTOR#add (self));
        ignore (!hashMap#put ((self#getName ()), self))
      end
  end
let () = java_register_constructor "InputImageType" (fun arguments -> Obj.repr (new inputImageType (Obj.obj arguments)))

let cAPTURE = ref ((new inputImageType ("Capture", 0)))
let get_cAPTURE () = !cAPTURE
let set_cAPTURE value' = cAPTURE := value'
let () = java_register_static "InputImageType.get_cAPTURE" (fun _ -> Obj.repr (get_cAPTURE ()))

let cOMPARISON = ref ((new inputImageType ("Comparison", 1)))
let get_cOMPARISON () = !cOMPARISON
let set_cOMPARISON value' = cOMPARISON := value'
let () = java_register_static "InputImageType.get_cOMPARISON" (fun _ -> Obj.repr (get_cOMPARISON ()))

let mOTION = ref ((new inputImageType ("Motion", 2)))
let get_mOTION () = !mOTION
let set_mOTION value' = mOTION := value'
let () = java_register_static "InputImageType.get_mOTION" (fun _ -> Obj.repr (get_mOTION ()))



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
(* package org.allbinary.logic.visual.media *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.logic.StdUtil *)

let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map))
let get_hashMap () = !hashMap
let set_hashMap value' = hashMap := value'
let () = java_register_static "MediaData.get_hashMap" (fun _ -> Obj.repr (get_hashMap ()))

let get ((a_Name : string)) =
        try
        begin
        let mediaData : Obj.t ref = ref ((Obj.repr (Obj.magic (!hashMap#get (a_Name))))) in ();
        if ((Obj.magic !mediaData) != (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((Obj.magic !mediaData))))
        end else begin
            raise (Failure ("No Such MediaData"))
        end
        end
        with Java_return value -> Obj.obj value

and getDefault () =
        begin
        (Obj.magic (java_call_static "MediaDataFactory.getInstance" (Obj.repr ())))#jPG
        end

and toHashMap () : java_hash_map =
        begin
        (!hashMap :> java_hash_map)
        end

let () = java_register_static "MediaData.get" (fun arguments -> Obj.repr (get (Obj.obj arguments)))
let () = java_register_static "MediaData.getDefault" (fun arguments -> Obj.repr (getDefault (Obj.obj arguments)))
let () = java_register_static "MediaData.toHashMap" (fun arguments -> Obj.repr (toHashMap (Obj.obj arguments)))
class mediaData ((a_Name : string)) =
  object (self)
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable type_ : string = ""
    method type_ = type_
    method set_type_ value' = type_ <- value'
    val mutable extension : string = ""
    method extension = extension
    method set_extension value' = extension <- value'
    
    

    method getName () : string =
        begin
        name
        end
    

    method getType () : string =
        begin
        type_
        end
    

    method getExtension () : string =
        begin
        extension
        end
    

    method isConvertableTo : 'any1. 'any1 -> bool = fun (mediaData) ->
        let mediaData = Obj.repr mediaData in
        try
        begin
        if (((Obj.repr self) == (Obj.repr (Obj.magic (java_call_static "MediaDataFactory.getInstance" (Obj.repr ())))#gIF)) && ((Obj.repr (Obj.magic mediaData)) == (Obj.repr (Obj.magic (java_call_static "MediaDataFactory.getInstance" (Obj.repr ())))#jPG))) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method toString () : string =
        begin
        (self#getName ())
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        name <- a_Name;
        extension <- ("." ^ name);
        type_ <- (MediaTypeData.getInstance ())#nOT_RESIZABLE_MEDIA;
        ignore (!hashMap#put (a_Name, self))
      end
  end
let () = java_register_constructor "MediaData" (fun arguments -> Obj.repr (new mediaData (Obj.obj arguments)))



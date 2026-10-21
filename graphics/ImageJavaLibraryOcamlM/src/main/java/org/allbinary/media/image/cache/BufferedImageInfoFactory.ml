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
(* package org.allbinary.media.image.cache *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.string.StringMaker *)

let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map))
let get_hashMap () = !hashMap
let set_hashMap value' = hashMap := value'
let () = java_register_static "BufferedImageInfoFactory.get_hashMap" (fun _ -> Obj.repr (get_hashMap ()))

let getInstance ((width : int), (height : int), (type_ : int)) : BufferedImageInfo.bufferedImageInfo =
        begin
        let stringbuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringbuffer#appendint (width));
        ignore (!stringbuffer#appendint (height));
        ignore (!stringbuffer#appendint (type_));
        let key : string ref = ref ((java_string_of (Obj.repr !stringbuffer))) in ();
        let bufferedImageInfo : BufferedImageInfo.bufferedImageInfo ref = ref (((Obj.magic (!hashMap#get (!key))) :> BufferedImageInfo.bufferedImageInfo)) in ();
        if (!bufferedImageInfo == (Obj.magic 0)) then begin
            bufferedImageInfo := (new BufferedImageInfo.bufferedImageInfo (width, height, type_));
            ignore (!hashMap#put (!key, !bufferedImageInfo))
        end;
        (!bufferedImageInfo :> BufferedImageInfo.bufferedImageInfo)
        end

let () = java_register_static "BufferedImageInfoFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class bufferedImageInfoFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "BufferedImageInfoFactory" (fun arguments -> Obj.repr (new bufferedImageInfoFactory (Obj.obj arguments)))



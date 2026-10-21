(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2007 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.util.cache *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class poolType (cacheType_arg) =
  object (self)
    val mutable cacheType : Obj.t = Obj.repr 0
    method cacheType : 'r. 'r = Obj.magic cacheType
    method set_cacheType : 'v. 'v -> unit = fun value' -> cacheType <- Obj.repr value'
    
    

    method getCacheType : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic cacheType)))
        end
    

    method toString () : string =
        begin
        let pOOL_TYPE : string ref = ref ("PoolType: ") in ();
        (!pOOL_TYPE ^ (java_string_of (Obj.repr (self#getCacheType ()))))
        end

    initializer
      begin
        ();
        ();
        cacheType <- Obj.repr (cacheType_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "PoolType" (fun arguments -> Obj.repr (new poolType (Obj.obj arguments)))



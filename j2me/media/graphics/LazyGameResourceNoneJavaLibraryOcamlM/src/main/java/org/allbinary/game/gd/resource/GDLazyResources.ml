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
(* package org.allbinary.game.gd.resource *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class gDLazyResources () =
  object
    val mutable imageResourceWidthArray : int array = (Obj.magic 0)
    method imageResourceWidthArray = imageResourceWidthArray
    method set_imageResourceWidthArray value' = imageResourceWidthArray <- value'
    val mutable imageResourceHeightArray : int array = (Obj.magic 0)
    method imageResourceHeightArray = imageResourceHeightArray
    method set_imageResourceHeightArray value' = imageResourceHeightArray <- value'
    val mutable requiredResourcesBeforeLoadingArray : string array = (Obj.magic 0)
    method requiredResourcesBeforeLoadingArray = requiredResourcesBeforeLoadingArray
    method set_requiredResourcesBeforeLoadingArray value' = requiredResourcesBeforeLoadingArray <- value'

    initializer
      begin
        imageResourceWidthArray <- [|  |];
        imageResourceHeightArray <- [|  |];
        requiredResourcesBeforeLoadingArray <- [|  |];
        ()
      end
  end
let () = java_register_constructor "GDLazyResources" (fun arguments -> Obj.repr (new gDLazyResources (Obj.obj arguments)))

let instance = (new gDLazyResources ())
let get_instance () = instance
let () = java_register_static "GDLazyResources.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GDLazyResources.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



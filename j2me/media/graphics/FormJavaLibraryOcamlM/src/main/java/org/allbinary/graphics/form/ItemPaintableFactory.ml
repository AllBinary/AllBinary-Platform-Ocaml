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
(* package org.allbinary.graphics.form *)

open Allbinary_java [@@warning "-33"]

class itemPaintableFactory () =
  object
    inherit ItemPaintable.itemPaintable ()
    

    method getInstanceItemPaintable : 'any1. 'any1 -> ItemPaintable.itemPaintable = fun (_paintableForm) ->
        begin
        (instance :> ItemPaintable.itemPaintable)
        end [@@warning "-7-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ItemPaintableFactory" (fun arguments -> Obj.repr (new itemPaintableFactory (Obj.obj arguments)))

let instance = (new itemPaintableFactory ())
let get_instance () = instance
let () = java_register_static "ItemPaintableFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ItemPaintableFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



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
[@@@warning "-20"]

let instance_cell : Obj.t Lazy.t ref = ref (Lazy.from_val java_null)
let get_instance : 'r. unit -> 'r = fun () -> Obj.magic (try Lazy.force !instance_cell with Lazy.Undefined -> java_null)
let set_instance value' = instance_cell := Lazy.from_val (Obj.repr value')
let () = java_register_static "ItemPaintableFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
let () = java_register_static "ItemPaintableFactory.set_instance" (fun value' -> set_instance value'; Obj.repr ())
class itemPaintableFactory () =
  object
    inherit ItemPaintable.itemPaintable ()
    

    method getInstanceItemPaintable : 'any1 'return. 'any1 -> 'return = fun (_paintableForm) ->
        begin
        (Obj.magic ((Obj.magic (get_instance ()))))
        end [@@warning "-7-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ItemPaintableFactory" (fun arguments -> Obj.repr (new itemPaintableFactory (Obj.obj arguments)))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (get_instance ()))))
        end
let () = java_register_static "ItemPaintableFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))

let () = instance_cell := lazy (Obj.repr ((new itemPaintableFactory ())))



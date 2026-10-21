(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.form *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.form.item.ABCustomItem *)

class itemIndexPaintable () =
  object
    

    method paint : 'any1 'any3. 'any1 * int * 'any3 * int * int -> int = fun (_graphics, (_index : int), _item, (_dx : int), (_dy : int)) ->
        begin
        0
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ItemIndexPaintable" (fun arguments -> Obj.repr (new itemIndexPaintable (Obj.obj arguments)))

let instance = (new itemIndexPaintable ())
let get_instance () = instance
let () = java_register_static "ItemIndexPaintable.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ItemIndexPaintable.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class currentlyPressedTouchButtonSingleton () =
  object
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    
    

    method size () : int =
        begin
        (list#size ())
        end
    

    method removeAt ((index : int)) : TouchButtonInput.touchButtonInput =
        begin
        ((Obj.magic (list#removeAt (index))) :> TouchButtonInput.touchButtonInput)
        end
    

    method remove : 'any1. 'any1 -> bool = fun (touchButtonInput) ->
        let touchButtonInput = Obj.repr touchButtonInput in
        begin
        (list#remove ((Obj.magic touchButtonInput)))
        end [@@warning "-20"]
    

    method get ((index : int)) : TouchButtonInput.touchButtonInput =
        begin
        ((Obj.magic list#objectArray.(index)) :> TouchButtonInput.touchButtonInput)
        end
    

    method contains : 'any1. 'any1 -> bool = fun (touchButtonInput) ->
        let touchButtonInput = Obj.repr touchButtonInput in
        begin
        (list#contains ((Obj.magic touchButtonInput)))
        end [@@warning "-20"]
    

    method add : 'any1. 'any1 -> unit = fun (touchButtonInput) ->
        let touchButtonInput = Obj.repr touchButtonInput in
        begin
        ignore (list#add ((Obj.magic touchButtonInput)))
        end [@@warning "-20"]

    initializer
      begin
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ()
      end
  end
let () = java_register_constructor "CurrentlyPressedTouchButtonSingleton" (fun arguments -> Obj.repr (new currentlyPressedTouchButtonSingleton (Obj.obj arguments)))

let instance = (new currentlyPressedTouchButtonSingleton ())
let get_instance () = instance
let () = java_register_static "CurrentlyPressedTouchButtonSingleton.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CurrentlyPressedTouchButtonSingleton.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



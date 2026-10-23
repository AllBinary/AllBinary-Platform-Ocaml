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
(* import org.allbinary.game.input.InputFactory *)
(* import org.allbinary.logic.NullUtil *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "CancelTouchButtonInputFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
class cancelTouchButtonInputFactory () =
  object
    val mutable cancelInputArray : TouchButtonInput.touchButtonInput array = (Obj.magic 0)
    method cancelInputArray = cancelInputArray
    method set_cancelInputArray value' = cancelInputArray <- value'
    
    

    method getCancel : 'any1. 'any1 -> TouchButtonInput.touchButtonInput = fun (touchButtonInput) ->
        let touchButtonInput = Obj.repr touchButtonInput in
        begin
        (cancelInputArray.(((Obj.magic touchButtonInput)#getSourceId ())) :> TouchButtonInput.touchButtonInput)
        end [@@warning "-20"]

    initializer
      begin
        cancelInputArray <- (Array.make ((InputFactory.getInstance ())#mAX) (Obj.magic 0));
        ();
        let basicTouchInputFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "BasicTouchInputFactory.getInstance" (Obj.repr ()))))) in ();
        for index = ((Array.length cancelInputArray) - 1) downto 0 do
            cancelInputArray.(index) <- ((Obj.magic !basicTouchInputFactory)#nONE :> TouchButtonInput.touchButtonInput)
        done;
        cancelInputArray.(((Obj.magic !basicTouchInputFactory)#uP#getSourceId ())) <- ((Obj.magic !basicTouchInputFactory)#dOWN :> TouchButtonInput.touchButtonInput);
        cancelInputArray.(((Obj.magic !basicTouchInputFactory)#dOWN#getSourceId ())) <- ((Obj.magic !basicTouchInputFactory)#uP :> TouchButtonInput.touchButtonInput);
        cancelInputArray.(((Obj.magic !basicTouchInputFactory)#lEFT#getSourceId ())) <- ((Obj.magic !basicTouchInputFactory)#rIGHT :> TouchButtonInput.touchButtonInput);
        cancelInputArray.(((Obj.magic !basicTouchInputFactory)#rIGHT#getSourceId ())) <- ((Obj.magic !basicTouchInputFactory)#lEFT :> TouchButtonInput.touchButtonInput)
      end
  end
let () = java_register_constructor "CancelTouchButtonInputFactory" (fun arguments -> Obj.repr (new cancelTouchButtonInputFactory (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new cancelTouchButtonInputFactory ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "CancelTouchButtonInputFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



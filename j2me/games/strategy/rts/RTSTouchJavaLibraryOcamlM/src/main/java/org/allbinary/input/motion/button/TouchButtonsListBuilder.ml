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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class touchButtonsListBuilder () =
  object
    inherit BaseTouchInput.baseTouchInput ()
    val mutable baseTouchInputList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method baseTouchInputList = baseTouchInputList
    method set_baseTouchInputList value' = baseTouchInputList <- value'
    

    method addList : 'any1. 'any1 -> unit = fun (list) ->
        let list = Obj.repr list in
        begin
        let size : int ref = ref ((baseTouchInputList#size ())) in ();
        let baseTouchInput : BaseTouchInput.baseTouchInput ref = ref (((Obj.magic 0) :> BaseTouchInput.baseTouchInput)) in ();
        for index = 0 to !size - 1 do
            baseTouchInput := (Obj.magic (baseTouchInputList#get (index)));
            ignore ((Obj.magic list)#addAllList ((!baseTouchInput#getList ())))
        done
        end [@@warning "-7-20"]
    

    method add : 'any1. 'any1 -> unit = fun (baseTouchInput) ->
        let baseTouchInput = Obj.repr baseTouchInput in
        begin
        ignore (baseTouchInputList#add ((Obj.magic baseTouchInput)))
        end [@@warning "-7-20"]

    initializer
      begin
        baseTouchInputList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ()
      end
  end
let () = java_register_constructor "TouchButtonsListBuilder" (fun arguments -> Obj.repr (new touchButtonsListBuilder (Obj.obj arguments)))



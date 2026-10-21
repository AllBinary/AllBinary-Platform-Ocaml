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
(* package org.allbinary.graphics.color *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)

class colorChangeEvent ((anyType : Obj.t)) =
  object
    inherit AllBinaryEventObject.allBinaryEventObject (anyType)
    val mutable basicColor : BasicColor.basicColor = (Obj.magic 0)
    method basicColor = basicColor
    method set_basicColor value' = basicColor <- value'
    
    

    method setBasicColorP : 'any1. 'any1 -> unit = fun (basicColor_arg) ->
        let basicColor_arg = Obj.repr basicColor_arg in
        begin
        basicColor <- (Obj.magic basicColor_arg)
        end [@@warning "-7-20"]
    

    method getBasicColorP () : BasicColor.basicColor =
        begin
        (basicColor :> BasicColor.basicColor)
        end [@@warning "-7"]

    initializer
      begin
        basicColor <- ((BasicColorFactory.getInstance ())#wHITE :> BasicColor.basicColor);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "ColorChangeEvent" (fun arguments -> Obj.repr (new colorChangeEvent (Obj.obj arguments)))



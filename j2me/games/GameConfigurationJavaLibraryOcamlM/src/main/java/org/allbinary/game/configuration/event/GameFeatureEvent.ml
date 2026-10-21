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
(* package org.allbinary.game.configuration.event *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)

class gameFeatureEvent ((anyType : Obj.t), (whatChanged_arg : string)) =
  object (self)
    inherit AllBinaryEventObject.allBinaryEventObject (anyType)
    val mutable whatChanged : string = ""
    method whatChanged = whatChanged
    method set_whatChanged value' = whatChanged <- value'
    
    

    method getWhatChanged () : string =
        begin
        whatChanged
        end [@@warning "-7"]
    

    method getGameOption () : Obj.t =
        begin
        (Obj.repr ((self#getSource ())))
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        whatChanged <- whatChanged_arg
      end
  end
let () = java_register_constructor "GameFeatureEvent" (fun arguments -> Obj.repr (new gameFeatureEvent (Obj.obj arguments)))



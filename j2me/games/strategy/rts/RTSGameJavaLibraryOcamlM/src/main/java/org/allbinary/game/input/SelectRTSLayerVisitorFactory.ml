(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.util.visitor.Visitor *)

class selectRTSLayerVisitorFactory () =
  object
    
    

    method create : 'any1. 'any1 -> Visitor.visitor = fun (_selectedRTSLayersPlayerGameInput) ->
        begin
        ((new SelectRTSLayerVisitor.selectRTSLayerVisitor ()) :> Visitor.visitor)
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "SelectRTSLayerVisitorFactory" (fun arguments -> Obj.repr (new selectRTSLayerVisitorFactory (Obj.obj arguments)))

let instance = (new selectRTSLayerVisitorFactory ())
let get_instance () = instance
let () = java_register_static "SelectRTSLayerVisitorFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "SelectRTSLayerVisitorFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



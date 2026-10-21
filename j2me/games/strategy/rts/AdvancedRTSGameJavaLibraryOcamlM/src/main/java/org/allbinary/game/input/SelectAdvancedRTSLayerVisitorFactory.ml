(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.util.visitor.Visitor *)

class selectAdvancedRTSLayerVisitorFactory () =
  object
    
    

    method create : 'any1. 'any1 -> Visitor.visitor = fun (selectedRTSLayersPlayerGameInput) ->
        let selectedRTSLayersPlayerGameInput = Obj.repr selectedRTSLayersPlayerGameInput in
        begin
        ((new SelectAdvancedRTSLayerVisitor.selectAdvancedRTSLayerVisitor ((Obj.magic selectedRTSLayersPlayerGameInput))) :> Visitor.visitor)
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "SelectAdvancedRTSLayerVisitorFactory" (fun arguments -> Obj.repr (new selectAdvancedRTSLayerVisitorFactory (Obj.obj arguments)))

let instance = (new selectAdvancedRTSLayerVisitorFactory ())
let get_instance () = instance
let () = java_register_static "SelectAdvancedRTSLayerVisitorFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "SelectAdvancedRTSLayerVisitorFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



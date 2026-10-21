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
(* package org.allbinary.ai *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.layer.AllBinaryLayerManager *)

let aI_ID : int = 2
let get_aI_ID () = aI_ID
let () = java_register_static "ArtificialIntelligence.get_aI_ID" (fun _ -> Obj.repr (get_aI_ID ()))
class artificialIntelligence () =
  object
    
    

    method processAI : 'any1. 'any1 -> unit = fun (_layerManager) ->
        begin
        ()
        end [@@warning "-20"]
    

    method getId () : int =
        begin
        1
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ArtificialIntelligence" (fun arguments -> Obj.repr (new artificialIntelligence (Obj.obj arguments)))

let instance = (new artificialIntelligence ())
let get_instance () = instance
let () = java_register_static "ArtificialIntelligence.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ArtificialIntelligence.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



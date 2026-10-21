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
(* import org.allbinary.game.input.mapping.InputMappingInterface *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.paint.ProcessPaintable *)


let getInstance : 'any1 'any2. 'any1 * 'any2 -> ProcessPaintable.processPaintable = fun (inputMappingInterface, basicColor) ->
        let inputMappingInterface = Obj.repr inputMappingInterface in
        let basicColor = Obj.repr basicColor in
        begin
        ((new TouchButtonsPaintableComposite.touchButtonsPaintableComposite ((Obj.magic inputMappingInterface), (Obj.magic basicColor))) :> ProcessPaintable.processPaintable)
        end [@@warning "-20"]

let () = java_register_static "TouchButtonsPaintableCompositeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class touchButtonsPaintableCompositeFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "TouchButtonsPaintableCompositeFactory" (fun arguments -> Obj.repr (new touchButtonsPaintableCompositeFactory (Obj.obj arguments)))



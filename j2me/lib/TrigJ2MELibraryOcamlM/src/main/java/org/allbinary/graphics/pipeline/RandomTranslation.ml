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
(* package org.allbinary.graphics.pipeline *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.rand.MyRandomFactory *)
(* import org.allbinary.util.BasicArrayList *)


let getInstance : 'any1. 'any1 * int -> BasicArrayList.basicArrayList = fun (vector, (howMuch : int)) ->
        let vector = Obj.repr vector in
        begin
        let myRandomFactory : MyRandomFactory.myRandomFactory ref = ref (((MyRandomFactory.getInstance ()) :> MyRandomFactory.myRandomFactory)) in ();
        let x : int ref = ref ((-(!myRandomFactory#getNextInt (howMuch)))) in ();
        let y : int ref = ref ((!myRandomFactory#getNextInt (howMuch))) in ();
        let graphicsPipe : BasicGraphicsPipeline.basicGraphicsPipeline ref = ref (((new BasicGraphicsPipeline.basicGraphicsPipeline ((Obj.magic vector))) :> BasicGraphicsPipeline.basicGraphicsPipeline)) in ();
        ignore (!graphicsPipe#createMatrix ());
        ignore (!graphicsPipe#translate (!x, !y));
        ((!graphicsPipe#getMatrix ()) :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]

let () = java_register_static "RandomTranslation.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class randomTranslation () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "RandomTranslation" (fun arguments -> Obj.repr (new randomTranslation (Obj.obj arguments)))



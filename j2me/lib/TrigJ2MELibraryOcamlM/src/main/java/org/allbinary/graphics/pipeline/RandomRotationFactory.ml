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
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.util.BasicArrayList *)

class randomRotationFactory () =
  object (self)
    val mutable myRandomFactory : MyRandomFactory.myRandomFactory = (Obj.magic 0)
    method myRandomFactory = myRandomFactory
    method set_myRandomFactory value' = myRandomFactory <- value'
    val mutable angleFactory : AngleFactory.angleFactory = (Obj.magic 0)
    method angleFactory = angleFactory
    method set_angleFactory value' = angleFactory <- value'
    

    method getInstanceList : 'any1. 'any1 * int -> BasicArrayList.basicArrayList = fun (vector, (howMuch : int)) ->
        let vector = Obj.repr vector in
        begin
        let graphicsPipe : BasicGraphicsPipeline.basicGraphicsPipeline ref = ref (((new BasicGraphicsPipeline.basicGraphicsPipeline ((Obj.magic vector))) :> BasicGraphicsPipeline.basicGraphicsPipeline)) in ();
        ignore (!graphicsPipe#createMatrix ());
        ignore (!graphicsPipe#rotateToAngle ((angleFactory#getAt ((self#getNextRandomAngle (howMuch))))));
        ((!graphicsPipe#getMatrix ()) :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]
    

    method getNextRandomAngle ((howMuch : int)) : int =
        begin
        (myRandomFactory#getNextInt ((howMuch * 10)))
        end

    initializer
      begin
        myRandomFactory <- ((MyRandomFactory.getInstance ()) :> MyRandomFactory.myRandomFactory);
        angleFactory <- ((AngleFactory.getInstance ()) :> AngleFactory.angleFactory);
        ()
      end
  end
let () = java_register_constructor "RandomRotationFactory" (fun arguments -> Obj.repr (new randomRotationFactory (Obj.obj arguments)))

let instance = (new randomRotationFactory ())
let get_instance () = instance
let () = java_register_static "RandomRotationFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "RandomRotationFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



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
(* package org.allbinary.direction *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.math.Angle *)
(* import org.allbinary.math.AngleFactory *)

class directionUtil () =
  object
    val mutable directionArray : Angle.angle array = (Obj.magic 0)
    method directionArray = directionArray
    method set_directionArray value' = directionArray <- value'
    val mutable directionArray2 : Angle.angle array = (Obj.magic 0)
    method directionArray2 = directionArray2
    method set_directionArray2 value' = directionArray2 <- value'
    
    

    method getAngle : 'any1. 'any1 -> Angle.angle = fun (direction) ->
        let direction = Obj.repr direction in
        begin
        (directionArray2.(((Obj.magic direction)#getValue ())) :> Angle.angle)
        end [@@warning "-20"]
    

    method getFrameAngle : 'any1. 'any1 -> Angle.angle = fun (direction) ->
        let direction = Obj.repr direction in
        begin
        (directionArray.(((Obj.magic direction)#getValue ())) :> Angle.angle)
        end [@@warning "-20"]

    initializer
      begin
        directionArray <- (Array.make (10) (Obj.magic 0));
        directionArray2 <- (Array.make (10) (Obj.magic 0));
        ();
        let angleFactory : AngleFactory.angleFactory ref = ref (((AngleFactory.getInstance ()) :> AngleFactory.angleFactory)) in ();
        let directionFactory : DirectionFactory.directionFactory ref = ref (((DirectionFactory.getInstance ()) :> DirectionFactory.directionFactory)) in ();
        directionArray.((!directionFactory#lEFT#set_getValue ())) ((!angleFactory#lEFT :> Angle.angle));
        directionArray.((!directionFactory#rIGHT#set_getValue ())) ((!angleFactory#rIGHT :> Angle.angle));
        directionArray.((!directionFactory#uP#set_getValue ())) ((!angleFactory#uP :> Angle.angle));
        directionArray.((!directionFactory#dOWN#set_getValue ())) ((!angleFactory#dOWN :> Angle.angle));
        directionArray2.((!directionFactory#lEFT#set_getValue ())) ((!angleFactory#lEFT :> Angle.angle));
        directionArray2.((!directionFactory#rIGHT#set_getValue ())) ((!angleFactory#rIGHT :> Angle.angle));
        directionArray2.((!directionFactory#uP#set_getValue ())) ((!angleFactory#uP :> Angle.angle));
        directionArray2.((!directionFactory#dOWN#set_getValue ())) ((!angleFactory#dOWN :> Angle.angle))
      end
  end
let () = java_register_constructor "DirectionUtil" (fun arguments -> Obj.repr (new directionUtil (Obj.obj arguments)))

let instance = (new directionUtil ())
let get_instance () = instance
let () = java_register_static "DirectionUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "DirectionUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



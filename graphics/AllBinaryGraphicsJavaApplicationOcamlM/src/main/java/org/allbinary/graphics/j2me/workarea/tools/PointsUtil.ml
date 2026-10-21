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
(* package org.allbinary.graphics.j2me.workarea.tools *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.animation.VectorRotationGenerator *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.util.BasicArrayList *)

class pointsUtil () =
  object
    

    method doTransforms : 'any1 'any3. 'any1 * float * 'any3 -> BasicArrayList.basicArrayList = fun (pointVector, (angle : float), fulcrumPoint) ->
        let pointVector = Obj.repr pointVector in
        let fulcrumPoint = Obj.repr fulcrumPoint in
        begin
        (((VectorRotationGenerator.getInstance ())#getListAtAngle (((Obj.magic fulcrumPoint)#getX ()), ((Obj.magic fulcrumPoint)#getY ()), (Obj.magic pointVector), ((AngleFactory.getInstance ())#getAt ((int_of_float angle))))) :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "PointsUtil" (fun arguments -> Obj.repr (new pointsUtil (Obj.obj arguments)))

let instance = (new pointsUtil ())
let get_instance () = instance
let () = java_register_static "PointsUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PointsUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



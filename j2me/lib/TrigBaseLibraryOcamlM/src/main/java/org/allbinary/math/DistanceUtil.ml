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
(* package org.allbinary.math *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.math.MathUtil *)

class distanceUtil () =
  object
    val mutable mathUtil : MathUtil.mathUtil = (Obj.magic 0)
    method mathUtil = mathUtil
    method set_mathUtil value' = mathUtil <- value'
    

    method getDistance ((x1 : int), (y1 : int), (x2 : int), (y2 : int)) : int =
        begin
        let dx : int ref = ref ((x1 - x2)) in ();
        let dy : int ref = ref ((y1 - y2)) in ();
        (java_to_int (Obj.repr ((mathUtil#sqrt ((((!dx * !dx)) + ((!dy * !dy))))))))
        end

    initializer
      begin
        mathUtil <- ((MathUtil.getInstance ()) :> MathUtil.mathUtil);
        ()
      end
  end
let () = java_register_constructor "DistanceUtil" (fun arguments -> Obj.repr (new distanceUtil (Obj.obj arguments)))

let instance = (new distanceUtil ())
let get_instance () = instance
let () = java_register_static "DistanceUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "DistanceUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



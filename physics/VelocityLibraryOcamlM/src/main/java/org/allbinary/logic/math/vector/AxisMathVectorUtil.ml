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
(* package org.allbinary.logic.math.vector *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.math.NoDecimalTrigTable *)

class axisMathVectorUtil () =
  object
    val mutable noDecimalTrigTable : NoDecimalTrigTable.noDecimalTrigTable = (Obj.magic 0)
    method noDecimalTrigTable = noDecimalTrigTable
    method set_noDecimalTrigTable value' = noDecimalTrigTable <- value'
    

    method calculateX ((magnitude : int), (angle : int)) : int =
        begin
        ((magnitude * (noDecimalTrigTable#cos (angle))) / 10)
        end
    

    method calculateY ((magnitude : int), (angle : int)) : int =
        begin
        ((magnitude * (noDecimalTrigTable#sin (angle))) / 10)
        end
    

    method calculateZ ((magnitude : int), (otherAngle : int)) : int =
        begin
        ((magnitude * (noDecimalTrigTable#sin (otherAngle))) / 10)
        end

    initializer
      begin
        noDecimalTrigTable <- ((NoDecimalTrigTable.getInstance ()) :> NoDecimalTrigTable.noDecimalTrigTable);
        ()
      end
  end
let () = java_register_constructor "AxisMathVectorUtil" (fun arguments -> Obj.repr (new axisMathVectorUtil (Obj.obj arguments)))

let instance = (new axisMathVectorUtil ())
let get_instance () = instance
let () = java_register_static "AxisMathVectorUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AxisMathVectorUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



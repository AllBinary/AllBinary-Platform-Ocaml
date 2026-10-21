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
(* package org.allbinary.graphics *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import jsinterop.annotations.JsType *)
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsConstructor *)
(* import jsinterop.annotations.JsProperty *)

class pointFactory () =
  object (self)
    val mutable zERO_ZERO : GPoint.gPoint = (Obj.magic 0)
    method zERO_ZERO = zERO_ZERO
    method set_zERO_ZERO value' = zERO_ZERO <- value'
    

    method init () : unit =
        begin
        ()
        end
    
    

    method createXY ((x : int), (y : int)) : GPoint.gPoint =
        begin
        ((new GPoint.gPoint (x, y, 0)) :> GPoint.gPoint)
        end
    

    method createXYZ ((x : int), (y : int), (z : int)) : GPoint.gPoint =
        begin
        ((new GPoint.gPoint (x, y, z)) :> GPoint.gPoint)
        end

    initializer
      begin
        zERO_ZERO <- ((self#createXYZ (0, 0, 0)) :> GPoint.gPoint);
        ();
        ()
      end
  end
let () = java_register_constructor "PointFactory" (fun arguments -> Obj.repr (new pointFactory (Obj.obj arguments)))

let instance = (new pointFactory ())
let get_instance () = instance
let () = java_register_static "PointFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PointFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



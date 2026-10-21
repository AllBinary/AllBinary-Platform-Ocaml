(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.displayable.screen *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)

class displayPointScalar () =
  object
    
    

    method processX ((value : int)) : int =
        begin
        value
        end
    

    method processY ((value : int)) : int =
        begin
        value
        end
    

    method process : 'any1. 'any1 -> GPoint.gPoint = fun (point) ->
        let point = Obj.repr point in
        begin
        ((Obj.magic point) :> GPoint.gPoint)
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "DisplayPointScalar" (fun arguments -> Obj.repr (new displayPointScalar (Obj.obj arguments)))

let instance = (new displayPointScalar ())
let get_instance () = instance
let () = java_register_static "DisplayPointScalar.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "DisplayPointScalar.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



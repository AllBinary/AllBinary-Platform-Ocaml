(* Generated Code Do Not Modify *)
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]

class fixedPoint () =
  object
    val mutable oNE : int = 0
    method oNE = oNE
    method set_oNE value' = oNE <- value'
    

    method toFixed ((val_ : float)) : int =
        begin
        (int_of_float (((val_ *. 65536.0))))
        end
    

    (* Java overload toFixed(FLOAT) is not converted: OCaml has one method per name *)
    

    method mul ((a : int), (b : int)) : int =
        begin
        ((((a * b)) asr 16))
        end
    

    method div ((a : int), (b : int)) : int =
        begin
        (((((a) lsl 16)) / b))
        end
    

    method toInt ((fixed : int)) : int =
        begin
        (fixed asr 16)
        end

    initializer
      begin
        oNE <- (1 lsl 16);
        ()
      end
  end
let () = java_register_constructor "FixedPoint" (fun arguments -> Obj.repr (new fixedPoint (Obj.obj arguments)))

let instance = (new fixedPoint ())
let get_instance () = instance
let () = java_register_static "FixedPoint.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "FixedPoint.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



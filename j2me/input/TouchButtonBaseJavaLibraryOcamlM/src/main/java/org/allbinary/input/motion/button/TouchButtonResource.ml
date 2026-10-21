(*
 
  To change this license header, choose License Headers in Project Properties. 
  To change this template file, choose Tools | Templates 
  and open the template in the editor.  
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]

class touchButtonResource ((resource : string), (hint : string)) =
  object
    val mutable rESOURCE : string = ""
    method rESOURCE = rESOURCE
    method set_rESOURCE value' = rESOURCE <- value'
    val mutable hINT : string = ""
    method hINT = hINT
    method set_hINT value' = hINT <- value'
    

    initializer
      begin
        ();
        ();
        ();
        rESOURCE <- resource;
        hINT <- hint
      end
  end
let () = java_register_constructor "TouchButtonResource" (fun arguments -> Obj.repr (new touchButtonResource (Obj.obj arguments)))



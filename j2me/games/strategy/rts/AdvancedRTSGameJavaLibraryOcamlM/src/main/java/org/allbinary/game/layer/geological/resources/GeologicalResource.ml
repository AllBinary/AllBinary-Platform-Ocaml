(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer.geological.resources *)

open Allbinary_java [@@warning "-33"]

class geologicalResource ((initTotal_arg : int)) =
  object (self)
    val mutable total : int = 0
    method total = total
    method set_total value' = total <- value'
    val mutable initTotal : int = 0
    method initTotal = initTotal
    method set_initTotal value' = initTotal <- value'
    
    

    method init () : unit =
        begin
        (self#setTotal (initTotal))
        end
    

    method add ((value : int)) : unit =
        begin
        let max : int ref = ref (2147483647) in ();
        if (((self#getTotal ()) + value) > !max) then begin
            (self#setTotal (!max))
        end else begin
            (self#setTotal (((self#getTotal ()) + value)))
        end
        end
    

    method remove ((value : int)) : unit =
        begin
        if (((self#getTotal ()) - value) < 0) then begin
            (self#setTotal (0))
        end else begin
            (self#setTotal (((self#getTotal ()) - value)))
        end
        end
    

    method getTotal () : int =
        begin
        total
        end
    

    method setTotal ((total_arg : int)) : unit =
        begin
        total <- total_arg
        end

    initializer
      begin
        total <- 0;
        ();
        ();
        initTotal <- initTotal_arg;
        (self#init ())
      end
  end
let () = java_register_constructor "GeologicalResource" (fun arguments -> Obj.repr (new geologicalResource (Obj.obj arguments)))



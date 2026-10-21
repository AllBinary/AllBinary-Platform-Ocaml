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
(* package org.allbinary.midlet *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.midlet.MIDlet *)
(* import org.allbinary.canvas.Processor *)

class midletExitProcessor (midlet_arg) =
  object
    inherit Processor.processor ()
    val mutable midlet : Obj.t = Obj.repr 0
    method midlet : 'r. 'r = Obj.magic midlet
    method set_midlet : 'v. 'v -> unit = fun value' -> midlet <- Obj.repr value'
    
    

    method process () : unit =
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        midlet <- Obj.repr (midlet_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "MidletExitProcessor" (fun arguments -> Obj.repr (new midletExitProcessor (Obj.obj arguments)))



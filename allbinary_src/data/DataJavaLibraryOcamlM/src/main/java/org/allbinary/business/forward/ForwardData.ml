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
(* package org.allbinary.business.forward *)

open Allbinary_java [@@warning "-33"]

class forwardData () =
  object
    val mutable pAGE : string = ""
    method pAGE = pAGE
    method set_pAGE value' = pAGE <- value'
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable vALUE : string = ""
    method vALUE = vALUE
    method set_vALUE value' = vALUE <- value'
    

    initializer
      begin
        pAGE <- "FORWARD_PAGE";
        nAME <- "FORWARD_NAME";
        vALUE <- "FORWARD_VALUE";
        ();
        ()
      end
  end
let () = java_register_constructor "ForwardData" (fun arguments -> Obj.repr (new forwardData (Obj.obj arguments)))

let instance = (new forwardData ())
let get_instance () = instance
let () = java_register_static "ForwardData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ForwardData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



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
(* package org.allbinary.logic.visual.dhtml.style.css.property.color.background *)

open Allbinary_java [@@warning "-33"]

class backgroundColorData () =
  object
    val mutable vALUE : string = ""
    method vALUE = vALUE
    method set_vALUE value' = vALUE <- value'
    

    initializer
      begin
        vALUE <- "background-color";
        ();
        ()
      end
  end
let () = java_register_constructor "BackgroundColorData" (fun arguments -> Obj.repr (new backgroundColorData (Obj.obj arguments)))

let instance = (new backgroundColorData ())
let get_instance () = instance
let () = java_register_static "BackgroundColorData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BackgroundColorData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



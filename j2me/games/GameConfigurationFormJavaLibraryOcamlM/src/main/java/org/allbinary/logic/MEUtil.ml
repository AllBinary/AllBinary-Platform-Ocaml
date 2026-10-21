(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Item *)
(* import org.allbinary.graphics.displayable.screen.CommandForm *)

class mEUtil () =
  object
    

    method appendItem : 'any1 'any2. 'any1 * 'any2 -> unit = fun (form, item) ->
        let form = Obj.repr form in
        let item = Obj.repr item in
        begin
        ignore ((Obj.magic form)#append ((Obj.magic item)))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "MEUtil" (fun arguments -> Obj.repr (new mEUtil (Obj.obj arguments)))

let instance = (new mEUtil ())
let get_instance () = instance
let () = java_register_static "MEUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "MEUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



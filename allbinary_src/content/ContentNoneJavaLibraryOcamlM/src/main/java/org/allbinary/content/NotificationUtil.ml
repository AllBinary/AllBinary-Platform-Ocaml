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
(* package org.allbinary.content *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.lcdui.Command *)

class notificationUtil () =
  object
    

    method notify : 'any1. 'any1 * string * string -> unit = fun (_command, (_resource : string), (_message : string)) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NotificationUtil" (fun arguments -> Obj.repr (new notificationUtil (Obj.obj arguments)))

let sINGLETON = (new notificationUtil ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "NotificationUtil.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "NotificationUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



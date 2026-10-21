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
(* package org.allbinary.graphics.displayable.screen *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.lcdui.Displayable *)


let repaint : 'any1. 'any1 -> unit = fun (_displayable) ->
        begin
        ()
        end [@@warning "-20"]

let () = java_register_static "ScreenRepaintUtil.repaint" (fun arguments -> Obj.repr (repaint (Obj.obj arguments)))
class screenRepaintUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ScreenRepaintUtil" (fun arguments -> Obj.repr (new screenRepaintUtil (Obj.obj arguments)))



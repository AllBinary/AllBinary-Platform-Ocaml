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
[@@@warning "-20"]
(* import javax.microedition.lcdui.Displayable *)
(* import org.allbinary.canvas.Processor *)

class screenRepaintProcessor (displayable_arg) =
  object
    inherit Processor.processor ()
    val mutable displayable : Obj.t = Obj.repr 0
    method displayable : 'r. 'r = Obj.magic displayable
    method set_displayable : 'v. 'v -> unit = fun value' -> displayable <- Obj.repr value'
    
    

    method process () : unit =
        begin
        ignore (ScreenRepaintUtil.repaint ((Obj.magic displayable)))
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        displayable <- Obj.repr (displayable_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "ScreenRepaintProcessor" (fun arguments -> Obj.repr (new screenRepaintProcessor (Obj.obj arguments)))



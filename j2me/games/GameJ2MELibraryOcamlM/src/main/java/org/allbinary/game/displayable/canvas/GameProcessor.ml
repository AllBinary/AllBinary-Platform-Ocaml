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
(* package org.allbinary.game.displayable.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.canvas.Processor *)

class gameProcessor (gameCanvas_arg) =
  object
    inherit Processor.processor ()
    val mutable gameCanvas : Obj.t = Obj.repr 0
    method gameCanvas : 'r. 'r = Obj.magic gameCanvas
    method set_gameCanvas : 'v. 'v -> unit = fun value' -> gameCanvas <- Obj.repr value'
    
    

    method process () : unit =
        begin
        ignore ((Obj.magic gameCanvas)#processPlayingGame ())
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        gameCanvas <- Obj.repr (gameCanvas_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameProcessor" (fun arguments -> Obj.repr (new gameProcessor (Obj.obj arguments)))



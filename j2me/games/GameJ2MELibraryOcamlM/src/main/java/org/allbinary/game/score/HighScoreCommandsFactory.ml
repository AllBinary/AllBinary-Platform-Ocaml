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
(* package org.allbinary.game.score *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.lcdui.Command *)

class highScoreCommandsFactory () =
  object
    inherit HighScoreCommandsBaseFactory.highScoreCommandsBaseFactory ([| (HighScoreCommands.getInstance ())#pERSONAL; (HighScoreCommands.getInstance ())#wORLD |])
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "HighScoreCommandsFactory" (fun arguments -> Obj.repr (new highScoreCommandsFactory (Obj.obj arguments)))

let instance = (new highScoreCommandsFactory ())
let get_instance () = instance
let () = java_register_static "HighScoreCommandsFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "HighScoreCommandsFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



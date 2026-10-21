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
(* import org.allbinary.graphics.form.item.CommandTextItemArrayFactory *)
(* import org.allbinary.graphics.form.item.LimitCommandsVisitor *)

class demoLimitedCommandTextItemArrayFactory () =
  object
    val mutable commandTextItemArrayFactory : CommandTextItemArrayFactory.commandTextItemArrayFactory = (Obj.magic 0)
    method commandTextItemArrayFactory = commandTextItemArrayFactory
    method set_commandTextItemArrayFactory value' = commandTextItemArrayFactory <- value'
    

    method getCommandTextItemArrayFactory () : CommandTextItemArrayFactory.commandTextItemArrayFactory =
        begin
        (commandTextItemArrayFactory :> CommandTextItemArrayFactory.commandTextItemArrayFactory)
        end

    initializer
      begin
        commandTextItemArrayFactory <- ((new CommandTextItemArrayFactory.commandTextItemArrayFactory ((new LimitCommandsVisitor.limitCommandsVisitor ()))) :> CommandTextItemArrayFactory.commandTextItemArrayFactory);
        ()
      end
  end
let () = java_register_constructor "DemoLimitedCommandTextItemArrayFactory" (fun arguments -> Obj.repr (new demoLimitedCommandTextItemArrayFactory (Obj.obj arguments)))

let instance = (new demoLimitedCommandTextItemArrayFactory ())
let get_instance () = instance
let () = java_register_static "DemoLimitedCommandTextItemArrayFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "DemoLimitedCommandTextItemArrayFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



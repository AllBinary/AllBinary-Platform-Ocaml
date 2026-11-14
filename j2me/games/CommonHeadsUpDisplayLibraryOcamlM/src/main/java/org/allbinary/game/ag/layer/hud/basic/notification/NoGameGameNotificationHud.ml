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
(* package org.allbinary.game.ag.layer.hud.basic.notification *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.graphics.hud.BasicHudFactory *)
(* import org.allbinary.graphics.color.BasicColorFactory *)

class noGameGameNotificationHud () =
  object (self)
    inherit GameNotificationHud.gameNotificationHud ((BasicHudFactory.getInstance ())#tOPCENTER, (BasicHudFactory.getInstance ())#hORIZONTAL, 2, (BasicColorFactory.getInstance ())#rED)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        (self#set_updateMaxWidth) (40);
        (self#set_updateMaxHeight) (14)
      end
  end
let () = java_register_constructor "NoGameGameNotificationHud" (fun arguments -> Obj.repr (new noGameGameNotificationHud (Obj.obj arguments)))



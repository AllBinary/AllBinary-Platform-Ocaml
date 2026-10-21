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
[@@@warning "-20"]
(* import org.allbinary.game.graphics.hud.BasicHudFactory *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class noGameNotificationHudSingleton () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable gameNotificationHud : GameNotificationHud.gameNotificationHud = (Obj.magic 0)
    method gameNotificationHud = gameNotificationHud
    method set_gameNotificationHud value' = gameNotificationHud <- value'
    
    

    method getGameNotificationHud () : GameNotificationHud.gameNotificationHud =
        begin
        (gameNotificationHud :> GameNotificationHud.gameNotificationHud)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        gameNotificationHud <- ((GameNotificationHud.get_nULL_GAME_NOTIFICATION ()) :> GameNotificationHud.gameNotificationHud);
        ();
        (try
            let basicHudFactory : BasicHudFactory.basicHudFactory ref = ref (((BasicHudFactory.getInstance ()) :> BasicHudFactory.basicHudFactory)) in ();
            (* Java nested class NoGameGameNotificationHud: move it to its own module *) ();
            gameNotificationHud <- (new NoGameGameNotificationHud.noGameGameNotificationHud ())
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#cONSTRUCTOR, e))
        end)
      end
  end [@@warning "-20"]
let () = java_register_constructor "NoGameNotificationHudSingleton" (fun arguments -> Obj.repr (new noGameNotificationHudSingleton (Obj.obj arguments)))

let instance = (new noGameNotificationHudSingleton ())
let get_instance () = instance
let () = java_register_static "NoGameNotificationHudSingleton.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "NoGameNotificationHudSingleton.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



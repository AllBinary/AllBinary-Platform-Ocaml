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
(* import org.allbinary.game.layer.hud.event.GameNotificationEvent *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class gameNotification () =
  object
    val mutable stringList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method stringList = stringList
    method set_stringList value' = stringList <- value'
    val mutable timeList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method timeList = timeList
    method set_timeList value' = timeList <- value'
    val mutable colorList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method colorList = colorList
    method set_colorList value' = colorList <- value'
    

    method add : 'any3. string * int * 'any3 -> unit = fun ((string : string), (seconds : int), basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        if (not (stringList#contains (string))) then begin
            ignore (stringList#add (string));
            ignore (timeList#add (seconds));
            ignore (colorList#add ((Obj.magic basicColor)))
        end
        end [@@warning "-20"]
    

    method clear () : unit =
        begin
        ignore (stringList#clear ());
        ignore (timeList#clear ());
        ignore (colorList#clear ())
        end
    

    method getSize () : int =
        begin
        (stringList#size ())
        end

    initializer
      begin
        stringList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        timeList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        colorList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ()
      end
  end
let () = java_register_constructor "GameNotification" (fun arguments -> Obj.repr (new gameNotification (Obj.obj arguments)))

let nULL_GAME_NOTIFICATION_EVENT : GameNotificationEvent.gameNotificationEvent = ((new GameNotificationEvent.gameNotificationEvent ((NullUtil.getInstance ())#nULL_OBJECT, (StringUtil.getInstance ())#eMPTY_STRING, (Obj.obj (java_new "Integer" (Obj.repr (0)))), (BasicColorFactory.getInstance ())#rED, (BooleanFactory.getInstance ())#fALSE)) :> GameNotificationEvent.gameNotificationEvent)
let get_nULL_GAME_NOTIFICATION_EVENT () = nULL_GAME_NOTIFICATION_EVENT
let () = java_register_static "GameNotification.get_nULL_GAME_NOTIFICATION_EVENT" (fun _ -> Obj.repr (get_nULL_GAME_NOTIFICATION_EVENT ()))



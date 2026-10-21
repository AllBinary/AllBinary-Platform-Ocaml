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
(* package org.allbinary.input.automation.robot *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt *)
(* import java.awt.image.BufferedImage *)
(* import javax.help.HelpSet *)
(* import org.allbinary.input.automation.AbstractInputRobot *)
(* import org.allbinary.input.automation.PointFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)

let lIBRARY_NAME : string = "null"
let get_lIBRARY_NAME () = lIBRARY_NAME
let () = java_register_static "NullInputRobot.get_lIBRARY_NAME" (fun _ -> Obj.repr (get_lIBRARY_NAME ()))
let nAME : string = "NULL"
let get_nAME () = nAME
let () = java_register_static "NullInputRobot.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class nullInputRobot () =
  object (self)
    inherit AbstractInputRobot.abstractInputRobot ((Obj.magic 0))
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method getName () : string =
        begin
        nAME
        end [@@warning "-7"]
    

    method getHelpSet : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7"]
    

    method getMousePoint : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr (0, 0))))))
        end [@@warning "-7"]
    

    method keyPress ((keycode : int)) : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (("KeyCode: " ^ java_string_of (Obj.repr (keycode))), self, "keyPress"))
        end [@@warning "-7"]
    

    method keyRelease ((keycode : int)) : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (("KeyCode: " ^ java_string_of (Obj.repr (keycode))), self, "keyRelease"))
        end [@@warning "-7"]
    

    method mouseMove ((x : int), (y : int)) : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (((("X: " ^ java_string_of (Obj.repr (x))) ^ " Y: ") ^ java_string_of (Obj.repr (y))), self, "mouseMove"))
        end [@@warning "-7"]
    

    method mousePress ((buttons : int)) : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (("Buttons: " ^ java_string_of (Obj.repr (buttons))), self, "mousePress"))
        end [@@warning "-7"]
    

    method mouseRelease ((buttons : int)) : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (("Buttons: " ^ java_string_of (Obj.repr (buttons))), self, "mouseRelease"))
        end [@@warning "-7"]
    

    method createScreenCapture : 'any1 'return. 'any1 -> 'return = fun (_screenRect) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7-20"]
    

    method delay ((_ms : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getAutoDelay () : int =
        begin
        (-1)
        end [@@warning "-7"]
    

    method getPixelColor : 'return. int * int -> 'return = fun ((_x : int), (_y : int)) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7"]
    

    method isAutoWaitForIdle () : bool =
        begin
        false
        end [@@warning "-7"]
    

    method mouseWheel ((_wheelAmt : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setAutoDelay ((_ms : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setAutoWaitForIdle ((_isOn : bool)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        "DirectXWindowsInputRobot"
        end [@@warning "-7"]
    

    method waitForIdle () : unit =
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "NullInputRobot" (fun arguments -> Obj.repr (new nullInputRobot (Obj.obj arguments)))



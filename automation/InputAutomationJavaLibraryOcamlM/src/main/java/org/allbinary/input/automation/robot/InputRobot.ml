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
(* import org.allbinary.input.automation.PointHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)

let nAME : string = "Java Robot"
let get_nAME () = nAME
let () = java_register_static "InputRobot.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class inputRobot (graphicsDevice) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable robot : Obj.t = Obj.repr 0
    method robot : 'r. 'r = Obj.magic robot
    method set_robot : 'v. 'v -> unit = fun value' -> robot <- Obj.repr value'
    
    

    method getName () : string =
        begin
        nAME
        end
    

    method getHelpSet : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end
    

    method getMousePoint : 'return. unit -> 'return = fun () ->
        begin
        let point : Obj.t ref = ref ((Obj.repr ((MouseInfo.getPointerInfo ())#getLocation ()))) in ();
        (Obj.magic ((Obj.magic !point)))
        end
    

    method mouseMoveToTarget : 'any1. 'any1 * int * int -> unit = fun (rectangle, (x : int), (y : int)) ->
        let rectangle = Obj.repr rectangle in
        begin
        let point : Obj.t ref = ref ((Obj.repr (PointHelper.getCenterPoint ((Obj.magic rectangle))))) in ();
        ignore ((Obj.magic robot)#mouseMove (((Obj.magic !point)#x + x), ((Obj.magic !point)#y + y)));
        let message : string ref = ref ((java_string_of (Obj.repr (((((((new StringMaker.stringMaker ())#append ("Moved Mouse To: x: "))#appendint ((java_to_int (Obj.repr ((Obj.magic !point)#x)))))#append (" y: "))#appendint ((java_to_int (Obj.repr ((Obj.magic !point)#y)))))#append (" in the middle of: "))#append (((StringUtil.getInstance ())#toString ((Obj.magic rectangle)))))))) in ();
        ignore ((Obj.magic logUtil)#putF (!message, self, "moveMouseToTarget"))
        end [@@warning "-20"]
    

    method mouseMove : 'any1. 'any1 -> unit = fun (point) ->
        let point = Obj.repr point in
        begin
        (self#mouseMove ((Obj.magic point)#x, (Obj.magic point)#y))
        end [@@warning "-20"]
    

    (* Java overload mouseMove(INT, INT) is not converted: OCaml has one method per name *)
    

    (* Java overload mouseMoveToTarget(Rectangle) is not converted: OCaml has one method per name *)
    

    method createScreenCapture : 'any1 'return. 'any1 -> 'return = fun (screenRect) ->
        let screenRect = Obj.repr screenRect in
        begin
        (Obj.magic (((Obj.magic robot)#createScreenCapture ((Obj.magic screenRect)))))
        end [@@warning "-20"]
    

    method delay ((ms : int)) : unit =
        begin
        ignore ((Obj.magic robot)#delay (ms))
        end
    

    method getAutoDelay () : int =
        begin
        ((Obj.magic robot)#getAutoDelay ())
        end
    

    method getPixelColor : 'return. int * int -> 'return = fun ((x : int), (y : int)) ->
        begin
        (Obj.magic (((Obj.magic robot)#getPixelColor (x, y))))
        end
    

    method isAutoWaitForIdle () : bool =
        begin
        ((Obj.magic robot)#isAutoWaitForIdle ())
        end
    

    method keyPress ((keycode : int)) : unit =
        begin
        ignore ((Obj.magic robot)#keyPress (keycode))
        end
    

    method keyRelease ((keycode : int)) : unit =
        begin
        ignore ((Obj.magic robot)#keyRelease (keycode))
        end
    

    (* Java overload mouseMove(Integer, Integer) is not converted: OCaml has one method per name *)
    

    method mousePress ((buttons : int)) : unit =
        begin
        ignore ((Obj.magic robot)#mousePress (buttons))
        end
    

    method mouseRelease ((buttons : int)) : unit =
        begin
        ignore ((Obj.magic robot)#mouseRelease (buttons))
        end
    

    method mouseWheel ((wheelAmt : int)) : unit =
        begin
        ignore ((Obj.magic robot)#mouseWheel (wheelAmt))
        end
    

    method setAutoDelay ((ms : int)) : unit =
        begin
        ignore ((Obj.magic robot)#setAutoDelay (ms))
        end
    

    method setAutoWaitForIdle ((isOn : bool)) : unit =
        begin
        ignore ((Obj.magic robot)#setAutoWaitForIdle (isOn))
        end
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr (Obj.magic robot)))
        end
    

    method waitForIdle () : unit =
        begin
        ignore ((Obj.magic robot)#waitForIdle ())
        end
    

    method on () : unit =
        begin
        ()
        end
    

    method off () : unit =
        begin
        ()
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        robot <- Obj.repr ((new Robot.robot (graphicsDevice)))
      end
  end [@@warning "-20"]
let () = java_register_constructor "InputRobot" (fun arguments -> Obj.repr (new inputRobot (Obj.obj arguments)))



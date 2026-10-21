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
(* package org.allbinary.input.automation *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt *)
(* import javax.help.HelpSet *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class abstractInputRobot (helpSet_arg) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable helpSet : Obj.t = Obj.repr 0
    method helpSet : 'r. 'r = Obj.magic helpSet
    method set_helpSet : 'v. 'v -> unit = fun value' -> helpSet <- Obj.repr value'
    
    

    method getHelpSet : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic helpSet)))
        end
    

    method mouseMove : 'any1. 'any1 -> unit = fun (point) ->
        let point = Obj.repr point in
        begin
        (self#mouseMove ((Obj.magic point)#x, (Obj.magic point)#y));
        ignore ((Obj.magic logUtil)#putF (((("Moved Mouse To: x: " ^ java_string_of (Obj.repr ((Obj.magic point)#x))) ^ " y: ") ^ java_string_of (Obj.repr ((Obj.magic point)#y))), self, "moveMouse"))
        end [@@warning "-20"]
    

    method mouseMoveToTarget : 'any1. 'any1 * int * int -> unit = fun (rectangle, (x : int), (y : int)) ->
        let rectangle = Obj.repr rectangle in
        begin
        let point : Obj.t ref = ref ((Obj.repr (PointHelper.getCenterPoint ((Obj.magic rectangle))))) in ();
        (self#mouseMove (((Obj.magic !point)#x + x), ((Obj.magic !point)#y + y)));
        ignore ((Obj.magic logUtil)#putF (((((("Moved Mouse To: x: " ^ java_string_of (Obj.repr ((Obj.magic !point)#x))) ^ " y: ") ^ java_string_of (Obj.repr ((Obj.magic !point)#y))) ^ " in the middle of: ") ^ java_string_of (Obj.repr ((Obj.magic rectangle)))), self, "moveMouseToTarget"))
        end [@@warning "-20"]
    

    (* Java overload mouseMoveToTarget(Rectangle) is not converted: OCaml has one method per name *)
    

    (* Java overload mouseMove(Integer, Integer) is not converted: OCaml has one method per name *)
    

    method setHelpSet : 'any1. 'any1 -> unit = fun (helpSet_arg) ->
        let helpSet_arg = Obj.repr helpSet_arg in
        begin
        helpSet <- Obj.repr ((Obj.magic helpSet_arg))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        helpSet <- (Obj.repr (Obj.magic 0));
        ();
        (self#setHelpSet (helpSet_arg))
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbstractInputRobot" (fun arguments -> Obj.repr (new abstractInputRobot (Obj.obj arguments)))



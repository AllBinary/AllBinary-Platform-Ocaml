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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.lcdui.Graphics *)

class testInputExample () =
  object
    val mutable testValue : int = 0
    method testValue = testValue
    method set_testValue value' = testValue <- value'
    

    method up () : unit =
        begin
        ()
        end
    

    method down () : unit =
        begin
        ()
        end
    

    method left () : unit =
        begin
        testValue <- testValue + 1
        end
    

    method right () : unit =
        begin
        testValue <- testValue - 1
        end
    

    method strafeLeft () : unit =
        begin
        ()
        end
    

    method strafeRight () : unit =
        begin
        ()
        end
    

    method paint : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-20"]
    

    method paintThreed : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        testValue <- 0;
        ()
      end
  end
let () = java_register_constructor "TestInputExample" (fun arguments -> Obj.repr (new testInputExample (Obj.obj arguments)))



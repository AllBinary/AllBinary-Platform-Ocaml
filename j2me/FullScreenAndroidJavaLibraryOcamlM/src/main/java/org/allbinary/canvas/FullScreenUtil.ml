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
(* package org.allbinary.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import javax.microedition.lcdui.CommandListener *)

class fullScreenUtil () =
  object (self)
    

    method initOnRun : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_fullScreenInterface, _commandListener) ->
        begin
        ()
        end [@@warning "-20"]
    

    method init : 'any1. 'any1 -> unit = fun (_fullScreenInterface) ->
        begin
        ()
        end [@@warning "-20"]
    

    method isScreenChange ((_isFullScreen : bool)) : bool =
        begin
        false
        end
    

    method isScreenChangeCanvas : 'any1. 'any1 -> bool = fun (fullScreenInterface) ->
        let fullScreenInterface = Obj.repr fullScreenInterface in
        begin
        (self#isScreenChange (((Obj.magic fullScreenInterface)#isFullScreenMode ())))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "FullScreenUtil" (fun arguments -> Obj.repr (new fullScreenUtil (Obj.obj arguments)))

let instance = (new fullScreenUtil ())
let get_instance () = instance
let () = java_register_static "FullScreenUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "FullScreenUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



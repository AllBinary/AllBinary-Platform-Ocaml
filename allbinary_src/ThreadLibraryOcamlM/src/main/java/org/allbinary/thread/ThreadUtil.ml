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
(* package org.allbinary.thread *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)

class threadUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable jOIN : string = ""
    method jOIN = jOIN
    method set_jOIN value' = jOIN <- value'
    

    method isRunning ((thread : java_thread)) : bool =
        try
        begin
        if ((thread != (Obj.magic 0)) && (thread#isAlive ())) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method join ((thread : java_thread)) : unit =
        begin
        if ((getInstance ())#isRunning (thread)) then begin
            ignore ((Obj.magic logUtil)#putF ("Waiting for Thread To Join/End", self, jOIN));
            ignore (thread#join ())
        end
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        jOIN <- "join";
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ThreadUtil" (fun arguments -> Obj.repr (new threadUtil (Obj.obj arguments)))

let instance = (new threadUtil ())
let get_instance () = instance
let () = java_register_static "ThreadUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ThreadUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



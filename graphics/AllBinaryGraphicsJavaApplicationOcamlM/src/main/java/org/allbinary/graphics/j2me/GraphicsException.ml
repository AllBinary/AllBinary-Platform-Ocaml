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
(* package org.allbinary.graphics.j2me *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.GuiLog *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class graphicsException ((msg : string), (obj : Obj.t), (method_ : string)) =
  object (self)
    inherit Exception.exception (msg)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable guiLog : GuiLog.guiLog = (Obj.magic 0)
    method guiLog = guiLog
    method set_guiLog value' = guiLog <- value'
    
    

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        guiLog <- ((GuiLog.getInstance ()) :> GuiLog.guiLog);
        ();
        (* super(...) is the inherit clause *) ();
        (try
            ignore (guiLog#showDialog (msg));
            ignore ((Obj.magic logUtil)#put (msg, obj, method_, self))
        with e -> begin
            ()
        end)
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "GraphicsException" (fun arguments -> Obj.repr (new graphicsException (Obj.obj arguments)))



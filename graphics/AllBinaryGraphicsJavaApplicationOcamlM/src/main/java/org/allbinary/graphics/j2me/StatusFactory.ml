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
(* import org.allbinary.logic.communication.log.LogUtil *)

class statusFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable sETSTATUS : string = ""
    method sETSTATUS = sETSTATUS
    method set_sETSTATUS value' = sETSTATUS <- value'
    val mutable sTATUS_LABEL : string = ""
    method sTATUS_LABEL = sTATUS_LABEL
    method set_sTATUS_LABEL value' = sTATUS_LABEL <- value'
    

    method setStatusNoLog ((status : string)) : unit =
        begin
        ignore ((Obj.magic (java_call_static "MyFrame.get_statusJLabel" (Obj.repr ())))#setText (status))
        end
    

    method setStatus ((status : string)) : unit =
        begin
        (self#setStatusNoLog (status));
        ignore ((Obj.magic logUtil)#putF ((sTATUS_LABEL ^ status), self, sETSTATUS))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        sETSTATUS <- "setStatus";
        sTATUS_LABEL <- "Status: ";
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "StatusFactory" (fun arguments -> Obj.repr (new statusFactory (Obj.obj arguments)))

let instance = (new statusFactory ())
let get_instance () = instance
let () = java_register_static "StatusFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "StatusFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



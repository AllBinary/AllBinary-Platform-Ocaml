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
(* package org.allbinary.midlet *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.midlet.MIDlet *)
(* import org.allbinary.AppletUtil *)
(* import org.allbinary.J2MEUtil *)
(* import org.allbinary.canvas.Processor *)

class midletExitProcessorFactory () =
  object
    

    method getExitInstance : 'any1. 'any1 -> Processor.processor = fun (midlet) ->
        let midlet = Obj.repr midlet in
        try
        begin
        if ((Obj.magic (java_call_static "AppletUtil.isAppletLoader" (Obj.repr ((Obj.magic midlet))))) || (J2MEUtil.isJ2ME ())) then begin
            raise (Java_return (Obj.repr ((Processor.getInstance ()))))
        end else begin
            raise (Java_return (Obj.repr ((new MidletExitProcessor.midletExitProcessor ((Obj.magic midlet))))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "MidletExitProcessorFactory" (fun arguments -> Obj.repr (new midletExitProcessorFactory (Obj.obj arguments)))

let instance = (new midletExitProcessorFactory ())
let get_instance () = instance
let () = java_register_static "MidletExitProcessorFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "MidletExitProcessorFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



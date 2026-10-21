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
(* package org.allbinary.graphics.displayable.screen *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Displayable *)
(* import org.allbinary.J2MEUtil *)
(* import org.allbinary.canvas.Processor *)

class screenRepaintProcessorFactory () =
  object
    
    

    method create : 'any1. 'any1 -> Processor.processor = fun (displayable) ->
        let displayable = Obj.repr displayable in
        try
        begin
        if (not (J2MEUtil.isJ2ME ())) then begin
            raise (Java_return (Obj.repr ((new ScreenRepaintProcessor.screenRepaintProcessor ((Obj.magic displayable))))))
        end else begin
            raise (Java_return (Obj.repr ((Processor.getInstance ()))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ScreenRepaintProcessorFactory" (fun arguments -> Obj.repr (new screenRepaintProcessorFactory (Obj.obj arguments)))

let instance = (new screenRepaintProcessorFactory ())
let get_instance () = instance
let () = java_register_static "ScreenRepaintProcessorFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ScreenRepaintProcessorFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



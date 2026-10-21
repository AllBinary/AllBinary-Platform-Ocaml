(*

  AllBinary Open License Version 1
  Copyright (c) 2022 AllBinary
  
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
(* import java.awt.Desktop *)
(* import java.net.URI *)
(* import javax.microedition.lcdui.Canvas *)
(* import javax.microedition.lcdui.Command *)
(* import javax.microedition.lcdui.CommandListener *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class webCommandProcessor () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable aboutCommandProcessor : AboutCommandProcessor.aboutCommandProcessor = (Obj.magic 0)
    method aboutCommandProcessor = aboutCommandProcessor
    method set_aboutCommandProcessor value' = aboutCommandProcessor <- value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    

    method process : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (_midletCommandListener, _command, _canvas) ->
        begin
        (try
            if ((Desktop.isDesktopSupported ()) && ((Desktop.getDesktop ())#isSupported ((Desktop.get_action ())#bROWSE))) then begin
                ignore ((Desktop.getDesktop ())#browse ((new URI.uRI ((Obj.magic (list#removeAt (0)))))))
            end
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#pROCESS, e))
        end)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        aboutCommandProcessor <- ((AboutCommandProcessor.getInstance ()) :> AboutCommandProcessor.aboutCommandProcessor);
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "WebCommandProcessor" (fun arguments -> Obj.repr (new webCommandProcessor (Obj.obj arguments)))

let instance = (new webCommandProcessor ())
let get_instance () = instance
let () = java_register_static "WebCommandProcessor.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "WebCommandProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



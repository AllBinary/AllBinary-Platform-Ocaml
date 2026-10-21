(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
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
(* import javax.microedition.lcdui.Command *)
(* import javax.microedition.lcdui.CommandListener *)
(* import javax.microedition.lcdui.Form *)
(* import javax.microedition.lcdui.NullCommandListener *)
(* import org.allbinary.canvas.Processor *)
(* import org.allbinary.game.displayable.canvas.MenuListener *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.displayable.command.MyCommandInterface *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.util.ABStack *)

let nULL_COMMAND_FORM : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_nULL_COMMAND_FORM () = !nULL_COMMAND_FORM
let set_nULL_COMMAND_FORM value' = nULL_COMMAND_FORM := value'
let () = java_register_static "CommandForm.get_nULL_COMMAND_FORM" (fun _ -> Obj.repr (get_nULL_COMMAND_FORM ()))
class commandForm (_commandListener, (formTitle : string), (_backgrounBasicColor : BasicColor.basicColor), (_foregroundBasicColor : BasicColor.basicColor)) =
  object (self)
    inherit Form.form (formTitle) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable repaintProcessor : Processor.processor = (Obj.magic 0)
    method repaintProcessor = repaintProcessor
    method set_repaintProcessor value' = repaintProcessor <- value'
    val mutable commandStack : Obj.t = Obj.repr 0
    method commandStack : 'r. 'r = Obj.magic commandStack
    method set_commandStack : 'v. 'v -> unit = fun value' -> commandStack <- Obj.repr value'
    
    

    method initCommands : 'any1. 'any1 -> unit = fun (_cmdListener) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method open_ () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "open"))
        end [@@warning "-7"]
    

    method close () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#cLOSE))
        end [@@warning "-7"]
    

    method update () : unit =
        begin
        ignore (repaintProcessor#process ())
        end [@@warning "-7"]
    

    method getSourceId () : int =
        begin
        0
        end [@@warning "-7"]
    

    method addCommand : 'any1. 'any1 -> unit = fun (command) ->
        let command = Obj.repr command in
        begin
        ignore ((Obj.magic commandStack)#push ((Obj.magic command)));
        ignore (super#addCommand ((Obj.magic command)))
        end [@@warning "-7-20"]
    

    method removeAllCommands () : unit =
        begin
        let size : int ref = ref (((Obj.magic commandStack)#size ())) in ();
        for _index = 0 to !size - 1 do
            ignore (super#removeCommand ((Obj.magic ((Obj.magic commandStack)#pop ()))))
        done
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        repaintProcessor <- (((ScreenRepaintProcessorFactory.getInstance ())#create (self)) :> Processor.processor);
        ();
        ();
        (* super(...) is the inherit clause *) ();
        commandStack <- Obj.repr (((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createStack ()));
        (try
            ignore (repaintProcessor#process ())
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#cONSTRUCTOR, e))
        end)
      end
  end [@@warning "-20"]
let () = java_register_constructor "CommandForm" (fun arguments -> Obj.repr (new commandForm (Obj.obj arguments)))

let getNullCommandForm () =
        begin
        if ((Obj.repr !nULL_COMMAND_FORM) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            nULL_COMMAND_FORM := (new commandForm ((NullCommandListener.get_nULL_COMMAND_LISTENER ()), (StringUtil.getInstance ())#eMPTY_STRING, (BasicColorFactory.getInstance ())#bLACK, (BasicColorFactory.getInstance ())#wHITE))
        end;
        (Obj.magic !nULL_COMMAND_FORM)
        end
let () = java_register_static "CommandForm.getNullCommandForm" (fun arguments -> Obj.repr (getNullCommandForm (Obj.obj arguments)))



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
(* package org.allbinary.graphics.j2me.workarea.tools *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.j2me.StatusFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class toolFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable selectedTool : Obj.t = Obj.repr 0
    method selectedTool : 'r. 'r = Obj.magic selectedTool
    method set_selectedTool : 'v. 'v -> unit = fun value' -> selectedTool <- Obj.repr value'
    val mutable tool : string = ""
    method tool = tool
    method set_tool value' = tool <- value'
    val mutable sELECTED_LABEL : string = ""
    method sELECTED_LABEL = sELECTED_LABEL
    method set_sELECTED_LABEL value' = sELECTED_LABEL <- value'
    

    method setSelectedTool ((tool_arg : string)) : unit =
        begin
        (try
            ignore ((Obj.magic (java_call_static "StatusFactory.getInstance" (Obj.repr ())))#setStatus ((sELECTED_LABEL ^ tool_arg)));
            tool <- tool_arg
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "setSelectionTool", e))
        end)
        end
    

    method getSelectedToolFactory : 'return. unit -> 'return = fun () ->
        try
        begin
        ignore ((Obj.magic (java_call_static "StatusFactory.getInstance" (Obj.repr ())))#setStatus (("Tool In Use: " ^ tool)));
        if (tool <> (Obj.magic 0)) then begin
            selectedTool <- Obj.repr (((Obj.magic (java_call_static "GraphicItemFactory.getInstance" (Obj.repr ())))#getInstance (tool)));
            ignore ((Obj.magic logUtil)#putF (("New Tool: " ^ java_string_of (Obj.repr ((Obj.magic selectedTool)))), self, "getSelectedToolFactory"));
            raise (Java_return (Obj.repr ((Obj.magic selectedTool))))
        end else begin
            raise (Java_return (Obj.repr ((Obj.magic 0))))
        end
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        selectedTool <- (Obj.repr (Obj.magic 0));
        tool <- (Obj.magic 0);
        sELECTED_LABEL <- "Selected: ";
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ToolFactory" (fun arguments -> Obj.repr (new toolFactory (Obj.obj arguments)))

let instance = (new toolFactory ())
let get_instance () = instance
let () = java_register_static "ToolFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ToolFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



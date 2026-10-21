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
(* package org.allbinary.graphics.displayable.command *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Command *)
(* import org.allbinary.logic.string.StringUtil *)

class myCommandsFactory () =
  object
    val mutable nO_COMMAND : Obj.t = Obj.repr 0
    method nO_COMMAND : 'r. 'r = Obj.magic nO_COMMAND
    method set_nO_COMMAND : 'v. 'v -> unit = fun value' -> nO_COMMAND <- Obj.repr value'
    val mutable gAUGE_CHANGE : Obj.t = Obj.repr 0
    method gAUGE_CHANGE : 'r. 'r = Obj.magic gAUGE_CHANGE
    method set_gAUGE_CHANGE : 'v. 'v -> unit = fun value' -> gAUGE_CHANGE <- Obj.repr value'
    val mutable sET_DISPLAYABLE : Obj.t = Obj.repr 0
    method sET_DISPLAYABLE : 'r. 'r = Obj.magic sET_DISPLAYABLE
    method set_sET_DISPLAYABLE : 'v. 'v -> unit = fun value' -> sET_DISPLAYABLE <- Obj.repr value'
    val mutable pAUSE_COMMAND : Obj.t = Obj.repr 0
    method pAUSE_COMMAND : 'r. 'r = Obj.magic pAUSE_COMMAND
    method set_pAUSE_COMMAND : 'v. 'v -> unit = fun value' -> pAUSE_COMMAND <- Obj.repr value'
    val mutable rESUME_COMMAND : Obj.t = Obj.repr 0
    method rESUME_COMMAND : 'r. 'r = Obj.magic rESUME_COMMAND
    method set_rESUME_COMMAND : 'v. 'v -> unit = fun value' -> rESUME_COMMAND <- Obj.repr value'
    

    initializer
      begin
        nO_COMMAND <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ((StringUtil.getInstance ())#eMPTY_STRING, (StringUtil.getInstance ())#eMPTY_STRING, (-1), (-1))))));
        gAUGE_CHANGE <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("GAUGE_CHANGE", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_iTEM" (Obj.repr ()))), 1)))));
        sET_DISPLAYABLE <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Display", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 2)))));
        pAUSE_COMMAND <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Pause", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 0)))));
        rESUME_COMMAND <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Resume", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 0)))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "MyCommandsFactory" (fun arguments -> Obj.repr (new myCommandsFactory (Obj.obj arguments)))

let instance = (new myCommandsFactory ())
let get_instance () = instance
let () = java_register_static "MyCommandsFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "MyCommandsFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



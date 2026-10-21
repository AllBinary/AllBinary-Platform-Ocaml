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
(* package org.allbinary.logic.util.event *)

open Allbinary_java [@@warning "-33"]

class eventStrings () =
  object
    val mutable pERFORMANCE_MESSAGE : string = ""
    method pERFORMANCE_MESSAGE = pERFORMANCE_MESSAGE
    method set_pERFORMANCE_MESSAGE value' = pERFORMANCE_MESSAGE <- value'
    val mutable tOTAL_LISTENERS : string = ""
    method tOTAL_LISTENERS = tOTAL_LISTENERS
    method set_tOTAL_LISTENERS value' = tOTAL_LISTENERS <- value'
    val mutable lISTENER_LABEL : string = ""
    method lISTENER_LABEL = lISTENER_LABEL
    method set_lISTENER_LABEL value' = lISTENER_LABEL <- value'
    val mutable fIRE_EVENT : string = ""
    method fIRE_EVENT = fIRE_EVENT
    method set_fIRE_EVENT value' = fIRE_EVENT <- value'

    initializer
      begin
        pERFORMANCE_MESSAGE <- "Use Custom onEvent Methods for needed optimization";
        tOTAL_LISTENERS <- "Total Listeners: ";
        lISTENER_LABEL <- " Listener: ";
        fIRE_EVENT <- "fireEvent";
        ()
      end
  end
let () = java_register_constructor "EventStrings" (fun arguments -> Obj.repr (new eventStrings (Obj.obj arguments)))

let instance = (new eventStrings ())
let get_instance () = instance
let () = java_register_static "EventStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "EventStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



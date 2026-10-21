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
(* package org.allbinary.logic.communication.log.config.type *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class logConfigTypeFactory () =
  object
    val mutable nO_DESCRIPTION : string = ""
    method nO_DESCRIPTION = nO_DESCRIPTION
    method set_nO_DESCRIPTION value' = nO_DESCRIPTION <- value'
    val mutable oS : Obj.t = Obj.repr 0
    method oS : 'r. 'r = Obj.magic oS
    method set_oS : 'v. 'v -> unit = fun value' -> oS <- Obj.repr value'
    val mutable fACTORYERROR : Obj.t = Obj.repr 0
    method fACTORYERROR : 'r. 'r = Obj.magic fACTORYERROR
    method set_fACTORYERROR : 'v. 'v -> unit = fun value' -> fACTORYERROR <- Obj.repr value'
    

    initializer
      begin
        nO_DESCRIPTION <- "No Description";
        oS <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Operating System", nO_DESCRIPTION)))));
        fACTORYERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Factory Error", nO_DESCRIPTION)))));
        ();
        ignore ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#add ((Obj.magic oS)));
        ignore ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#add ((Obj.magic fACTORYERROR)))
      end
  end [@@warning "-20"]
let () = java_register_constructor "LogConfigTypeFactory" (fun arguments -> Obj.repr (new logConfigTypeFactory (Obj.obj arguments)))

let instance = (new logConfigTypeFactory ())
let get_instance () = instance
let () = java_register_static "LogConfigTypeFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LogConfigTypeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



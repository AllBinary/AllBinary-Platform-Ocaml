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
(* package org.allbinary.logic.communication.log.config.type *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypes *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory *)

class logConfigTypeFactory () =
  object
    val mutable nO_DESCRIPTION : string = ""
    method nO_DESCRIPTION = nO_DESCRIPTION
    method set_nO_DESCRIPTION value' = nO_DESCRIPTION <- value'
    val mutable iNIT_SERVER : Obj.t = Obj.repr 0
    method iNIT_SERVER : 'r. 'r = Obj.magic iNIT_SERVER
    method set_iNIT_SERVER : 'v. 'v -> unit = fun value' -> iNIT_SERVER <- Obj.repr value'
    val mutable lOBBY_SERVER : Obj.t = Obj.repr 0
    method lOBBY_SERVER : 'r. 'r = Obj.magic lOBBY_SERVER
    method set_lOBBY_SERVER : 'v. 'v -> unit = fun value' -> lOBBY_SERVER <- Obj.repr value'
    val mutable gAME_SERVER : Obj.t = Obj.repr 0
    method gAME_SERVER : 'r. 'r = Obj.magic gAME_SERVER
    method set_gAME_SERVER : 'v. 'v -> unit = fun value' -> gAME_SERVER <- Obj.repr value'
    val mutable gAME_SIMULATOR : Obj.t = Obj.repr 0
    method gAME_SIMULATOR : 'r. 'r = Obj.magic gAME_SIMULATOR
    method set_gAME_SIMULATOR : 'v. 'v -> unit = fun value' -> gAME_SIMULATOR <- Obj.repr value'
    val mutable cUSTOM_TYPES : Obj.t = Obj.repr 0
    method cUSTOM_TYPES : 'r. 'r = Obj.magic cUSTOM_TYPES
    method set_cUSTOM_TYPES : 'v. 'v -> unit = fun value' -> cUSTOM_TYPES <- Obj.repr value'
    

    initializer
      begin
        nO_DESCRIPTION <- "No Description";
        iNIT_SERVER <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Init Server", nO_DESCRIPTION)))));
        lOBBY_SERVER <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Lobby Server", nO_DESCRIPTION)))));
        gAME_SERVER <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Game Server", nO_DESCRIPTION)))));
        gAME_SIMULATOR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Game Simulator", nO_DESCRIPTION)))));
        cUSTOM_TYPES <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Custom Types", nO_DESCRIPTION)))));
        ();
        ignore ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#add ((Obj.magic iNIT_SERVER)))
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



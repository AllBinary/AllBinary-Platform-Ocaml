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
    val mutable fILE : Obj.t = Obj.repr 0
    method fILE : 'r. 'r = Obj.magic fILE
    method set_fILE : 'v. 'v -> unit = fun value' -> fILE <- Obj.repr value'
    val mutable fILEERROR : Obj.t = Obj.repr 0
    method fILEERROR : 'r. 'r = Obj.magic fILEERROR
    method set_fILEERROR : 'v. 'v -> unit = fun value' -> fILEERROR <- Obj.repr value'
    val mutable iDLOGGING : Obj.t = Obj.repr 0
    method iDLOGGING : 'r. 'r = Obj.magic iDLOGGING
    method set_iDLOGGING : 'v. 'v -> unit = fun value' -> iDLOGGING <- Obj.repr value'
    val mutable rEPLACE : Obj.t = Obj.repr 0
    method rEPLACE : 'r. 'r = Obj.magic rEPLACE
    method set_rEPLACE : 'v. 'v -> unit = fun value' -> rEPLACE <- Obj.repr value'
    val mutable rEPLACE_INFO : Obj.t = Obj.repr 0
    method rEPLACE_INFO : 'r. 'r = Obj.magic rEPLACE_INFO
    method set_rEPLACE_INFO : 'v. 'v -> unit = fun value' -> rEPLACE_INFO <- Obj.repr value'
    val mutable rEPLACEERROR : Obj.t = Obj.repr 0
    method rEPLACEERROR : 'r. 'r = Obj.magic rEPLACEERROR
    method set_rEPLACEERROR : 'v. 'v -> unit = fun value' -> rEPLACEERROR <- Obj.repr value'
    

    initializer
      begin
        nO_DESCRIPTION <- "No Description";
        oS <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Operating System", nO_DESCRIPTION)))));
        fACTORYERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Factory Error", nO_DESCRIPTION)))));
        fILE <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("File", nO_DESCRIPTION)))));
        fILEERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("File Error", nO_DESCRIPTION)))));
        iDLOGGING <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("ID Logging", nO_DESCRIPTION)))));
        rEPLACE <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Replace", nO_DESCRIPTION)))));
        rEPLACE_INFO <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Replace Info", nO_DESCRIPTION)))));
        rEPLACEERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Replace Error", nO_DESCRIPTION)))));
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



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
(* package org.allbinary.logic.communication.http *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.string.CommonSeps *)

class httpData () =
  object
    val mutable eQUALS : string = ""
    method eQUALS = eQUALS
    method set_eQUALS value' = eQUALS <- value'
    val mutable pARAM_SEP : string = ""
    method pARAM_SEP = pARAM_SEP
    method set_pARAM_SEP value' = pARAM_SEP <- value'
    val mutable uRL_PARAM_SEP : string = ""
    method uRL_PARAM_SEP = uRL_PARAM_SEP
    method set_uRL_PARAM_SEP value' = uRL_PARAM_SEP <- value'
    val mutable uRL_LABEL : string = ""
    method uRL_LABEL = uRL_LABEL
    method set_uRL_LABEL value' = uRL_LABEL <- value'
    

    initializer
      begin
        ();
        ();
        ();
        uRL_LABEL <- "Url: ";
        ();
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        eQUALS <- !commonSeps#eQUALS;
        pARAM_SEP <- !commonSeps#aMPERSAND;
        uRL_PARAM_SEP <- !commonSeps#qUESTION
      end
  end
let () = java_register_constructor "HttpData" (fun arguments -> Obj.repr (new httpData (Obj.obj arguments)))

let instance = (new httpData ())
let get_instance () = instance
let () = java_register_static "HttpData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "HttpData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



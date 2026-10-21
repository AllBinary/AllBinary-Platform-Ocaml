(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.java.runtime.process.git *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.File *)
(* import java.io.IOException *)
(* import java.nio.charset.StandardCharsets *)
(* import java.util.ArrayList *)
(* import java.util.List *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.AbFileNativeUtil *)
(* import org.allbinary.logic.io.file.directory.TrackedStrings *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonStrings *)

class gitProcessHelper () =
  object (self)
    val mutable trackedStrings : TrackedStrings.trackedStrings = (Obj.magic 0)
    method trackedStrings = trackedStrings
    method set_trackedStrings value' = trackedStrings <- value'
    
    

    method trackedFiles : 'return. string * string -> 'return = fun ((rootAsString : string), (pathspec : string)) ->
        begin
        (Obj.magic ((self#trackedFiles (rootAsString, pathspec, ".java"))))
        end
    

    (* Java overload trackedFiles(String, String, String) is not converted: OCaml has one method per name *)
    

    method isTracked : 'any1. 'any1 -> bool = fun (file) ->
        let file = Obj.repr file in
        begin
        (try
            let nativeFile : Obj.t ref = ref ((Obj.repr (AbFileNativeUtil.get ((Obj.magic file))))) in ();
            let parentFile : Obj.t ref = ref ((Obj.repr ((Obj.magic !nativeFile)#getParentFile ()))) in ();
            let process : Obj.t ref = ref ((Obj.repr (((new ProcessBuilder.processBuilder (trackedStrings#gIT_COMMAND, trackedStrings#cHANGE_DIRECTORY_OPTION, ((Obj.magic !parentFile)#getPath ()), trackedStrings#lIST_FILES_COMMAND, trackedStrings#eRROR_UNMATCH_OPTION, trackedStrings#pATHSPEC_SEPARATOR, ((Obj.magic !nativeFile)#getName ())))#redirectErrorStream (true))#start ()))) in ();
            ignore (((Obj.magic !process)#getInputStream ())#readAllBytes ());
            (((Obj.magic !process)#waitFor ()) == 0)
        with e -> begin
            false
        end)
        end [@@warning "-20"]

    initializer
      begin
        trackedStrings <- ((TrackedStrings.getInstance ()) :> TrackedStrings.trackedStrings);
        ();
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        let tHIS_IS_SLOW : string ref = ref ("This is slow consider path exclusion instead") in ();
        ignore ((Obj.magic !logUtil)#putF (!tHIS_IS_SLOW, self, !commonStrings#cONSTRUCTOR))
      end
  end
let () = java_register_constructor "GitProcessHelper" (fun arguments -> Obj.repr (new gitProcessHelper (Obj.obj arguments)))

let instance = (new gitProcessHelper ())
let get_instance () = instance
let () = java_register_static "GitProcessHelper.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GitProcessHelper.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



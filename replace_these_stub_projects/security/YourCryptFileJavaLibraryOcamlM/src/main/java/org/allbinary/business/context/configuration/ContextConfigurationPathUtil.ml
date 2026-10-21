(* Generated Code Do Not Modify *)
(* package org.allbinary.business.context.configuration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.path.AbPath *)


let getAbFile : 'return. string -> 'return = fun ((_contextName : string)) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end

and getAbPath ((_contextName : string)) : AbPath.abPath =
        begin
        ((Obj.magic 0) :> AbPath.abPath)
        end

and getPath () : string =
        begin
        (Obj.magic 0)
        end

and getFileName ((_contextName : string)) : string =
        begin
        (Obj.magic 0)
        end

let () = java_register_static "ContextConfigurationPathUtil.getAbFile" (fun arguments -> Obj.repr (getAbFile (Obj.obj arguments)))
let () = java_register_static "ContextConfigurationPathUtil.getAbPath" (fun arguments -> Obj.repr (getAbPath (Obj.obj arguments)))
let () = java_register_static "ContextConfigurationPathUtil.getPath" (fun arguments -> Obj.repr (getPath (Obj.obj arguments)))
let () = java_register_static "ContextConfigurationPathUtil.getFileName" (fun arguments -> Obj.repr (getFileName (Obj.obj arguments)))
class contextConfigurationPathUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ContextConfigurationPathUtil" (fun arguments -> Obj.repr (new contextConfigurationPathUtil (Obj.obj arguments)))



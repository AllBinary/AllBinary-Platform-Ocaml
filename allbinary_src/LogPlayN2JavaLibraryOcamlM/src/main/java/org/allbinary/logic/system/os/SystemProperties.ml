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
(* package org.allbinary.logic.system.os *)

open Allbinary_java [@@warning "-33"]
(* import jsinterop.annotations.JsType *)

class systemProperties () =
  object
    val mutable oS_NAME : string = ""
    method oS_NAME = oS_NAME
    method set_oS_NAME value' = oS_NAME <- value'
    val mutable oS_ARCH : string = ""
    method oS_ARCH = oS_ARCH
    method set_oS_ARCH value' = oS_ARCH <- value'
    val mutable oS_VERSION : string = ""
    method oS_VERSION = oS_VERSION
    method set_oS_VERSION value' = oS_VERSION <- value'
    
    

    method getName () : string =
        begin
        oS_NAME
        end
    

    method getArch () : string =
        begin
        oS_ARCH
        end
    

    method getVersion () : string =
        begin
        oS_VERSION
        end
    

    method getUserHomePath () : string =
        begin
        raise (Failure ("RuntimeException"))
        end

    initializer
      begin
        oS_NAME <- "os.name";
        oS_ARCH <- "os.arch";
        oS_VERSION <- "os.version";
        ();
        ()
      end
  end
let () = java_register_constructor "SystemProperties" (fun arguments -> Obj.repr (new systemProperties (Obj.obj arguments)))

let instance = (new systemProperties ())
let get_instance () = instance
let () = java_register_static "SystemProperties.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "SystemProperties.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



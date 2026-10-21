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
(* package org.allbinary.logic.system.loader *)

open Allbinary_java [@@warning "-33"]

class nativeLibraryClassLoader (parent) =
  object
    inherit ClassLoader.classLoader (parent)
    val mutable message : string = ""
    method message = message
    method set_message value' = message <- value'
    

    initializer
      begin
        message <- "This Class Loader Does Not Load Classes - Only For Loading and Unloading of Native Libraries";
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "NativeLibraryClassLoader" (fun arguments -> Obj.repr (new nativeLibraryClassLoader (Obj.obj arguments)))



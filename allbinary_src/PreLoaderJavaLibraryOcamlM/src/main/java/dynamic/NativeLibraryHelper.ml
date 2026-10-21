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
(* package dynamic *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class nativeLibraryHelper ((library_arg : string)) =
  object
    val mutable library : string = ""
    method library = library
    method set_library value' = library <- value'
    
    

    method load () : unit =
        begin
        ignore (Obj.magic (java_call_static "System.loadLibrary" (Obj.repr (library))))
        end

    initializer
      begin
        ();
        ();
        library <- library_arg
      end
  end
let () = java_register_constructor "NativeLibraryHelper" (fun arguments -> Obj.repr (new nativeLibraryHelper (Obj.obj arguments)))



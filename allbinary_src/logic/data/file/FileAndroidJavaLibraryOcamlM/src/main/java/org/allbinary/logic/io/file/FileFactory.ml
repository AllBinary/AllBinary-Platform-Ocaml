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
(* package org.allbinary.logic.io.file *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.FileNotFoundException *)
(* import android.content.Context *)
(* import org.allbinary.data.resource.ResourceUtil *)

class fileFactory (context_arg) =
  object
    val mutable context : Obj.t = Obj.repr 0
    method context : 'r. 'r = Obj.magic context
    method set_context : 'v. 'v -> unit = fun value' -> context <- Obj.repr value'
    
    

    method isFile ((path : string)) : bool =
        begin
        (try
            ignore ((Obj.magic context)#openFileInput (path));
            true
        with e -> begin
            false
        end)
        end
    

    method getContext : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic context)))
        end
    

    method getFile : 'return. string -> 'return = fun ((filePath : string)) ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "AbFile.createAbFileFromRawPath" (Obj.repr (filePath))))))
        end
    

    (* Java overload getInstance(AbFile, String) is not converted: OCaml has one method per name *)

    initializer
      begin
        ();
        ();
        context <- Obj.repr (context_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "FileFactory" (fun arguments -> Obj.repr (new fileFactory (Obj.obj arguments)))

let sINGLETON = (new fileFactory (((Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ())))#getContext ())))
let get_sINGLETON () = sINGLETON
let () = java_register_static "FileFactory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "FileFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



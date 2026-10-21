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
(* package org.allbinary.logic.io *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import android.content.Context *)
(* import org.allbinary.data.resource.ResourceUtil *)
(* import org.allbinary.logic.NullUtil *)

let sINGLETON : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_sINGLETON () = !sINGLETON
let set_sINGLETON value' = sINGLETON := value'
let () = java_register_static "FileStreamFactory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))
class fileStreamFactory (context_arg) =
  object (self)
    val mutable context : Obj.t = (Obj.magic 0)
    method context = context
    method set_context value' = context <- value'
    
    

    method getFileInputStreamInstance : 'return. string * string -> 'return = fun ((_path : string), (fileName : string)) ->
        begin
        (Obj.magic ((Obj.obj (java_new "AbFileInputStream" (Obj.repr (((self#getContext ())#openFileInput (fileName))))))))
        end
    

    method getFileOutputStreamInstance : 'return. string * string -> 'return = fun ((_path : string), (fileName : string)) ->
        begin
        let context_arg : Obj.t ref = ref ((Obj.repr (self#getContext ()))) in ();
        ignore ((Obj.magic !context_arg)#deleteFile (fileName));
        (Obj.magic ((Obj.obj (java_new "AbFileOutputStream" (Obj.repr (((Obj.magic !context_arg)#openFileOutput (fileName, 0))))))))
        end
    

    method delete ((_path : string), (fileName : string)) : unit =
        begin
        ignore ((self#getContext ())#deleteFile (fileName))
        end
    

    method getContext : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic context)))
        end

    initializer
      begin
        ();
        ();
        context <- context_arg
      end
  end
let () = java_register_constructor "FileStreamFactory" (fun arguments -> Obj.repr (new fileStreamFactory (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !sINGLETON) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            sINGLETON := (new fileStreamFactory (((Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ())))#getContext ())))
        end;
        (Obj.magic !sINGLETON)
        end
let () = java_register_static "FileStreamFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



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
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.path.AbPath *)

let sINGLETON : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_sINGLETON () = !sINGLETON
let set_sINGLETON value' = sINGLETON := value'
let () = java_register_static "FileStreamFactory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))
class fileStreamFactory () =
  object
    
    

    method getFileInputStreamInstance : 'return. string * string -> 'return = fun ((path : string), (fileName : string)) ->
        begin
        let fILEABPATH : AbPath.abPath ref = ref (((new AbPath.abPath (path, fileName)) :> AbPath.abPath)) in ();
        let file : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr (!fILEABPATH)))))) in ();
        (Obj.magic ((Obj.obj (java_new "AbFileInputStream" (Obj.repr ((Obj.magic !file)))))))
        end
    

    method getFileOutputStreamInstance : 'return. string * string -> 'return = fun ((path : string), (fileName : string)) ->
        begin
        let fILEABPATH : AbPath.abPath ref = ref (((new AbPath.abPath (path, fileName)) :> AbPath.abPath)) in ();
        let file : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr (!fILEABPATH)))))) in ();
        if ((Obj.magic !file)#exists ()) then begin
            ignore ((Obj.magic !file)#delete ());
            ignore ((Obj.magic !file)#createNewFile ())
        end;
        (Obj.magic ((Obj.magic (java_call_static "AbFileOutputStream.createFromAbFile" (Obj.repr ((Obj.magic !file)))))))
        end
    

    method delete ((path : string), (fileName : string)) : unit =
        begin
        let fILEABPATH : AbPath.abPath ref = ref (((new AbPath.abPath (path, fileName)) :> AbPath.abPath)) in ();
        let file : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr (!fILEABPATH)))))) in ();
        ignore ((Obj.magic !file)#delete ())
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "FileStreamFactory" (fun arguments -> Obj.repr (new fileStreamFactory (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !sINGLETON) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            sINGLETON := (new fileStreamFactory ())
        end;
        (Obj.magic !sINGLETON)
        end
let () = java_register_static "FileStreamFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



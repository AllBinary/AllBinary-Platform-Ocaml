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
(* import java.io.BufferedReader *)
(* import java.io.BufferedWriter *)
(* import java.io.FileReader *)
(* import java.io.FileWriter *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.AbFileNativeUtil *)
(* import org.allbinary.logic.string.StringUtil *)


let copy : 'any1 'any2. 'any1 * 'any2 -> unit = fun (backupFile, backupFileBak) ->
        let backupFile = Obj.repr backupFile in
        let backupFileBak = Obj.repr backupFileBak in
        begin
        let line : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
        let tmpOut : java_buffered_writer ref = ref (((new java_buffered_writer (Obj.repr ((new java_file_writer (Obj.repr ((AbFileNativeUtil.get ((Obj.magic backupFileBak))))))))) :> java_buffered_writer)) in ();
        let tmpIn : java_buffered_reader ref = ref (((new java_buffered_reader (Obj.repr ((new java_file_reader (Obj.repr ((AbFileNativeUtil.get ((Obj.magic backupFile))))))))) :> java_buffered_reader)) in ();
        while (!tmpIn#ready ()) do
            line := (!tmpIn#readLine ());
            ignore (!tmpOut#write (!line, 0, (String.length !line)));
            ignore (!tmpOut#newLine ())
        done;
        ignore (!tmpOut#flush ())
        end [@@warning "-20"]

let () = java_register_static "BufferedIOUtil.copy" (fun arguments -> Obj.repr (copy (Obj.obj arguments)))
class bufferedIOUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "BufferedIOUtil" (fun arguments -> Obj.repr (new bufferedIOUtil (Obj.obj arguments)))



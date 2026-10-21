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
        let tmpOut : Obj.t ref = ref ((Obj.repr (new BufferedWriter.bufferedWriter ((new FileWriter.fileWriter ((AbFileNativeUtil.get ((Obj.magic backupFileBak))))))))) in ();
        let tmpIn : Obj.t ref = ref ((Obj.repr (new BufferedReader.bufferedReader ((new FileReader.fileReader ((AbFileNativeUtil.get ((Obj.magic backupFile))))))))) in ();
        while true do
            line := ((Obj.magic !tmpIn)#readLine ());
            if (!line = (Obj.magic 0)) then begin
                raise Java_break
            end;
            ignore ((Obj.magic !tmpOut)#write (!line, 0, (String.length !line)));
            ignore ((Obj.magic !tmpOut)#newLine ())
        done;
        ignore ((Obj.magic !tmpOut)#flush ())
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



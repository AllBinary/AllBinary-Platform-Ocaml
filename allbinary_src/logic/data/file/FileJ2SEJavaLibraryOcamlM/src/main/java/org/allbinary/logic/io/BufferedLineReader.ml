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
(* import java.io.FileReader *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.AbFileNativeUtil *)

class bufferedLineReader (file) =
  object
    val mutable tmpIn : Obj.t = Obj.repr 0
    method tmpIn : 'r. 'r = Obj.magic tmpIn
    method set_tmpIn : 'v. 'v -> unit = fun value' -> tmpIn <- Obj.repr value'
    
    

    method readUpToLines ((_readAheadIndex : int)) : unit =
        begin
        ()
        end
    

    method readLine () : string =
        begin
        ((Obj.magic tmpIn)#readLine ())
        end
    

    method getSize () : int =
        begin
        0
        end
    

    method getCurrent () : int =
        begin
        0
        end

    initializer
      begin
        ();
        ();
        tmpIn <- Obj.repr ((new BufferedReader.bufferedReader ((new FileReader.fileReader ((AbFileNativeUtil.get (file)))))))
      end
  end [@@warning "-20"]
let () = java_register_constructor "BufferedLineReader" (fun arguments -> Obj.repr (new bufferedLineReader (Obj.obj arguments)))



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
(* package org.allbinary.system *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringMaker *)


let getInfo () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let maxUtilizedMemoryAvailable : int ref = ref (((Runtime.getRuntime ())#maxMemory ())) in ();
        let memoryUsed : int ref = ref (((Runtime.getRuntime ())#totalMemory ())) in ();
        ignore (!stringBuffer#append ("APK Memory: Available: "));
        ignore (!stringBuffer#appendlong (!maxUtilizedMemoryAvailable));
        ignore (!stringBuffer#append ("/"));
        ignore (!stringBuffer#appendlong ((java_to_int (Obj.repr (((Runtime.getRuntime ())#maxMemory ()))))));
        ignore (!stringBuffer#append (" Used: "));
        ignore (!stringBuffer#appendlong (!memoryUsed));
        ignore (!stringBuffer#append (" Free: "));
        ignore (!stringBuffer#appendlong ((!maxUtilizedMemoryAvailable - !memoryUsed)));
        ignore (!stringBuffer#append ("/"));
        ignore (!stringBuffer#appendlong ((java_to_int (Obj.repr ((((Runtime.getRuntime ())#maxMemory ()) - !memoryUsed))))));
        (java_string_of (Obj.repr !stringBuffer))
        end

let () = java_register_static "Memory.getInfo" (fun arguments -> Obj.repr (getInfo (Obj.obj arguments)))
class memory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "Memory" (fun arguments -> Obj.repr (new memory (Obj.obj arguments)))



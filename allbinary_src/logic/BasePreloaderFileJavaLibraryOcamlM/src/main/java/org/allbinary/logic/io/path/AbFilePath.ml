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
(* package org.allbinary.logic.io.path *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringUtil *)

class abFilePath ((aPath : string)) =
  object (self)
    inherit AbPath.abPath ((StringUtil.getInstance ())#eMPTY_STRING, (StringUtil.getInstance ())#eMPTY_STRING)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        let pathData : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ()))))) in ();
        let abPathUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "PathUtil.getInstance" (Obj.repr ()))))) in ();
        schema <- (self#getSchema (aPath));
        ignore (self#setName (((Obj.magic !pathData)#getNameFromPath (aPath))));
        ignore (self#setPath (((Obj.magic !abPathUtil)#adjust ((self#getPathFromPath ((java_string_of (Obj.repr ((Obj.magic !abPathUtil)#removeNameFromPath (aPath))))))))))
      end
  end
let () = java_register_constructor "AbFilePath" (fun arguments -> Obj.repr (new abFilePath (Obj.obj arguments)))



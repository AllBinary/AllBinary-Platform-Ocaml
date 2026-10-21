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
(* package org.allbinary.logic.communication.http *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class acceptableResponse ((candidate : string), (tagName : string), (index : int)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ignore ((Obj.magic logUtil)#putF (tagName, self, commonStrings#cONSTRUCTOR));
        let acceptableResponseUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AcceptableResponseUtil.getInstance" (Obj.repr ()))))) in ();
        ignore ((Obj.magic !acceptableResponseUtil)#candidateVector#addAt (index, candidate));
        ignore ((Obj.magic !acceptableResponseUtil)#tagNameVector#addAt (index, tagName))
      end
  end [@@warning "-20"]
let () = java_register_constructor "AcceptableResponse" (fun arguments -> Obj.repr (new acceptableResponse (Obj.obj arguments)))



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
(* package org.allbinary.logic.communication.http.request *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.io.path.AbPathData *)

class httpRequestUtil () =
  object (self)
    
    

    method getLastSeparatorIndex ((requestPath : string)) : int =
        begin
        let beginIndex : int ref = ref ((java_string_last_index_of requestPath (Obj.repr ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR)))) in ();
        if (!beginIndex < 0) then begin
            beginIndex := (java_string_last_index_of requestPath (Obj.repr ("\\")))
        end;
        !beginIndex
        end
    

    method generateFileName ((requestPath : string)) : string =
        try
        begin
        let beginIndex : int ref = ref ((self#getLastSeparatorIndex (requestPath))) in ();
        if (!beginIndex < 0) then begin
            raise (Java_return (Obj.repr (requestPath)))
        end else begin
            raise (Java_return (Obj.repr ((String.sub requestPath ((!beginIndex + 1)) (String.length requestPath - ((!beginIndex + 1)))))))
        end
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "HttpRequestUtil" (fun arguments -> Obj.repr (new httpRequestUtil (Obj.obj arguments)))

let instance = (new httpRequestUtil ())
let get_instance () = instance
let () = java_register_static "HttpRequestUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "HttpRequestUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



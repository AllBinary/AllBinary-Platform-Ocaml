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
(* package org.allbinary.time *)

open Allbinary_java [@@warning "-33"]
(* import java.util.Calendar *)
(* import java.util.Date *)

class timeStampUtil () =
  object
    
    

    method getAsString () : string =
        begin
        let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
        let date : java_date ref = ref (((!calendar#getTime ()) :> java_date)) in ();
        (java_string_of (Obj.repr !date))
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "TimeStampUtil" (fun arguments -> Obj.repr (new timeStampUtil (Obj.obj arguments)))

let instance = (new timeStampUtil ())
let get_instance () = instance
let () = java_register_static "TimeStampUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TimeStampUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



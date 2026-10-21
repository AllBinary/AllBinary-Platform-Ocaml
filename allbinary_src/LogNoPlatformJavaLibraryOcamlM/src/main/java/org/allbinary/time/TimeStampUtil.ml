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
        raise (Failure ("RuntimeException"))
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



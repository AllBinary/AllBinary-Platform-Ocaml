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
(* package org.allbinary.logic.system.security.licensing.registration *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringMaker *)

class registrationConfiguration () =
  object (self)
    val mutable registrationCode : string = ""
    method registrationCode = registrationCode
    method set_registrationCode value' = registrationCode <- value'
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    
    

    method read () : unit =
        begin
        ()
        end
    

    method write () : unit =
        begin
        ()
        end
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Registration Code: "))#append ((self#getRegistrationCode ())))))
        end
    

    method setRegistrationCode ((registrationCode_arg : string)) : unit =
        begin
        registrationCode <- registrationCode_arg
        end
    

    method getRegistrationCode () : string =
        begin
        registrationCode
        end

    initializer
      begin
        registrationCode <- "No Registration Code";
        nAME <- "registrationid";
        ();
        ()
      end
  end
let () = java_register_constructor "RegistrationConfiguration" (fun arguments -> Obj.repr (new registrationConfiguration (Obj.obj arguments)))

let sINGLETON = (new registrationConfiguration ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "RegistrationConfiguration.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "RegistrationConfiguration.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



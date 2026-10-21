(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.control.crypt.file *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.InputStream *)
(* import org.allbinary.logic.io.path.AbPath *)

class cryptFileReader ((_decryptedExtension : string), (_encryptedExtension : string)) =
  object
    
    

    method get : 'any1. 'any1 -> string = fun (_fileAbPath) ->
        begin
        (Obj.magic 0)
        end [@@warning "-20"]
    

    method getInputStream : 'any1 'return. 'any1 -> 'return = fun (_fileAbPath) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "CryptFileReader" (fun arguments -> Obj.repr (new cryptFileReader (Obj.obj arguments)))



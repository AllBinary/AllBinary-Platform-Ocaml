(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.control.crypt.file *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.w3c.dom.Document *)

class cryptFileWriter ((_decryptedExtension : string), (_encryptedExtension : string)) =
  object
    
    

    method write : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_fileAbPath, _document) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "CryptFileWriter" (fun arguments -> Obj.repr (new cryptFileWriter (Obj.obj arguments)))



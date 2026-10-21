(*

  AllBinary Open License Version 1
  Copyright (c) 2022 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
  
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.data.tree.dom *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.ByteArrayOutputStream *)
(* import javax.xml.transform.stream.StreamResult *)
(* import javax.xml.transform.stream.StreamSource *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.path.AbPath *)

class abXslHelper () =
  object (self)
    

    method translate : 'any1 'any2. 'any1 * 'any2 -> string = fun (xslFile, xmlFile) ->
        let xslFile = Obj.repr xslFile in
        let xmlFile = Obj.repr xmlFile in
        begin
        (self#translate (((Obj.magic xslFile)#getAbsolutePath ()), ((Obj.magic xmlFile)#getAbsolutePath ())))
        end [@@warning "-20"]
    

    (* Java overload translate(AbPath, AbPath) is not converted: OCaml has one method per name *)
    

    (* Java overload translate(String, String) is not converted: OCaml has one method per name *)

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AbXslHelper" (fun arguments -> Obj.repr (new abXslHelper (Obj.obj arguments)))

let instance = (new abXslHelper ())
let get_instance () = instance
let () = java_register_static "AbXslHelper.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AbXslHelper.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



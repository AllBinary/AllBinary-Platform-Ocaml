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
(* package org.allbinary.logic.io.file.directory *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.FileFilter *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.FileFactory *)
(* import org.allbinary.logic.io.file.FileWrapperUtil *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class directory () =
  object (self)
    
    

    method create : 'any1. 'any1 -> bool = fun (directoryAbPath) ->
        let directoryAbPath = Obj.repr directoryAbPath in
        begin
        (self#create (((Obj.magic directoryAbPath)#toFileSystemString ())))
        end [@@warning "-20"]
    

    method remove : 'any1. 'any1 -> unit = fun (existingDirectoryAbPath) ->
        let existingDirectoryAbPath = Obj.repr existingDirectoryAbPath in
        begin
        (self#remove (((Obj.magic existingDirectoryAbPath)#toFileSystemString ())))
        end [@@warning "-20"]
    

    (* Java overload create(String) is not converted: OCaml has one method per name *)
    

    (* Java overload remove(String) is not converted: OCaml has one method per name *)
    

    method search : 'any1 'any2. 'any1 * 'any2 -> BasicArrayList.basicArrayList = fun (fileFilter, file) ->
        let fileFilter = Obj.repr fileFilter in
        let file = Obj.repr file in
        begin
        ((self#search ((Obj.magic fileFilter), (Obj.magic file), false)) :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]
    

    (* Java overload search(FileFilter, AbFile, BOOLEAN) is not converted: OCaml has one method per name *)
    

    (* Java overload search(AbFile) is not converted: OCaml has one method per name *)
    

    (* Java overload search(AbFile, BOOLEAN) is not converted: OCaml has one method per name *)
    

    (* Java overload search(String, AbFile) is not converted: OCaml has one method per name *)
    

    (* Java overload search(String, AbFile, BOOLEAN) is not converted: OCaml has one method per name *)
    

    (* Java overload search(INT, AbFile) is not converted: OCaml has one method per name *)
    

    (* Java overload search(INT, AbFile, BOOLEAN) is not converted: OCaml has one method per name *)

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "Directory" (fun arguments -> Obj.repr (new directory (Obj.obj arguments)))

let instance = (new directory ())
let get_instance () = instance
let () = java_register_static "Directory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "Directory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



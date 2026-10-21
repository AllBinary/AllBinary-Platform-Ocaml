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
(* package org.allbinary.business.init *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.io.file.directory.Directory *)
(* import org.allbinary.logic.io.path.AbPath *)

class initInfo2 () =
  object
    val mutable directory : Directory.directory = (Obj.magic 0)
    method directory = directory
    method set_directory value' = directory <- value'
    

    method isTestHtmlPathValid : 'any1. 'any1 -> bool = fun (value) ->
        let value = Obj.repr value in
        begin
        (directory#create ((Obj.magic value)))
        end [@@warning "-20"]
    

    method isMainPathValid : 'any1. 'any1 -> bool = fun (value) ->
        let value = Obj.repr value in
        begin
        (directory#create ((Obj.magic value)))
        end [@@warning "-20"]

    initializer
      begin
        directory <- ((Directory.getInstance ()) :> Directory.directory);
        ()
      end
  end
let () = java_register_constructor "InitInfo2" (fun arguments -> Obj.repr (new initInfo2 (Obj.obj arguments)))

let instance = (new initInfo2 ())
let get_instance () = instance
let () = java_register_static "InitInfo2.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "InitInfo2.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



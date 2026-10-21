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
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.util.BasicArrayList *)


let toString : 'any1. 'any1 -> string = fun (files) ->
        let files = Obj.repr files in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let nEW_LINE : string ref = ref ((CommonSeps.getInstance ())#nEW_LINE) in ();
        let size : int ref = ref (((Obj.magic files)#size ())) in ();
        for index = 0 to !size - 1 do
            let file : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic files)#get (index))))) in ();
            ignore (!stringBuffer#append (((Obj.magic !file)#getPath ())));
            ignore (!stringBuffer#append (!nEW_LINE))
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-20"]

let () = java_register_static "SubDirectory.toString" (fun arguments -> Obj.repr (toString (Obj.obj arguments)))
class subDirectory () =
  object
    val mutable directory : Directory.directory = (Obj.magic 0)
    method directory = directory
    method set_directory value' = directory <- value'
    
    

    method search : 'any1 'any2. 'any1 * 'any2 -> BasicArrayList.basicArrayList = fun (fileFilter, file) ->
        let fileFilter = Obj.repr fileFilter in
        let file = Obj.repr file in
        begin
        ((directory#search ((Obj.magic fileFilter), (Obj.magic file), true)) :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]
    

    (* Java overload search(AbFile) is not converted: OCaml has one method per name *)
    

    (* Java overload search(String, AbFile) is not converted: OCaml has one method per name *)
    

    (* Java overload search(INT, AbFile) is not converted: OCaml has one method per name *)

    initializer
      begin
        directory <- ((Directory.getInstance ()) :> Directory.directory);
        ();
        ()
      end
  end
let () = java_register_constructor "SubDirectory" (fun arguments -> Obj.repr (new subDirectory (Obj.obj arguments)))

let instance = (new subDirectory ())
let get_instance () = instance
let () = java_register_static "SubDirectory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "SubDirectory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



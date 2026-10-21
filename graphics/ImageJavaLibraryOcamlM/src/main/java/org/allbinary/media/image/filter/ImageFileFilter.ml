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
(* package org.allbinary.media.image.filter *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.File *)
(* import javax.swing.filechooser.FileFilter *)

class imageFileFilter () =
  object
    inherit FileFilter.fileFilter ()
    

    method accept : 'any1. 'any1 -> bool = fun (f) ->
        let f = Obj.repr f in
        try
        begin
        if ((Obj.magic f)#isDirectory ()) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        let s : string ref = ref (((Obj.magic f)#getName ())) in ();
        let i : int ref = ref ((java_string_last_index_of !s (Obj.repr ('.')))) in ();
        if ((!i > 0) && (!i < ((String.length !s) - 1))) then begin
            let ext : string ref = ref ((String.lowercase_ascii (String.sub !s ((!i + 1)) (String.length !s - ((!i + 1)))))) in ();
            if ((!ext = "jpg") || (!ext = "jpeg")) then begin
                raise (Java_return (Obj.repr (true)))
            end
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method getDescription () : string =
        begin
        "Accepts .jpg and .jpeg files"
        end [@@warning "-7"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ImageFileFilter" (fun arguments -> Obj.repr (new imageFileFilter (Obj.obj arguments)))



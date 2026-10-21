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
(* package org.allbinary.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class imageTypeUtil () =
  object
    val mutable pNG : string = ""
    method pNG = pNG
    method set_pNG value' = pNG <- value'
    val mutable jPG : string = ""
    method jPG = jPG
    method set_jPG value' = jPG <- value'
    val mutable gIF : string = ""
    method gIF = gIF
    method set_gIF value' = gIF <- value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    
    

    method isSupported ((mediaFileType : string)) : bool =
        let mediaFileType = ref mediaFileType in
        try
        begin
        mediaFileType := (String.lowercase_ascii !mediaFileType);
        for index = ((list#size ()) - 1) downto 0 do
            let name : string ref = ref ((Obj.magic (list#get (index)))) in ();
            if ((String.compare !mediaFileType (!name)) == 0) then begin
                raise (Java_return (Obj.repr (true)))
            end
        done;
        false
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        pNG <- "png";
        jPG <- "jpg";
        gIF <- "gif";
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ignore (list#add (jPG));
        ignore (list#add (gIF));
        ignore (list#add (pNG))
      end
  end
let () = java_register_constructor "ImageTypeUtil" (fun arguments -> Obj.repr (new imageTypeUtil (Obj.obj arguments)))

let sINGLETON = ref ((new imageTypeUtil ()))
let get_sINGLETON () = !sINGLETON
let set_sINGLETON value' = sINGLETON := value'
let () = java_register_static "ImageTypeUtil.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        !sINGLETON
        end
let () = java_register_static "ImageTypeUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



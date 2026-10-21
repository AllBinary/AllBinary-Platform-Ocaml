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
(* package org.allbinary.image.opengles *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class openGLESImageExclusionUtil () =
  object
    val mutable eXCLUSION : string = ""
    method eXCLUSION = eXCLUSION
    method set_eXCLUSION value' = eXCLUSION <- value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    
    

    method isCustomScaling : 'any1. 'any1 -> bool = fun (image) ->
        let image = Obj.repr image in
        try
        begin
        let imageName : string ref = ref (((Obj.magic image)#getName ())) in ();
        let isNormalScaling : bool ref = ref ((((list#size ()) = 0) || (String.starts_with ~prefix:(eXCLUSION) !imageName))) in ();
        if !isNormalScaling then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            let size : int ref = ref ((list#size ())) in ();
            let name : string ref = ref ("") in ();
            for index = 0 to !size - 1 do
                name := (Obj.magic (list#get (index)));
                if (String.starts_with ~prefix:(!name) !imageName) then begin
                    isNormalScaling := true
                end
            done
        end;
        if !isNormalScaling then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            raise (Java_return (Obj.repr (true)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        eXCLUSION <- "font";
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ()
      end
  end
let () = java_register_constructor "OpenGLESImageExclusionUtil" (fun arguments -> Obj.repr (new openGLESImageExclusionUtil (Obj.obj arguments)))

let instance = (new openGLESImageExclusionUtil ())
let get_instance () = instance
let () = java_register_static "OpenGLESImageExclusionUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OpenGLESImageExclusionUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



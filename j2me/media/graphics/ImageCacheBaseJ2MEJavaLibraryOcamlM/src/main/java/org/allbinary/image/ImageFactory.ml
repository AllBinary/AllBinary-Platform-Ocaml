(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
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
(* import java.io.InputStream *)
(* import javax.microedition.lcdui.Image *)

class imageFactory () =
  object
    

    method createImageUrl : 'return. string -> 'return = fun ((url : string)) ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "Image.createImage" (Obj.repr (url))))))
        end
    

    method createImage : 'return. string * int * int -> 'return = fun ((_caller : string), (width : int), (height : int)) ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "Image.createImage" (Obj.repr (width, height))))))
        end
    

    method createImageFromInputStream : 'any1 'any2 'return. 'any1 * 'any2 -> 'return = fun (_key, inputStream) ->
        let inputStream = Obj.repr inputStream in
        begin
        let image : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "Image.createImage" (Obj.repr ((Obj.magic inputStream))))))) in ();
        (Obj.magic ((Obj.magic !image)))
        end [@@warning "-20"]
    

    (* Java overload createImageFromInputStream(InputStream) is not converted: OCaml has one method per name *)

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ImageFactory" (fun arguments -> Obj.repr (new imageFactory (Obj.obj arguments)))

let instance = (new imageFactory ())
let get_instance () = instance
let () = java_register_static "ImageFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



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
(* package org.allbinary *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import org.eclipse.swt.graphics.Resource *)

class disposalUtil () =
  object
    

    method disposeImage : 'any1. 'any1 -> unit = fun (_image) ->
        begin
        ()
        end [@@warning "-20"]
    

    method disposeResource : 'any1. 'any1 -> unit = fun (resource) ->
        let resource = Obj.repr resource in
        begin
        if (not ((Obj.magic resource)#isDisposed ())) then begin
            ignore ((Obj.magic resource)#dispose ())
        end
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "DisposalUtil" (fun arguments -> Obj.repr (new disposalUtil (Obj.obj arguments)))

let instance = (new disposalUtil ())
let get_instance () = instance
let () = java_register_static "DisposalUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "DisposalUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



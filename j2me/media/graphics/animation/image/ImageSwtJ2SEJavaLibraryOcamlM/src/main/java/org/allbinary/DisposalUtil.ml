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
(* import org.allbinary.string.CommonStrings *)
(* import org.eclipse.swt.graphics.Resource *)
(* import org.microemu.device.swt.SwtMutableImage *)

class disposalUtil () =
  object (self)
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    

    method disposeImage : 'any1. 'any1 -> unit = fun (image) ->
        let image = Obj.repr image in
        try
        begin
        if ((Obj.magic image) == (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr (())))
        end;
        if ((Obj.magic image)#isMutable ()) then begin
            let mutableImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
            (self#disposeResource ((Obj.magic ((Obj.magic !mutableImage)#getImage ()))))
        end else begin
            ()
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method disposeResource : 'any1. 'any1 -> unit = fun (resource) ->
        let resource = Obj.repr resource in
        begin
        if (not ((Obj.magic resource)#isDisposed ())) then begin
            (print_endline (java_string_of (Obj.repr (commonStrings#cLOSE))));
            ignore ((Obj.magic resource)#dispose ())
        end
        end [@@warning "-20"]

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
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



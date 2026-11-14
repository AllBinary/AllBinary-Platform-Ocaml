(*

  AllBinary Open License Version 1
  Copyright (c) 2026 AllBinary
 
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
(* import java.io.IOException *)
(* import java.io.InputStream *)
(* import javax.microedition.lcdui.Form *)
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.Item *)
(* import javax.microedition.media.Manager *)
(* import javax.microedition.media.MediaException *)
(* import javax.microedition.media.Player *)

class mIDPUtil () =
  object
    

    method createImageWH : 'return. int * int -> 'return = fun ((width : int), (height : int)) ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "Image.createImage" (Obj.repr (width, height))))))
        end
    

    method createImageFromByteArray : 'return. int array * int * int -> 'return = fun ((imageData : int array), (imageOffset : int), (imageLength : int)) ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "Image.createImage" (Obj.repr (imageData, imageOffset, imageLength))))))
        end
    

    method createImageFromInputStream : 'any1 'return. 'any1 -> 'return = fun (inputStream) ->
        let inputStream = Obj.repr inputStream in
        begin
        (Obj.magic ((Obj.magic (java_call_static "Image.createImage" (Obj.repr ((Obj.magic inputStream)))))))
        end [@@warning "-20"]
    

    method createPlayerFromInputStream : 'any1 'return. 'any1 * string -> 'return = fun (inputStream, (type_ : string)) ->
        let inputStream = Obj.repr inputStream in
        begin
        (Obj.magic ((Obj.magic (java_call_static "Manager.createPlayer" (Obj.repr ((Obj.magic inputStream), type_))))))
        end [@@warning "-20"]
    

    method appendItem : 'any1 'any2. 'any1 * 'any2 -> int = fun (form, item) ->
        let form = Obj.repr form in
        let item = Obj.repr item in
        begin
        ((Obj.magic form)#append ((Obj.magic item)))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "MIDPUtil" (fun arguments -> Obj.repr (new mIDPUtil (Obj.obj arguments)))

let instance = (new mIDPUtil ())
let get_instance () = instance
let () = java_register_static "MIDPUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (instance))
        end
let () = java_register_static "MIDPUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



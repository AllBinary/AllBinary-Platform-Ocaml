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
(* package javax.microedition.lcdui *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.NullUtil *)

class platformImage () =
  object
    

    method getImage : 'any1. 'any1 -> Obj.t = fun (_graphicsSurface2) ->
        begin
        (Obj.repr ((NullImage.get_nULL_IMAGE ())))
        end
    

    method getSurfaceWidth : 'any1. 'any1 * int -> int = fun (_graphicsSurface2, (width : int)) ->
        begin
        width
        end
    

    method getSurfaceHeight : 'any1. 'any1 * int -> int = fun (_graphicsSurface2, (height : int)) ->
        begin
        height
        end
    

    method getWidth : 'any1. 'any1 * int -> int = fun (_image, (width : int)) ->
        begin
        width
        end [@@warning "-20"]
    

    method getHeight : 'any1. 'any1 * int -> int = fun (_image, (height : int)) ->
        begin
        height
        end [@@warning "-20"]
    

    method getGraphics : 'any1 'any4 'return. 'any1 * int * int * 'any4 -> 'return = fun (_graphicsSurface, (_width : int), (_height : int), _image) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method drawImage : 'any1 'any5 'any6. 'any1 * int * int * int * 'any5 * 'any6 -> unit = fun (_image, (_x : int), (_y : int), (_anchor : int), _g2, _g) ->
        begin
        ()
        end [@@warning "-20"]
    

    method drawRegion : 'any1 'any10. 'any1 * int * int * int * int * int * int * int * int * 'any10 -> unit = fun (_image, (_x_src : int), (_y_src : int), (_width : int), (_height : int), (_transform : int), (_x_dst : int), (_y_dst : int), (_anchor : int), _g) ->
        begin
        ()
        end [@@warning "-20"]
    

    method getRGB : 'any8. int array * int * int * int * int * int * int * 'any8 -> unit = fun ((_argb : int array), (_offset : int), (_scanlength : int), (_x : int), (_y : int), (_width : int), (_height : int), _image) ->
        begin
        ()
        end [@@warning "-20"]
    

    method setRGB : 'any8. int array * int * int * int * int * int * int * 'any8 -> unit = fun ((_argb : int array), (_offset : int), (_scanlength : int), (_x : int), (_y : int), (_width : int), (_height : int), _image) ->
        begin
        ()
        end [@@warning "-20"]
    

    method getData : 'any1. 'any1 -> int array = fun (_image) ->
        begin
        (NullUtil.getInstance ())#nULL_INT_ARRAY
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "PlatformImage" (fun arguments -> Obj.repr (new platformImage (Obj.obj arguments)))



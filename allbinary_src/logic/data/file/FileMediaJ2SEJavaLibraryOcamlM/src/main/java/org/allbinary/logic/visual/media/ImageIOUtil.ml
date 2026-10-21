(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.visual.media *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.image.BufferedImage *)
(* import java.awt.image.RenderedImage *)
(* import javax.imageio.ImageIO *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.AbFileNativeUtil *)


let read : 'any1 'return. 'any1 -> 'return = fun (file) ->
        let file = Obj.repr file in
        begin
        (Obj.magic ((ImageIO.read ((AbFileNativeUtil.get ((Obj.magic file)))))))
        end [@@warning "-20"]

and write : 'any1 'any3. 'any1 * string * 'any3 -> bool = fun (renderedImage, (name : string), file) ->
        let renderedImage = Obj.repr renderedImage in
        let file = Obj.repr file in
        begin
        (ImageIO.write ((Obj.magic renderedImage), name, (AbFileNativeUtil.get ((Obj.magic file)))))
        end [@@warning "-20"]

let () = java_register_static "ImageIOUtil.read" (fun arguments -> Obj.repr (read (Obj.obj arguments)))
let () = java_register_static "ImageIOUtil.write" (fun arguments -> Obj.repr (write (Obj.obj arguments)))
class imageIOUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ImageIOUtil" (fun arguments -> Obj.repr (new imageIOUtil (Obj.obj arguments)))



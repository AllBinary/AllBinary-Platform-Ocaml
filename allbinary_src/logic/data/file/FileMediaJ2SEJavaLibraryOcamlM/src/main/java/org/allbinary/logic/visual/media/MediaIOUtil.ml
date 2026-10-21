(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.visual.media *)

open Allbinary_java [@@warning "-33"]
(* import javax.imageio.ImageIO *)

class mediaIOUtil () =
  object
    

    method getReaderFormatNames () : string array =
        begin
        (ImageIO.getReaderFormatNames ())
        end
    

    method getWriterFormatNames () : string array =
        begin
        (ImageIO.getWriterFormatNames ())
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "MediaIOUtil" (fun arguments -> Obj.repr (new mediaIOUtil (Obj.obj arguments)))

let instance = (new mediaIOUtil ())
let get_instance () = instance
let () = java_register_static "MediaIOUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "MediaIOUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



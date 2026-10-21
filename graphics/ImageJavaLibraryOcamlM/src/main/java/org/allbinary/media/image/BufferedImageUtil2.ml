(* Generated Code Do Not Modify *)
(* package org.allbinary.media.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt *)
(* import java.awt.image.BufferedImage *)

class bufferedImageUtil2 () =
  object
    val mutable imageUtil : Obj.t = Obj.repr 0
    method imageUtil : 'r. 'r = Obj.magic imageUtil
    method set_imageUtil : 'v. 'v -> unit = fun value' -> imageUtil <- Obj.repr value'
    

    method createSpriteImage : 'return. _ -> 'return = fun (bufferedImageArray) ->
        begin
        let columns : int ref = ref ((Array.length bufferedImageArray)) in ();
        let max : int ref = ref (!columns) in ();
        let rows : int ref = ref (0) in ();
        if ((Array.length bufferedImageArray) < !columns) then begin
            columns := (Array.length bufferedImageArray)
        end;
        rows := (((Array.length bufferedImageArray) / !columns));
        if (((Array.length bufferedImageArray) mod !columns) <> 0) then begin
            rows := !rows + 1
        end;
        let bufferedImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageUtil)#create (((bufferedImageArray.(0)#getWidth ((Obj.magic 0))) * !columns), ((bufferedImageArray.(0)#getHeight ((Obj.magic 0))) * !rows))))) in ();
        let g : Obj.t ref = ref ((Obj.repr ((Obj.magic !bufferedImage)#createGraphics ()))) in ();
        let columnIndex : int ref = ref (0) in ();
        let rowIndex : int ref = ref (0) in ();
        for index = 0 to (Array.length bufferedImageArray) - 1 do
            if (((index / !max) <> 0) && ((index mod !max) = 0)) then begin
                rowIndex := !rowIndex + 1;
                columnIndex := 0
            end;
            ignore ((Obj.magic !g)#drawImage (bufferedImageArray.(index), ((bufferedImageArray.(index)#getWidth ((Obj.magic 0))) * !columnIndex), ((bufferedImageArray.(index)#getHeight ((Obj.magic 0))) * !rowIndex), (bufferedImageArray.(index)#getWidth ((Obj.magic 0))), (bufferedImageArray.(index)#getHeight ((Obj.magic 0))), (Obj.magic 0)));
            columnIndex := !columnIndex + 1
        done;
        ignore ((Obj.magic !g)#dispose ());
        (Obj.magic ((Obj.magic !bufferedImage)))
        end

    initializer
      begin
        imageUtil <- (Obj.repr (Obj.magic (java_call_static "ImageUtil.getInstance" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "BufferedImageUtil2" (fun arguments -> Obj.repr (new bufferedImageUtil2 (Obj.obj arguments)))

let instance = (new bufferedImageUtil2 ())
let get_instance () = instance
let () = java_register_static "BufferedImageUtil2.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BufferedImageUtil2.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



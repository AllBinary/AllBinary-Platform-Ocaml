(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.displayable *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)

class screenRelationalUtil () =
  object (self)
    

    method getScaleImage : 'any1. 'any1 -> float = fun (image) ->
        let image = Obj.repr image in
        begin
        (self#getScaleWH (((Obj.magic image)#getWidth ()), ((Obj.magic image)#getHeight ())))
        end [@@warning "-20"]
    

    method getScaleWH ((aWidth : int), (aHeight : int)) : float =
        begin
        (self#getScaleWHA (aWidth, aHeight, 20))
        end
    

    method getScaleWHA ((aWidth : int), (_aHeight : int), (_add : int)) : float =
        begin
        let displayInfoSingleton : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        let last : int array ref = ref ((!displayInfoSingleton#getLast ())) in ();
        let width : float ref = ref ((float_of_int (!last.(!displayInfoSingleton#wIDTH)))) in ();
        let height : float ref = ref ((float_of_int (!last.(!displayInfoSingleton#hEIGHT)))) in ();
        let largestSize : float ref = ref (!width) in ();
        if (!largestSize < !height) then begin
            largestSize := !height
        end;
        let scale : float ref = ref (((!largestSize) /. (float_of_int (aWidth)))) in ();
        !scale
        end
    

    method getScaledHeight ((aWidth : int), (aHeight : int)) : int =
        begin
        (int_of_float ((((self#getScaleWH (aWidth, aHeight)) *. (float_of_int (aHeight))))))
        end
    

    method getScaledHeightAdd ((aWidth : int), (aHeight : int), (add : int)) : int =
        begin
        (int_of_float ((((self#getScaleWHA (aWidth, aHeight, add)) *. (float_of_int (aHeight))))))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ScreenRelationalUtil" (fun arguments -> Obj.repr (new screenRelationalUtil (Obj.obj arguments)))

let instance = (new screenRelationalUtil ())
let get_instance () = instance
let () = java_register_static "ScreenRelationalUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ScreenRelationalUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



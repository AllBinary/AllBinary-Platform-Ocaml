(*

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.media.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.Graphics2D *)
(* import java.awt.Image *)
(* import java.awt.image.BufferedImage *)

class imageJ2SERotationUtil () =
  object (self)
    val mutable imageUtil : Obj.t = Obj.repr 0
    method imageUtil : 'r. 'r = Obj.magic imageUtil
    method set_imageUtil : 'v. 'v -> unit = fun value' -> imageUtil <- Obj.repr value'
    val mutable imageJ2SEUtil : ImageJ2SEUtil.imageJ2SEUtil = (Obj.magic 0)
    method imageJ2SEUtil = imageJ2SEUtil
    method set_imageJ2SEUtil value' = imageJ2SEUtil <- value'
    val mutable tWO_PIE : float = 0.0
    method tWO_PIE = tWO_PIE
    method set_tWO_PIE value' = tWO_PIE <- value'
    
    

    method getRotatedImage : 'any1 'return. 'any1 * int -> 'return = fun (bufferedImage, (totalAngle : int)) ->
        let bufferedImage = Obj.repr bufferedImage in
        begin
        (Obj.magic ((self#getRotatedImageRadians ((Obj.magic bufferedImage), ((tWO_PIE *. (float_of_int (totalAngle))) /. 360.)))))
        end [@@warning "-20"]
    

    method getRotatedImageRadians : 'any1 'return. 'any1 * float -> 'return = fun (bufferedImage, (radians : float)) ->
        let bufferedImage = Obj.repr bufferedImage in
        begin
        let newBufferedImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageUtil)#create (((Obj.magic bufferedImage)#getWidth ((Obj.magic 0))), ((Obj.magic bufferedImage)#getHeight ((Obj.magic 0))))))) in ();
        (Obj.magic ((self#drawRotatedImageRadians ((Obj.magic bufferedImage), (Obj.magic !newBufferedImage), ((Obj.magic !newBufferedImage)#createGraphics ()), radians))))
        end [@@warning "-20"]
    

    method drawRotatedImageRadians : 'any1 'any2 'any3 'return. 'any1 * 'any2 * 'any3 * float -> 'return = fun (bufferedImage, newBufferedImage, g, (radians : float)) ->
        let bufferedImage = Obj.repr bufferedImage in
        let newBufferedImage = Obj.repr newBufferedImage in
        let g = Obj.repr g in
        begin
        ignore ((Obj.magic g)#rotate (radians, (((Obj.magic newBufferedImage)#getWidth ((Obj.magic 0))) / 2), (((Obj.magic newBufferedImage)#getHeight ((Obj.magic 0))) / 2)));
        ignore ((Obj.magic g)#drawImage ((Obj.magic bufferedImage), 0, 0, ((Obj.magic bufferedImage)#getWidth ((Obj.magic 0))), ((Obj.magic bufferedImage)#getHeight ((Obj.magic 0))), (Obj.magic 0)));
        ignore ((Obj.magic g)#dispose ());
        (Obj.magic ((Obj.magic newBufferedImage)))
        end [@@warning "-20"]
    

    method rotateImage : 'any1 'any2 'return. 'any1 * 'any2 * int -> 'return = fun (bufferedImage, newBufferedImage, (totalAngle : int)) ->
        let bufferedImage = Obj.repr bufferedImage in
        let newBufferedImage = Obj.repr newBufferedImage in
        begin
        let g : Obj.t ref = ref ((Obj.repr ((Obj.magic newBufferedImage)#createGraphics ()))) in ();
        ignore ((Obj.magic !g)#setBackground (imageJ2SEUtil#tRANSPARENT_COLOR));
        ignore ((Obj.magic !g)#clearRect (0, 0, ((Obj.magic newBufferedImage)#getWidth ()), ((Obj.magic newBufferedImage)#getHeight ())));
        (Obj.magic ((self#drawRotatedImageRadians ((Obj.magic bufferedImage), (Obj.magic newBufferedImage), (Obj.magic !g), ((tWO_PIE *. (float_of_int (totalAngle))) /. 360.)))))
        end [@@warning "-20"]
    

    method createRotatedImage : 'any1 'any2 'return. 'any1 * 'any2 * int -> 'return = fun (bufferedImage, newBufferedImage, (totalAngle : int)) ->
        let bufferedImage = Obj.repr bufferedImage in
        let newBufferedImage = Obj.repr newBufferedImage in
        begin
        let g : Obj.t ref = ref ((Obj.repr ((Obj.magic newBufferedImage)#createGraphics ()))) in ();
        (Obj.magic ((self#drawRotatedImageRadians ((Obj.magic bufferedImage), (Obj.magic newBufferedImage), (Obj.magic !g), ((tWO_PIE *. (float_of_int (totalAngle))) /. 360.)))))
        end [@@warning "-20"]
    

    method getRotatedImages : 'any1 'return. 'any1 * int * int -> 'return = fun (bufferedImage, (numberOfFrames : int), (totalAngle : int)) ->
        let bufferedImage = Obj.repr bufferedImage in
        begin
        let bufferedImageArray : Obj.t ref = ref ((Obj.repr (Array.make (numberOfFrames) (Obj.magic 0)))) in ();
        let arc : float ref = ref ((((tWO_PIE) *. (float_of_int (totalAngle))) /. 360.)) in ();
        let size : int ref = ref ((Array.length (Obj.magic !bufferedImageArray))) in ();
        for index = 0 to !size - 1 do
            let radians : float ref = ref ((((!arc /. (float_of_int (!size)))) *. (float_of_int (index)))) in ();
            (Obj.magic !bufferedImageArray).(index) <- (self#getRotatedImageRadians ((Obj.magic bufferedImage), !radians))
        done;
        (Obj.magic ((Obj.magic !bufferedImageArray)))
        end [@@warning "-20"]
    

    method createSpriteImage : 'return. _ -> 'return = fun (bufferedImageArray) ->
        begin
        let columns : int ref = ref (9) in ();
        let rows : int ref = ref (0) in ();
        let size : int ref = ref ((Array.length bufferedImageArray)) in ();
        if (!size < !columns) then begin
            columns := !size
        end;
        rows := ((!size / !columns));
        if ((!size mod !columns) <> 0) then begin
            rows := !rows + 1
        end;
        let firstBufferedImage : Obj.t ref = ref ((Obj.repr bufferedImageArray.(0))) in ();
        let bufferedImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageUtil)#create ((((Obj.magic !firstBufferedImage)#getWidth ((Obj.magic 0))) * !columns), (((Obj.magic !firstBufferedImage)#getHeight ((Obj.magic 0))) * !rows))))) in ();
        let g : Obj.t ref = ref ((Obj.repr ((Obj.magic !bufferedImage)#createGraphics ()))) in ();
        let columnIndex : int ref = ref (0) in ();
        let rowIndex : int ref = ref (0) in ();
        let nextBufferedImage : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = 0 to !size - 1 do
            if (((index / 9) <> 0) && ((index mod 9) = 0)) then begin
                rowIndex := !rowIndex + 1;
                columnIndex := 0
            end;
            nextBufferedImage := Obj.repr (bufferedImageArray.(index));
            ignore ((Obj.magic !g)#drawImage ((Obj.magic !nextBufferedImage), (((Obj.magic !nextBufferedImage)#getWidth ((Obj.magic 0))) * !columnIndex), (((Obj.magic !nextBufferedImage)#getHeight ((Obj.magic 0))) * !rowIndex), ((Obj.magic !nextBufferedImage)#getWidth ((Obj.magic 0))), ((Obj.magic !nextBufferedImage)#getHeight ((Obj.magic 0))), (Obj.magic 0)));
            columnIndex := !columnIndex + 1
        done;
        ignore ((Obj.magic !g)#dispose ());
        (Obj.magic ((Obj.magic !bufferedImage)))
        end

    initializer
      begin
        imageUtil <- (Obj.repr (Obj.magic (java_call_static "ImageUtil.getInstance" (Obj.repr ()))));
        imageJ2SEUtil <- ((ImageJ2SEUtil.getInstance ()) :> ImageJ2SEUtil.imageJ2SEUtil);
        tWO_PIE <- (2 * (Obj.magic (java_call_static "Math.get_pI" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageJ2SERotationUtil" (fun arguments -> Obj.repr (new imageJ2SERotationUtil (Obj.obj arguments)))

let instance = (new imageJ2SERotationUtil ())
let get_instance () = instance
let () = java_register_static "ImageJ2SERotationUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageJ2SERotationUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



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
(* import java.awt *)
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonLabels *)

class imagesRatioUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable imageUtil : Obj.t = Obj.repr 0
    method imageUtil : 'r. 'r = Obj.magic imageUtil
    method set_imageUtil : 'v. 'v -> unit = fun value' -> imageUtil <- Obj.repr value'
    
    

    method isEqual (bufferedImageArray, (totalImages : int)) : bool =
        try
        begin
        let end_ : int ref = ref (totalImages) in ();
        if ((Array.length bufferedImageArray) < totalImages) then begin
            end_ := (Array.length bufferedImageArray)
        end;
        let ratio : float ref = ref ((((java_to_float (Obj.repr ((bufferedImageArray.(0)#getWidth ())))) /. (bufferedImageArray.(0)#getHeight ())))) in ();
        for index = 1 to !end_ - 1 do
            if (!ratio <> (((java_to_float (Obj.repr ((bufferedImageArray.(index)#getWidth ())))) /. (bufferedImageArray.(index)#getHeight ())))) then begin
                raise (Java_return (Obj.repr (false)))
            end
        done;
        true
        end
        with Java_return value -> Obj.obj value
    

    method getAverage (bufferedImageArray, (totalImages : int)) : float =
        begin
        let ratio : float ref = ref (0.) in ();
        let end_ : int ref = ref (totalImages) in ();
        if ((Array.length bufferedImageArray) < totalImages) then begin
            end_ := (Array.length bufferedImageArray)
        end;
        for index = 0 to !end_ - 1 do
            ratio := (!ratio +. (((java_to_float (Obj.repr ((bufferedImageArray.(index)#getWidth ())))) /. (bufferedImageArray.(index)#getHeight ()))))
        done;
        ((!ratio /. (float_of_int (!end_))))
        end
    

    method fudge : 'any1 'return. 'any1 * float -> 'return = fun (bufferedImage, (ratio : float)) ->
        let bufferedImage = Obj.repr bufferedImage in
        begin
        let imageRatio : float ref = ref ((((java_to_float (Obj.repr (((Obj.magic bufferedImage)#getWidth ())))) /. ((Obj.magic bufferedImage)#getHeight ())))) in ();
        let point : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "Point" (Obj.repr ()))))) in ();
        let newHeight : int ref = ref (((Obj.magic bufferedImage)#getHeight ())) in ();
        let newWidth : int ref = ref (((Obj.magic bufferedImage)#getWidth ())) in ();
        if (ratio > !imageRatio) then begin
            newWidth := (int_of_float ((((java_to_float (Obj.repr (((Obj.magic bufferedImage)#getHeight ())))) *. ratio))));
            ignore ((Obj.magic !point)#set_x ((((!newWidth - ((Obj.magic bufferedImage)#getWidth ()))) / 2)))
        end else begin
            newHeight := (int_of_float ((((java_to_float (Obj.repr (((Obj.magic bufferedImage)#getWidth ())))) /. ratio))));
            ignore ((Obj.magic !point)#set_y ((((!newHeight - ((Obj.magic bufferedImage)#getHeight ()))) / 2)))
        end;
        let commonLabels : CommonLabels.commonLabels ref = ref (((CommonLabels.getInstance ()) :> CommonLabels.commonLabels)) in ();
        ignore ((Obj.magic logUtil)#putF (((((((((java_string_of (Obj.repr ((!commonLabels#wIDTH_LABEL + ((Obj.magic bufferedImage)#getWidth ())))) ^ " newWidth: ") ^ java_string_of (Obj.repr (!newWidth))) ^ java_string_of (Obj.repr (!commonLabels#hEIGHT_LABEL))) ^ java_string_of (Obj.repr (((Obj.magic bufferedImage)#getHeight ())))) ^ " newHeight: ") ^ java_string_of (Obj.repr (!newHeight))) ^ " needed ratio: ") ^ java_string_of (Obj.repr ((((float_of_int (!newWidth)) /. (float_of_int (!newHeight))))))), self, "fudge"));
        let newBufferedImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageUtil)#create (!newWidth, !newHeight)))) in ();
        let g : Obj.t ref = ref ((Obj.repr ((Obj.magic !newBufferedImage)#createGraphics ()))) in ();
        if ((Obj.magic !point)#x > 0) then begin
            let firstColumnBufferedImage : Obj.t ref = ref ((Obj.repr ((Obj.magic bufferedImage)#getSubimage (0, 0, 1, ((Obj.magic bufferedImage)#getHeight ()))))) in ();
            let lastColumnBufferedImage : Obj.t ref = ref ((Obj.repr ((Obj.magic bufferedImage)#getSubimage ((((Obj.magic bufferedImage)#getWidth ()) - 1), 0, 1, ((Obj.magic bufferedImage)#getHeight ()))))) in ();
            ignore ((Obj.magic logUtil)#putF ("Draw some columns to fill in gap", self, "fudge"));
            for index = 0 to (Obj.magic !point)#x - 1 do
                ignore ((Obj.magic !g)#drawImage ((Obj.magic !firstColumnBufferedImage), index, 0, (Obj.magic 0)));
                ignore ((Obj.magic !g)#drawImage ((Obj.magic !lastColumnBufferedImage), (!newWidth - index), 0, (Obj.magic 0)))
            done
        end;
        if ((Obj.magic !point)#y > 0) then begin
            let firstRowBufferedImage : Obj.t ref = ref ((Obj.repr ((Obj.magic bufferedImage)#getSubimage (0, 0, ((Obj.magic bufferedImage)#getWidth ()), 1)))) in ();
            let lastRowBufferedImage : Obj.t ref = ref ((Obj.repr ((Obj.magic bufferedImage)#getSubimage (0, (((Obj.magic bufferedImage)#getHeight ()) - 1), ((Obj.magic bufferedImage)#getWidth ()), 1)))) in ();
            ignore ((Obj.magic logUtil)#putF ("Draw some rows to fill in gap", self, "fudge"));
            for index = 0 to (Obj.magic !point)#y - 1 do
                ignore ((Obj.magic !g)#drawImage ((Obj.magic !firstRowBufferedImage), 0, index, (Obj.magic 0)));
                ignore ((Obj.magic !g)#drawImage ((Obj.magic !lastRowBufferedImage), 0, (!newHeight - index), (Obj.magic 0)))
            done
        end;
        ignore ((Obj.magic !g)#drawImage ((Obj.magic bufferedImage), (Obj.magic !point)#x, (Obj.magic !point)#y, ((Obj.magic bufferedImage)#getWidth ()), ((Obj.magic bufferedImage)#getHeight ()), (Obj.magic 0)));
        (Obj.magic ((Obj.magic !newBufferedImage)))
        end [@@warning "-20"]
    

    (* Java overload fudge(ArrayType, INT, DOUBLE) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        imageUtil <- (Obj.repr (Obj.magic (java_call_static "ImageUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImagesRatioUtil" (fun arguments -> Obj.repr (new imagesRatioUtil (Obj.obj arguments)))

let instance = (new imagesRatioUtil ())
let get_instance () = instance
let () = java_register_static "ImagesRatioUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImagesRatioUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



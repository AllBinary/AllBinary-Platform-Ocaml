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
(* package org.allbinary.media.image.comparison *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt *)
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.color.ColorCacheFactory *)
(* import org.allbinary.graphics.color.ColorCacheable *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.util.cache.AutomaticCacheInterface *)
(* import org.allbinary.media.image.comparison.pixel.PixelDeltaFactory *)

class imageComparator (imageComparatorConstraintsInterface_arg) =
  object (self)
    val mutable imageComparatorConstraintsInterface : Obj.t = Obj.repr 0
    method imageComparatorConstraintsInterface : 'r. 'r = Obj.magic imageComparatorConstraintsInterface
    method set_imageComparatorConstraintsInterface : 'v. 'v -> unit = fun value' -> imageComparatorConstraintsInterface <- Obj.repr value'
    
    

    method process : 'any1 'any2. 'any1 * 'any2 -> unit = fun (imageComparisonInfo, point) ->
        let imageComparisonInfo = Obj.repr imageComparisonInfo in
        let point = Obj.repr point in
        begin
        let isCollsionWithAvoidRectangles : bool ref = ref (((Obj.magic imageComparatorConstraintsInterface)#isCollisionWithAvoidRectangles ((Obj.magic point)))) in ();
        if (not !isCollsionWithAvoidRectangles) then begin
            let rgb1 : int ref = ref ((((Obj.magic imageComparisonInfo)#getBufferedImages ()).(0)#getRGB (((Obj.magic point)#getX ()), ((Obj.magic point)#getY ())))) in ();
            let rgb2 : int ref = ref ((((Obj.magic imageComparisonInfo)#getBufferedImages ()).(1)#getRGB (((Obj.magic point)#getX ()), ((Obj.magic point)#getY ())))) in ();
            let automaticCacheInterface : AutomaticCacheInterface.automaticCacheInterface ref = ref (((ColorCacheFactory.getInstance ()) :> AutomaticCacheInterface.automaticCacheInterface)) in ();
            let colorInteger : int ref = ref ((string_of_int (!rgb1))) in ();
            let colorCacheable : ColorCacheable.colorCacheable ref = ref (((Obj.magic (!automaticCacheInterface#get (!colorInteger))) :> ColorCacheable.colorCacheable)) in ();
            let color : Obj.t ref = ref ((Obj.repr (!colorCacheable#getColor ()))) in ();
            let colorInteger2 : int ref = ref ((string_of_int (!rgb2))) in ();
            let colorCacheable2 : ColorCacheable.colorCacheable ref = ref (((Obj.magic (!automaticCacheInterface#get (!colorInteger))) :> ColorCacheable.colorCacheable)) in ();
            let color2 : Obj.t ref = ref ((Obj.repr (!colorCacheable#getColor ()))) in ();
            if (((Obj.magic imageComparatorConstraintsInterface)#isColorAllowed (0, (Obj.magic point), (Obj.magic !color))) || ((Obj.magic imageComparatorConstraintsInterface)#isColorAllowed (1, (Obj.magic point), (Obj.magic !color2)))) then begin
                if ((abs ((!rgb1 - !rgb2))) <= ((Obj.magic imageComparisonInfo)#getTolerance ())) then begin
                    ignore ((Obj.magic imageComparisonInfo)#set_pixelsThatMatch ((Obj.magic imageComparisonInfo)#pixelsThatMatch + 1))
                end else begin
                    ignore ((Obj.magic imageComparisonInfo)#add ((PixelDeltaFactory.getInstance (((Obj.magic point)#getX ()), ((Obj.magic point)#getY ()), !rgb1, !rgb2))))
                end
            end
        end else begin
            ignore ((Obj.magic imageComparisonInfo)#set_pixelsIgnored ((Obj.magic imageComparisonInfo)#pixelsIgnored + 1))
        end
        end [@@warning "-20"]
    

    method compare : 'any1 'any2 'return. 'any1 * 'any2 * int * int * int -> 'return = fun (bufferedImage1, bufferedImage2, (frameOne : int), (frameTwo : int), (tolerance : int)) ->
        let bufferedImage1 = Obj.repr bufferedImage1 in
        let bufferedImage2 = Obj.repr bufferedImage2 in
        begin
        (Obj.magic ((self#compare ((Obj.magic bufferedImage1), (Obj.magic bufferedImage2), frameOne, frameTwo, tolerance, (StringUtil.getInstance ())#eMPTY_STRING))))
        end [@@warning "-20"]
    

    (* Java overload compare(BufferedImage, BufferedImage, Long, Long, INT, String) is not converted: OCaml has one method per name *)

    initializer
      begin
        ();
        ();
        imageComparatorConstraintsInterface <- Obj.repr (imageComparatorConstraintsInterface_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageComparator" (fun arguments -> Obj.repr (new imageComparator (Obj.obj arguments)))



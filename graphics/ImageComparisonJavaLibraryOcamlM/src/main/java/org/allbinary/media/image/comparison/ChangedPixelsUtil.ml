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
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.util.cache.PoolInterface *)
(* import org.allbinary.media.image.cache.BufferedImageCacheable *)
(* import org.allbinary.media.image.cache.BufferedImageInfo *)
(* import org.allbinary.media.image.cache.BufferedImageInfoFactory *)
(* import org.allbinary.media.image.cache.BufferedImagePoolSingleton *)
(* import org.allbinary.media.image.comparison.pixel.PixelDelta *)

let sTART_X : int = 0
let get_sTART_X () = sTART_X
let () = java_register_static "ChangedPixelsUtil.get_sTART_X" (fun _ -> Obj.repr (get_sTART_X ()))
let sTART_Y : int = 0
let get_sTART_Y () = sTART_Y
let () = java_register_static "ChangedPixelsUtil.get_sTART_Y" (fun _ -> Obj.repr (get_sTART_Y ()))
let oFFSET : int = 0
let get_oFFSET () = oFFSET
let () = java_register_static "ChangedPixelsUtil.get_oFFSET" (fun _ -> Obj.repr (get_oFFSET ()))
let sCAN_SIZE : int = 0
let get_sCAN_SIZE () = sCAN_SIZE
let () = java_register_static "ChangedPixelsUtil.get_sCAN_SIZE" (fun _ -> Obj.repr (get_sCAN_SIZE ()))
let cLEAR_INT_ARRAY : int array = (Array.make ((1800 * 1600)) 0)
let get_cLEAR_INT_ARRAY () = cLEAR_INT_ARRAY
let () = java_register_static "ChangedPixelsUtil.get_cLEAR_INT_ARRAY" (fun _ -> Obj.repr (get_cLEAR_INT_ARRAY ()))

let generateBufferedImageChacheables : 'any1. 'any1 -> BufferedImageCacheable.bufferedImageCacheable array = fun (imageComparisonInfo) ->
        let imageComparisonInfo = Obj.repr imageComparisonInfo in
        begin
        let bufferedImageCacheables : BufferedImageCacheable.bufferedImageCacheable array ref = ref ((Obj.magic 0)) in ();
        let originalBufferedImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageComparisonInfo)#getBufferedImages ()).(0))) in ();
        bufferedImageCacheables := (Array.make (2) (Obj.magic 0));
        let bufferedImageInfo : BufferedImageInfo.bufferedImageInfo ref = ref (((BufferedImageInfoFactory.getInstance ((Obj.magic imageComparisonInfo)#imageWidth, (Obj.magic imageComparisonInfo)#imageHeight, ((Obj.magic !originalBufferedImage)#getType ()))) :> BufferedImageInfo.bufferedImageInfo)) in ();
        let poolInterface : PoolInterface.poolInterface ref = ref (((BufferedImagePoolSingleton.getInstance ()) :> PoolInterface.poolInterface)) in ();
        for index = 0 to (Array.length !bufferedImageCacheables) - 1 do
            let bufferedImageCacheable : BufferedImageCacheable.bufferedImageCacheable ref = ref (((Obj.magic (!poolInterface#remove (!bufferedImageInfo))) :> BufferedImageCacheable.bufferedImageCacheable)) in ();
            !bufferedImageCacheables.(index) <- (!bufferedImageCacheable :> BufferedImageCacheable.bufferedImageCacheable);
            ignore ((!bufferedImageCacheables.(index)#getBufferedImage ())#setRGB (sTART_X, sTART_Y, (!bufferedImageInfo#getWidth ()), (!bufferedImageInfo#getHeight ()), cLEAR_INT_ARRAY, oFFSET, sCAN_SIZE))
        done;
        let vector : BasicArrayList.basicArrayList ref = ref ((((Obj.magic imageComparisonInfo)#getNonMatchingPixelVector ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!vector#size ())) in ();
        for index = 0 to !size - 1 do
            let pixelDelta : PixelDelta.pixelDelta ref = ref (((Obj.magic (!vector#get (index))) :> PixelDelta.pixelDelta)) in ();
            if ((!pixelDelta#getColorDelta ()) == (Obj.magic 0)) then begin
                (print_string (java_string_of (Obj.repr ("ColorDelta"))));
                ignore (exit (0))
            end;
            ignore ((!bufferedImageCacheables.(0)#getBufferedImage ())#setRGB (((!pixelDelta#getPoint ())#getX ()), ((!pixelDelta#getPoint ())#getY ()), ((!pixelDelta#getColorDelta ())#getRgb1 ())));
            ignore ((!bufferedImageCacheables.(1)#getBufferedImage ())#setRGB (((!pixelDelta#getPoint ())#getX ()), ((!pixelDelta#getPoint ())#getY ()), ((!pixelDelta#getColorDelta ())#getRgb2 ())))
        done;
        !bufferedImageCacheables
        end [@@warning "-20"]

let () = java_register_static "ChangedPixelsUtil.generateBufferedImageChacheables" (fun arguments -> Obj.repr (generateBufferedImageChacheables (Obj.obj arguments)))
class changedPixelsUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ChangedPixelsUtil" (fun arguments -> Obj.repr (new changedPixelsUtil (Obj.obj arguments)))



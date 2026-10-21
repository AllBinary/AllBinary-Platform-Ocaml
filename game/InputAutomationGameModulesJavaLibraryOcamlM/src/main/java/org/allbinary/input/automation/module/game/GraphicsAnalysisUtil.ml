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
(* package org.allbinary.input.automation.module.game *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt *)
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.graphics.color.ColorCacheFactory *)
(* import org.allbinary.graphics.color.ColorCacheable *)
(* import org.allbinary.logic.util.cache.AutomaticCacheInterface *)

let mAX : int = 122
let get_mAX () = mAX
let () = java_register_static "GraphicsAnalysisUtil.get_mAX" (fun _ -> Obj.repr (get_mAX ()))

let getNominator : 'any1. 'any1 * int * int * int -> float = fun (bufferedImage, (min_x : int), (max_x : int), (y : int)) ->
        let bufferedImage = Obj.repr bufferedImage in
        try
        begin
        for index = max_x downto min_x + 1 do
            let colorInteger : int ref = ref ((string_of_int (((Obj.magic bufferedImage)#getRGB (index, y))))) in ();
            let automaticCacheInterface : AutomaticCacheInterface.automaticCacheInterface ref = ref (((ColorCacheFactory.getInstance ()) :> AutomaticCacheInterface.automaticCacheInterface)) in ();
            let colorCacheable : ColorCacheable.colorCacheable ref = ref (((Obj.magic (!automaticCacheInterface#get (!colorInteger))) :> ColorCacheable.colorCacheable)) in ();
            let color : Obj.t ref = ref ((Obj.repr (!colorCacheable#getColor ()))) in ();
            if (((((Obj.magic !color)#getRed ()) < mAX) && (((Obj.magic !color)#getGreen ()) < mAX)) && (((Obj.magic !color)#getBlue ()) < mAX)) then begin
                ()
            end else begin
                raise (Java_return (Obj.repr ((index - min_x))))
            end
        done;
        0.
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

let () = java_register_static "GraphicsAnalysisUtil.getNominator" (fun arguments -> Obj.repr (getNominator (Obj.obj arguments)))
class graphicsAnalysisUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "GraphicsAnalysisUtil" (fun arguments -> Obj.repr (new graphicsAnalysisUtil (Obj.obj arguments)))



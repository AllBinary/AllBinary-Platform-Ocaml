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
(* package org.allbinary.game.configuration.feature *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringUtil *)

class graphicsFeatureFactory () =
  object
    val mutable nONE : GraphicsFeature.graphicsFeature = (Obj.magic 0)
    method nONE = nONE
    method set_nONE value' = nONE <- value'
    val mutable tRANSPARENT_IMAGE_CREATION : GraphicsFeature.graphicsFeature = (Obj.magic 0)
    method tRANSPARENT_IMAGE_CREATION = tRANSPARENT_IMAGE_CREATION
    method set_tRANSPARENT_IMAGE_CREATION value' = tRANSPARENT_IMAGE_CREATION <- value'
    val mutable iMAGE_GRAPHICS : GraphicsFeature.graphicsFeature = (Obj.magic 0)
    method iMAGE_GRAPHICS = iMAGE_GRAPHICS
    method set_iMAGE_GRAPHICS value' = iMAGE_GRAPHICS <- value'
    val mutable iMAGE_ROTATION_ON_THE_FLY : GraphicsFeature.graphicsFeature = (Obj.magic 0)
    method iMAGE_ROTATION_ON_THE_FLY = iMAGE_ROTATION_ON_THE_FLY
    method set_iMAGE_ROTATION_ON_THE_FLY value' = iMAGE_ROTATION_ON_THE_FLY <- value'
    val mutable iMAGE_TO_ARRAY_GRAPHICS : GraphicsFeature.graphicsFeature = (Obj.magic 0)
    method iMAGE_TO_ARRAY_GRAPHICS = iMAGE_TO_ARRAY_GRAPHICS
    method set_iMAGE_TO_ARRAY_GRAPHICS value' = iMAGE_TO_ARRAY_GRAPHICS <- value'
    val mutable sPRITE_QUARTER_ROTATION_GRAPHICS : GraphicsFeature.graphicsFeature = (Obj.magic 0)
    method sPRITE_QUARTER_ROTATION_GRAPHICS = sPRITE_QUARTER_ROTATION_GRAPHICS
    method set_sPRITE_QUARTER_ROTATION_GRAPHICS value' = sPRITE_QUARTER_ROTATION_GRAPHICS <- value'
    val mutable sPRITE_FULL_GRAPHICS : GraphicsFeature.graphicsFeature = (Obj.magic 0)
    method sPRITE_FULL_GRAPHICS = sPRITE_FULL_GRAPHICS
    method set_sPRITE_FULL_GRAPHICS value' = sPRITE_FULL_GRAPHICS <- value'
    val mutable vECTOR_GRAPHICS : GraphicsFeature.graphicsFeature = (Obj.magic 0)
    method vECTOR_GRAPHICS = vECTOR_GRAPHICS
    method set_vECTOR_GRAPHICS value' = vECTOR_GRAPHICS <- value'
    val mutable vECTOR_TO_IMAGE_GRAPHICS : GraphicsFeature.graphicsFeature = (Obj.magic 0)
    method vECTOR_TO_IMAGE_GRAPHICS = vECTOR_TO_IMAGE_GRAPHICS
    method set_vECTOR_TO_IMAGE_GRAPHICS value' = vECTOR_TO_IMAGE_GRAPHICS <- value'
    

    initializer
      begin
        nONE <- ((new GraphicsFeature.graphicsFeature ((StringUtil.getInstance ())#nULL_STRING)) :> GraphicsFeature.graphicsFeature);
        tRANSPARENT_IMAGE_CREATION <- ((new GraphicsFeature.graphicsFeature ("Transparent Image Creation")) :> GraphicsFeature.graphicsFeature);
        iMAGE_GRAPHICS <- ((new GraphicsFeature.graphicsFeature ("Image Graphics")) :> GraphicsFeature.graphicsFeature);
        iMAGE_ROTATION_ON_THE_FLY <- ((new GraphicsFeature.graphicsFeature ("Image Rotated On The Fly")) :> GraphicsFeature.graphicsFeature);
        iMAGE_TO_ARRAY_GRAPHICS <- ((new GraphicsFeature.graphicsFeature ("Image To Array Graphics")) :> GraphicsFeature.graphicsFeature);
        sPRITE_QUARTER_ROTATION_GRAPHICS <- ((new GraphicsFeature.graphicsFeature ("Sprite Quarter Rotation Graphics")) :> GraphicsFeature.graphicsFeature);
        sPRITE_FULL_GRAPHICS <- ((new GraphicsFeature.graphicsFeature ("Sprite Full Rotation Graphics")) :> GraphicsFeature.graphicsFeature);
        vECTOR_GRAPHICS <- ((new GraphicsFeature.graphicsFeature ("BasicArrayList Graphics")) :> GraphicsFeature.graphicsFeature);
        vECTOR_TO_IMAGE_GRAPHICS <- ((new GraphicsFeature.graphicsFeature ("BasicArrayList To Image Graphics")) :> GraphicsFeature.graphicsFeature);
        ();
        ()
      end
  end
let () = java_register_constructor "GraphicsFeatureFactory" (fun arguments -> Obj.repr (new graphicsFeatureFactory (Obj.obj arguments)))

let instance = (new graphicsFeatureFactory ())
let get_instance () = instance
let () = java_register_static "GraphicsFeatureFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GraphicsFeatureFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



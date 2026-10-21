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
(* package org.allbinary.game.resource *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.GameFeatureControlledInterface *)
(* import org.allbinary.game.configuration.feature.GraphicsFeatureFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class featuredResourceFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable aNIMATION_FEATURES : string = ""
    method aNIMATION_FEATURES = aNIMATION_FEATURES
    method set_aNIMATION_FEATURES value' = aNIMATION_FEATURES <- value'
    val mutable iMAGE_LABEL : string = ""
    method iMAGE_LABEL = iMAGE_LABEL
    method set_iMAGE_LABEL value' = iMAGE_LABEL <- value'
    val mutable iMAGE_GRAPHICS_ARRAY : string = ""
    method iMAGE_GRAPHICS_ARRAY = iMAGE_GRAPHICS_ARRAY
    method set_iMAGE_GRAPHICS_ARRAY value' = iMAGE_GRAPHICS_ARRAY <- value'
    val mutable iMAGE_GRAPHICS_ROTATION : string = ""
    method iMAGE_GRAPHICS_ROTATION = iMAGE_GRAPHICS_ROTATION
    method set_iMAGE_GRAPHICS_ROTATION value' = iMAGE_GRAPHICS_ROTATION <- value'
    val mutable sPRITE_QUARTER : string = ""
    method sPRITE_QUARTER = sPRITE_QUARTER
    method set_sPRITE_QUARTER value' = sPRITE_QUARTER <- value'
    val mutable sPRITE_FULL : string = ""
    method sPRITE_FULL = sPRITE_FULL
    method set_sPRITE_FULL value' = sPRITE_FULL <- value'
    val mutable iS_LOADING_LEVEL_LABEL : string = ""
    method iS_LOADING_LEVEL_LABEL = iS_LOADING_LEVEL_LABEL
    method set_iS_LOADING_LEVEL_LABEL value' = iS_LOADING_LEVEL_LABEL <- value'
    val mutable iS_FEATURE : string = ""
    method iS_FEATURE = iS_FEATURE
    method set_iS_FEATURE value' = iS_FEATURE <- value'
    val mutable gAME_FEATURE_CONTROLLED : string = ""
    method gAME_FEATURE_CONTROLLED = gAME_FEATURE_CONTROLLED
    method set_gAME_FEATURE_CONTROLLED value' = gAME_FEATURE_CONTROLLED <- value'
    
    

    method init ((level : int)) : unit =
        begin
        let size : int ref = ref ((list#size ())) in ();
        for index = 0 to !size - 1 do
            let featureInterface : GameFeatureControlledInterface.gameFeatureControlledInterface ref = ref (((Obj.magic list#objectArray.(index)) :> GameFeatureControlledInterface.gameFeatureControlledInterface)) in ();
            let isLoadingLevel : bool ref = ref ((!featureInterface#isLoadingLevel (level))) in ();
            let isFeature : bool ref = ref ((!featureInterface#isFeature ())) in ();
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((((((((new StringMaker.stringMaker ())#append (gAME_FEATURE_CONTROLLED))#append ((java_string_of (Obj.repr !featureInterface))))#append (iS_LOADING_LEVEL_LABEL))#append (((ResourceLoadingLevelFactory.getInstance ())#getLevelString (level))))#append ((CommonSeps.getInstance ())#cOLON_SEP))#appendboolean (!isLoadingLevel))#append (iS_FEATURE))#appendboolean (!isFeature)))), self, commonStrings#iNIT));
            if (!isLoadingLevel && !isFeature) then begin
                ignore (!featureInterface#init (level))
            end
        done;
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        let graphicsFeatureFactory : GraphicsFeatureFactory.graphicsFeatureFactory ref = ref (((GraphicsFeatureFactory.getInstance ()) :> GraphicsFeatureFactory.graphicsFeatureFactory)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (aNIMATION_FEATURES));
        ignore (!stringBuffer#appendboolean ((!features#isFeature (!graphicsFeatureFactory#vECTOR_GRAPHICS))));
        ignore (!stringBuffer#append (iMAGE_LABEL));
        ignore (!stringBuffer#appendboolean ((!features#isFeature (!graphicsFeatureFactory#iMAGE_GRAPHICS))));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, commonStrings#iNIT));
        if (!features#isFeature (!graphicsFeatureFactory#iMAGE_GRAPHICS)) then begin
            ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
            ignore (!stringBuffer#append (iMAGE_GRAPHICS_ARRAY));
            ignore (!stringBuffer#appendboolean ((!features#isFeature (!graphicsFeatureFactory#iMAGE_TO_ARRAY_GRAPHICS))));
            ignore (!stringBuffer#append (iMAGE_GRAPHICS_ROTATION));
            ignore (!stringBuffer#appendboolean ((!features#isFeature (!graphicsFeatureFactory#iMAGE_TO_ARRAY_GRAPHICS))));
            ignore (!stringBuffer#append (sPRITE_QUARTER));
            ignore (!stringBuffer#appendboolean ((!features#isFeature (!graphicsFeatureFactory#sPRITE_QUARTER_ROTATION_GRAPHICS))));
            ignore (!stringBuffer#append (sPRITE_FULL));
            ignore (!stringBuffer#appendboolean ((!features#isFeature (!graphicsFeatureFactory#sPRITE_FULL_GRAPHICS))));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, commonStrings#iNIT))
        end
        end
    

    method clear () : unit =
        begin
        ignore (list#clear ())
        end
    

    method add : 'any1. 'any1 -> unit = fun (featureInterface) ->
        let featureInterface = Obj.repr featureInterface in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((CommonLabels.getInstance ())#sTART_LABEL))#append (((StringUtil.getInstance ())#toString ((Obj.magic featureInterface))))))), self, commonStrings#aDD));
        ignore (list#add ((Obj.magic featureInterface)))
        end [@@warning "-20"]
    

    method getList () : BasicArrayList.basicArrayList =
        begin
        (list :> BasicArrayList.basicArrayList)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        aNIMATION_FEATURES <- "Animation Features: Vector: ";
        iMAGE_LABEL <- " Image: ";
        iMAGE_GRAPHICS_ARRAY <- "Image Array: ";
        iMAGE_GRAPHICS_ROTATION <- "Image Rotate: ";
        sPRITE_QUARTER <- " Sprite Quarter: ";
        sPRITE_FULL <- " Sprite Full: ";
        iS_LOADING_LEVEL_LABEL <- " isLoadingLevel ";
        iS_FEATURE <- " isFeature: ";
        gAME_FEATURE_CONTROLLED <- "GameFeatureControlledInterface: ";
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "FeaturedResourceFactory" (fun arguments -> Obj.repr (new featuredResourceFactory (Obj.obj arguments)))



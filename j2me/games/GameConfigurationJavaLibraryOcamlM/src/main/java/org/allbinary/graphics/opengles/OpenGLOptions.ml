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
(* package org.allbinary.graphics.opengles *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.GameFeatureChoiceGroups *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class openGLOptions () =
  object
    

    method init () : unit =
        begin
        let openGLFeatureFactory : OpenGLFeatureFactory.openGLFeatureFactory ref = ref (((OpenGLFeatureFactory.getInstance ()) :> OpenGLFeatureFactory.openGLFeatureFactory)) in ();
        if ((Features.getInstance ())#isFeature (!openGLFeatureFactory#oPENGL_OPTIONS)) then begin
            let openGLMultipleList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            ignore (!openGLMultipleList#add (!openGLFeatureFactory#oPENGL));
            ignore ((GameFeatureChoiceGroups.getMultipleInstance ())#add ("OpenGL (Complete Restart)", !openGLMultipleList));
            let openGLVersionSelectorMultipleList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            ignore (!openGLVersionSelectorMultipleList#add (!openGLFeatureFactory#oPENGL_AUTO_SELECT));
            ignore (!openGLVersionSelectorMultipleList#add (!openGLFeatureFactory#oPENGL_MINIMUM));
            ignore ((GameFeatureChoiceGroups.getExclusiveInstance ())#add ("OpenGL Version Selector", !openGLVersionSelectorMultipleList));
            let openGLImageColorMultipleList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            ignore (!openGLImageColorMultipleList#add (!openGLFeatureFactory#iMAGE_COLOR_DEPTH_4444));
            ignore (!openGLImageColorMultipleList#add (!openGLFeatureFactory#iMAGE_COLOR_DEPTH_8888));
            ignore ((GameFeatureChoiceGroups.getExclusiveInstance ())#add ("OpenGL Image Color RGBA", !openGLImageColorMultipleList))
        end
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "OpenGLOptions" (fun arguments -> Obj.repr (new openGLOptions (Obj.obj arguments)))



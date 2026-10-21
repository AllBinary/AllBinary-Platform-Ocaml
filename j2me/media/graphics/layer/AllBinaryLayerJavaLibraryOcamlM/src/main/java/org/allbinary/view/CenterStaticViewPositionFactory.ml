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
(* package org.allbinary.view *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)

class centerStaticViewPositionFactory () =
  object
    
    

    method getInstance ((z : int)) : ViewPositionBase.viewPositionBase =
        begin
        let displayInfoSingleton : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        ((new StaticViewPosition.staticViewPosition ((((!displayInfoSingleton#getLastWidth ()) asr 1)), (((!displayInfoSingleton#getLastHeight ()) asr 1)), z)) :> ViewPositionBase.viewPositionBase)
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "CenterStaticViewPositionFactory" (fun arguments -> Obj.repr (new centerStaticViewPositionFactory (Obj.obj arguments)))



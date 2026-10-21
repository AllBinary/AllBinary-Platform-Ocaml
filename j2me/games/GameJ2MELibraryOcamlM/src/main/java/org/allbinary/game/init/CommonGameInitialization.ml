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
(* package org.allbinary.game.init *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.CommandListener *)
(* import org.allbinary.game.resource.ResourceInitialization *)
(* import org.allbinary.game.resource.ResourceLoadingLevelFactory *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.string.CommonStrings *)

class commonGameInitialization ((resourceInitializationArray : ResourceInitialization.resourceInitialization array), (portion : int)) =
  object (self)
    inherit BaseGameInitialization.baseGameInitialization (resourceInitializationArray, portion) as super
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    
    

    method init : 'any1 'any2. 'any1 * 'any2 * int -> unit = fun (abeClientInformation, commandListener, (level : int)) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        let commandListener = Obj.repr commandListener in
        begin
        ignore (super#init ((Obj.magic abeClientInformation), (Obj.magic commandListener), level));
        let resourceLoadingLevelFactory : ResourceLoadingLevelFactory.resourceLoadingLevelFactory ref = ref (((ResourceLoadingLevelFactory.getInstance ()) :> ResourceLoadingLevelFactory.resourceLoadingLevelFactory)) in ();
        if ((not (self#isGameInitialized ())) && (level = (!resourceLoadingLevelFactory#lOAD_ALL#getLevel ()))) then begin
            ignore (self#setGameInitialized (true));
            let progressCanvas : ProgressCanvas.progressCanvas ref = ref (((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas)) in ();
            ignore ((SmallIntegerSingletonFactory.getInstance ())#init ());
            ignore (!progressCanvas#addNormalPortion (50, "Integers"));
            ignore ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#init ());
            ignore (!progressCanvas#addNormalPortion (50, "Points"));
            ignore (AngleFactory.getInstance ());
            ignore (!progressCanvas#addNormalPortion (50, "Angles"));
            (self#initGame ());
            ignore (resourceInitializationArray.(gAME_RESOURCES)#init ())
        end;
        ignore (super#resourceInitialization (level))
        end [@@warning "-7-20"]
    

    method initGame () : unit =
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end [@@warning "-7"]

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "CommonGameInitialization" (fun arguments -> Obj.repr (new commonGameInitialization (Obj.obj arguments)))



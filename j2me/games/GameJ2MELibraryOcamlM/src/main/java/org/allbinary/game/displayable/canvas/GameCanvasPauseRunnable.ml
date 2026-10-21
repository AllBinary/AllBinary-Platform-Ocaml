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
(* package org.allbinary.game.displayable.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.AndroidUtil *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class gameCanvasPauseRunnable (allBinaryGameCanvas_arg) =
  object (self)
    inherit GameRunnable.gameRunnable ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable allBinaryGameCanvas : Obj.t = Obj.repr 0
    method allBinaryGameCanvas : 'r. 'r = Obj.magic allBinaryGameCanvas
    method set_allBinaryGameCanvas : 'v. 'v -> unit = fun value' -> allBinaryGameCanvas <- Obj.repr value'
    
    

    method run () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method processLoopSleep () : unit =
        begin
        (try
            let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
            let isOpenGL : bool ref = ref ((!features#isDefault ((OpenGLFeatureFactory.getInstance ())#oPENGL))) in ();
            if !isOpenGL then begin
                ignore ((Obj.magic allBinaryGameCanvas)#processSleep ())
            end
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#rUN, e))
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        allBinaryGameCanvas <- Obj.repr (allBinaryGameCanvas_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameCanvasPauseRunnable" (fun arguments -> Obj.repr (new gameCanvasPauseRunnable (Obj.obj arguments)))



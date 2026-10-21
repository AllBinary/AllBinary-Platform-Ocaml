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
(* package org.allbinary.input.media.image.capture *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.Dimension *)
(* import java.awt.Rectangle *)
(* import java.awt.Toolkit *)
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.input.automation.robot.InputRobotFactory *)
(* import org.allbinary.input.automation.robot.InputRobotInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.ABHashtable *)

class screenScavangerRobot () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    
    

    method getScreenAsBufferedImages : 'return. unit -> 'return = fun () ->
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "getScreenAsBufferedImages"));
        let dimScreenSize : Obj.t ref = ref ((Obj.repr ((Toolkit.getDefaultToolkit ())#getScreenSize ()))) in ();
        let rectScreenSize : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "Rectangle" (Obj.repr ((Obj.magic !dimScreenSize))))))) in ();
        let robotHashtable : Obj.t ref = ref ((Obj.repr ((InputRobotFactory.getInstance ())#get ()))) in ();
        let bufferedImageArray : Obj.t ref = ref ((Obj.repr (Array.make (1) (Obj.magic 0)))) in ();
        let index : int ref = ref (0) in ();
        let inputRobotInterface : InputRobotInterface.inputRobotInterface ref = ref (((Obj.magic ((Obj.magic !robotHashtable)#get ("Java Robot"))) :> InputRobotInterface.inputRobotInterface)) in ();
        (Obj.magic !bufferedImageArray).(!index) <- (!inputRobotInterface#createScreenCapture ((Obj.magic !rectScreenSize)));
        ignore ((Obj.magic logUtil)#putF ("Finish", self, "getScreenAsBufferedImages"));
        (Obj.magic ((Obj.magic !bufferedImageArray)))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ScreenScavangerRobot" (fun arguments -> Obj.repr (new screenScavangerRobot (Obj.obj arguments)))



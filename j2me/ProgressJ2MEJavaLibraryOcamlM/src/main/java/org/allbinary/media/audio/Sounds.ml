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
(* package org.allbinary.media.audio *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.media.Player *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)

class sounds ((soundsFactoryInterface_arg : SoundsFactoryInterface.soundsFactoryInterface)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable soundStrings : SoundStrings.soundStrings = (Obj.magic 0)
    method soundStrings = soundStrings
    method set_soundStrings value' = soundStrings <- value'
    val mutable soundsFactoryInterface : SoundsFactoryInterface.soundsFactoryInterface = (Obj.magic 0)
    method soundsFactoryInterface = soundsFactoryInterface
    method set_soundsFactoryInterface value' = soundsFactoryInterface <- value'
    
    

    method init () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#iNIT));
        let commonLabels : CommonLabels.commonLabels ref = ref (((CommonLabels.getInstance ()) :> CommonLabels.commonLabels)) in ();
        let progressCanvas : ProgressCanvas.progressCanvas ref = ref (((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas)) in ();
        ignore (soundsFactoryInterface#init ());
        let soundInterfaceArray : Obj.t ref = ref ((Obj.repr (soundsFactoryInterface#getSoundInterfaceArray ()))) in ();
        let smallIntegerSingletonFactory : SmallIntegerSingletonFactory.smallIntegerSingletonFactory ref = ref (((SmallIntegerSingletonFactory.getInstance ()) :> SmallIntegerSingletonFactory.smallIntegerSingletonFactory)) in ();
        let indexInteger : int ref = ref ((Obj.magic 0)) in ();
        let indexString : string ref = ref ("") in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        for i = 0 to (Array.length (Obj.magic !soundInterfaceArray)) - 1 do
            let soundInterface : Obj.t ref = ref ((Obj.repr (Obj.magic !soundInterfaceArray).(i))) in ();
            if ((Obj.magic !soundInterface) != (Obj.magic 0)) then begin
                indexInteger := (!smallIntegerSingletonFactory#getAt (i));
                indexString := (string_of_int !indexInteger);
                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                ignore (!stringBuffer#append (!commonLabels#iNDEX_LABEL));
                ignore (!stringBuffer#append (!indexString));
                ignore (!stringBuffer#append (soundStrings#sOUND));
                ignore (!stringBuffer#append ((java_get_class (Obj.repr (Obj.magic !soundInterface)))));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, commonStrings#iNIT));
                ignore ((Obj.magic !soundInterface)#init ());
                ignore (!progressCanvas#addNormalPortion (100, (java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (soundStrings#iNIT_SOUND))#append (!indexString))))))
            end
        done;
        ignore (soundsFactoryInterface#setInitialized (true));
        ignore ((Obj.magic logUtil)#putF (commonStrings#eND, self, commonStrings#iNIT))
        end
    

    method stopAll () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, soundStrings#sTOP_ALL));
        let soundInterfaceArray : Obj.t ref = ref ((Obj.repr (soundsFactoryInterface#getSoundInterfaceArray ()))) in ();
        let progressCanvas : ProgressCanvas.progressCanvas ref = ref (((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas)) in ();
        let player : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = 0 to (Array.length (Obj.magic !soundInterfaceArray)) - 1 do
            if ((Obj.magic !soundInterfaceArray).(index) != (Obj.magic 0)) then begin
                player := Obj.repr (((Obj.magic !soundInterfaceArray).(index)#getPlayerP ()));
                if ((Obj.magic !player) != (Obj.magic 0)) then begin
                    ignore ((Obj.magic !player)#stop ());
                    ignore (!progressCanvas#addPortion (100, soundStrings#sTOPPING_SOUND, index))
                end
            end
        done
        end
    

    method closeAll () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, soundStrings#cLOSE_ALL));
        let soundInterfaceArray : Obj.t ref = ref ((Obj.repr (soundsFactoryInterface#getSoundInterfaceArray ()))) in ();
        let progressCanvas : ProgressCanvas.progressCanvas ref = ref (((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas)) in ();
        let player : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = 0 to (Array.length (Obj.magic !soundInterfaceArray)) - 1 do
            if ((Obj.magic !soundInterfaceArray).(index) != (Obj.magic 0)) then begin
                player := Obj.repr (((Obj.magic !soundInterfaceArray).(index)#getPlayerP ()));
                if ((Obj.magic !player) != (Obj.magic 0)) then begin
                    ignore ((Obj.magic !player)#close ());
                    ignore (!progressCanvas#addPortion (100, soundStrings#cLOSING_SOUND, index))
                end
            end
        done
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        soundStrings <- ((SoundStrings.getInstance ()) :> SoundStrings.soundStrings);
        ();
        ();
        soundsFactoryInterface <- soundsFactoryInterface_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "Sounds" (fun arguments -> Obj.repr (new sounds (Obj.obj arguments)))



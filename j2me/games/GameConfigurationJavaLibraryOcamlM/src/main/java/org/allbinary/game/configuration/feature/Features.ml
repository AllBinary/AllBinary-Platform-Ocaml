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
(* import org.allbinary.game.configuration.event.GameFeatureEvent *)
(* import org.allbinary.game.configuration.event.GameFeatureEventHandler *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.os.GenericOperatingSystem *)
(* import org.allbinary.logic.system.os.OperatingSystemFactory *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

let sINGLETON : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_sINGLETON () = !sINGLETON
let set_sINGLETON value' = sINGLETON := value'
let () = java_register_static "Features.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))
class features () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    val mutable defaultList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method defaultList = defaultList
    method set_defaultList value' = defaultList <- value'
    
    

    method addDefault : 'any1. 'any1 -> unit = fun (gameFeature) ->
        let gameFeature = Obj.repr gameFeature in
        begin
        (self#add ((Obj.magic gameFeature)));
        if (not (defaultList#contains ((Obj.magic gameFeature)))) then begin
            ignore (defaultList#add ((Obj.magic gameFeature)))
        end
        end [@@warning "-20"]
    

    method add : 'any1. 'any1 -> unit = fun (gameFeature) ->
        let gameFeature = Obj.repr gameFeature in
        begin
        if (not (list#contains ((Obj.magic gameFeature)))) then begin
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((CommonLabels.getInstance ())#sTART_LABEL))#append ((java_string_of (Obj.repr (Obj.magic gameFeature))))))), self, commonStrings#aDD));
            ignore (list#add ((Obj.magic gameFeature)));
            ignore ((GameFeatureEventHandler.getInstance ())#fireEvent ((new GameFeatureEvent.gameFeatureEvent ((Obj.magic gameFeature), (java_string_of (Obj.repr (Obj.magic gameFeature)))))))
        end
        end [@@warning "-20"]
    

    method removeDefault : 'any1. 'any1 -> unit = fun (gameFeature) ->
        let gameFeature = Obj.repr gameFeature in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((CommonLabels.getInstance ())#sTART_LABEL))#append ((java_string_of (Obj.repr (Obj.magic gameFeature))))))), self, "removeDefault"));
        (self#remove ((Obj.magic gameFeature)));
        ignore (defaultList#remove ((Obj.magic gameFeature)))
        end [@@warning "-20"]
    

    method remove : 'any1. 'any1 -> unit = fun (gameFeature) ->
        let gameFeature = Obj.repr gameFeature in
        begin
        if (list#contains ((Obj.magic gameFeature))) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#rEMOVE));
            ignore (list#remove ((Obj.magic gameFeature)));
            ignore ((GameFeatureEventHandler.getInstance ())#fireEvent ((new GameFeatureEvent.gameFeatureEvent ((Obj.magic gameFeature), (java_string_of (Obj.repr (Obj.magic gameFeature)))))))
        end
        end [@@warning "-20"]
    

    method init () : unit =
        begin
        (try
            let gameFeatureFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "GameFeatureFactory.getInstance" (Obj.repr ()))))) in ();
            let inputFeatureFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "InputFeatureFactory.getInstance" (Obj.repr ()))))) in ();
            let sensorFeatureFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "SensorFeatureFactory.getInstance" (Obj.repr ()))))) in ();
            let touchFeatureFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "TouchFeatureFactory.getInstance" (Obj.repr ()))))) in ();
            (self#addDefault ((Obj.magic !gameFeatureFactory)#aRTIFICIAL_INTELLEGENCE_PROCESSOR));
            (self#addDefault ((Obj.magic !gameFeatureFactory)#cOLLIDABLE_INTERFACE_LAYER_PROCESSOR));
            (self#addDefault ((Obj.magic !gameFeatureFactory)#gAME_INPUT_LAYER_PROCESSOR));
            (self#addDefault ((Obj.magic !gameFeatureFactory)#tICKABLE_LAYER_PROCESSOR));
            (self#addDefault ((Obj.magic !inputFeatureFactory)#mULTI_KEY_PRESS));
            (self#addDefault ((Obj.magic !inputFeatureFactory)#rEMOVE_DUPLICATE_KEY_PRESSES));
            (self#addDefault ((Obj.magic !gameFeatureFactory)#sCREEN_SHAKE));
            (self#addDefault ((Obj.magic !gameFeatureFactory)#pOST_IMAGE_LOADING_MODIFICATION));
            let operatingSystemInterface : GenericOperatingSystem.genericOperatingSystem ref = ref ((((Obj.magic (java_call_static "OperatingSystemFactory.getInstance" (Obj.repr ())))#getOperatingSystemInstance ()) :> GenericOperatingSystem.genericOperatingSystem)) in ();
            if (!operatingSystemInterface#isOverScan ()) then begin
                (self#addDefault ((Obj.magic !sensorFeatureFactory)#nO_ORIENTATION));
                (self#addDefault ((Obj.magic !touchFeatureFactory)#hIDE_SCREEN_BUTTONS))
            end else begin
                (self#addDefault ((Obj.magic !sensorFeatureFactory)#oRIENTATION_SENSORS));
                (self#addDefault ((Obj.magic !touchFeatureFactory)#aUTO_HIDE_SHOW_SCREEN_BUTTONS))
            end;
            (self#addDefault ((Obj.magic !touchFeatureFactory)#tOUCH_ENABLED));
            (self#addDefault ((Obj.magic (java_call_static "MainFeatureFactory.getInstance" (Obj.repr ())))#fULL_SCREEN));
            (self#addDefault ((Obj.magic (java_call_static "MainFeatureFactory.getInstance" (Obj.repr ())))#lOAD_ONDEMAND))
        with e -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (commonStrings#eXCEPTION, self, commonStrings#iNIT, e))))
        end)
        end
    

    method isDefault : 'any1. 'any1 -> bool = fun (gameFeature) ->
        let gameFeature = Obj.repr gameFeature in
        begin
        (defaultList#contains ((Obj.magic gameFeature)))
        end [@@warning "-20"]
    

    method isFeature : 'any1. 'any1 -> bool = fun (gameFeature) ->
        let gameFeature = Obj.repr gameFeature in
        begin
        (list#contains ((Obj.magic gameFeature)))
        end [@@warning "-20"]
    

    method toggle : 'any1. 'any1 -> unit = fun (gameFeature) ->
        let gameFeature = Obj.repr gameFeature in
        begin
        if (self#isFeature ((Obj.magic gameFeature))) then begin
            (self#remove ((Obj.magic gameFeature)))
        end else begin
            (self#add ((Obj.magic gameFeature)))
        end
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        ();
        list <- (new BasicArrayListD.basicArrayListD ());
        defaultList <- (new BasicArrayListD.basicArrayListD ());
        (self#init ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "Features" (fun arguments -> Obj.repr (new features (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !sINGLETON) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            sINGLETON := (new features ())
        end;
        (Obj.magic !sINGLETON)
        end
let () = java_register_static "Features.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



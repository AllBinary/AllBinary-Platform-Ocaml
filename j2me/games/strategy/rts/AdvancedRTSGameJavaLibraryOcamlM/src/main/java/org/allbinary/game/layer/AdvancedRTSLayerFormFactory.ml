(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.RTSLayerFormFactory *)
(* import org.allbinary.graphics.form.item.ABCustomItem *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.graphics.form.ScrollSelectionForm *)
(* import org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface *)

class advancedRTSLayerFormFactory ((label : string), (itemArrayFactoryInterface : ItemArraySingletonFactoryInterface.itemArraySingletonFactoryInterface)) =
  object (self)
    inherit RTSLayerFormFactory.rTSLayerFormFactory ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable scrollSelectionForm : ScrollSelectionForm.scrollSelectionForm = (Obj.magic 0)
    method scrollSelectionForm = scrollSelectionForm
    method set_scrollSelectionForm value' = scrollSelectionForm <- value'
    
    

    method getInstance : 'any1. 'any1 -> ScrollSelectionForm.scrollSelectionForm = fun (_rtsLayer) ->
        begin
        (scrollSelectionForm :> ScrollSelectionForm.scrollSelectionForm)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        let scrollSelectionForm_arg : ScrollSelectionForm.scrollSelectionForm ref = ref (((ScrollSelectionForm.getNullScrollSelectionForm ()) :> ScrollSelectionForm.scrollSelectionForm)) in ();
        (try
            let items : Obj.t ref = ref ((Obj.repr (itemArrayFactoryInterface#getItems ()))) in ();
            scrollSelectionForm_arg := (RTSScrollSelectionFormFactory.getInstance (label, (Obj.magic !items)))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#cONSTRUCTOR, e))
        end);
        scrollSelectionForm <- !scrollSelectionForm_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "AdvancedRTSLayerFormFactory" (fun arguments -> Obj.repr (new advancedRTSLayerFormFactory (Obj.obj arguments)))



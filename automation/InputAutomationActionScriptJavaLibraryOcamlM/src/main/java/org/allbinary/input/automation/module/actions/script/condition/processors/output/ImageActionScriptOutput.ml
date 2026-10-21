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
(* package org.allbinary.input.automation.module.actions.script.condition.processors.output *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

let nAME : string = "Captures"
let get_nAME () = nAME
let () = java_register_static "ImageActionScriptOutput.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class imageActionScriptOutput () =
  object (self)
    inherit BasicProfileActionScriptOutput.basicProfileActionScriptOutput (nAME) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable saved : bool = false
    method saved = saved
    method set_saved value' = saved <- value'
    val mutable display : bool = false
    method display = display
    method set_display value' = display <- value'
    val mutable imageTypes : ImageTypes.imageTypes = (Obj.magic 0)
    method imageTypes = imageTypes
    method set_imageTypes value' = imageTypes <- value'
    val mutable actionScriptOutputJPanel : ImageActionScriptOutputJPanel.imageActionScriptOutputJPanel = (Obj.magic 0)
    method actionScriptOutputJPanel = actionScriptOutputJPanel
    method set_actionScriptOutputJPanel value' = actionScriptOutputJPanel <- value'
    
    
    

    method getActionScriptOutputJPanel () : ImageActionScriptOutputJPanel.imageActionScriptOutputJPanel =
        begin
        (actionScriptOutputJPanel :> ImageActionScriptOutputJPanel.imageActionScriptOutputJPanel)
        end [@@warning "-7"]
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((ImageActionScriptOutputData.get_dISPLAY ()), (string_of_bool ((self#isDisplay ())))));
        ignore (!hashMap#put ((ImageActionScriptOutputData.get_sAVE ()), (string_of_bool ((self#isSaved ())))));
        ignore ((Obj.magic logUtil)#putF (("HashMap: " ^ (java_string_of (Obj.repr !hashMap))), self, "toHashMap()"));
        (!hashMap :> java_hash_map)
        end [@@warning "-7"]
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr (super#toXmlNode ((Obj.magic document))))) in ();
        let newNode : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNodeWithValueNodes ((Obj.magic document), (ImageActionScriptOutputData.get_nAME ()), (self#toHashMap ()))))) in ();
        ignore ((Obj.magic !newNode)#appendChild (((self#getImageTypes ())#toXmlNode ((Obj.magic document)))));
        ignore ((Obj.magic !node)#appendChild ((Obj.magic !newNode)));
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-7-20"]
    

    method process ((frame : int)) : unit =
        begin
        ignore (ImageActionScriptOutputProcessor.process (self, frame))
        end [@@warning "-7"]
    

    method showDialog () : unit =
        begin
        ignore ((actionScriptOutputJPanel#getCapturedImageActionJDialog ())#setVisible (true))
        end [@@warning "-7"]
    

    method isSaved () : bool =
        begin
        saved
        end [@@warning "-7"]
    

    method setSaved ((saved_arg : bool)) : unit =
        begin
        saved <- saved_arg
        end [@@warning "-7"]
    

    method isDisplay () : bool =
        begin
        display
        end [@@warning "-7"]
    

    method setDisplay ((display_arg : bool)) : unit =
        begin
        display <- display_arg
        end [@@warning "-7"]
    

    method future_toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (" Is Save: "));
        ignore (!stringBuffer#appendboolean ((self#isSaved ())));
        ignore (!stringBuffer#append (" Is Display: "));
        ignore (!stringBuffer#appendboolean ((self#isDisplay ())));
        ignore (!stringBuffer#append (" "));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (self#getImageTypes ())))));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method log () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF ((self#future_toString ()), self, "log"))
        end [@@warning "-7"]
    

    method getImageTypes () : ImageTypes.imageTypes =
        begin
        (imageTypes :> ImageTypes.imageTypes)
        end [@@warning "-7"]
    

    method setImageTypes : 'any1. 'any1 -> unit = fun (imageTypes_arg) ->
        let imageTypes_arg = Obj.repr imageTypes_arg in
        begin
        imageTypes <- (Obj.magic imageTypes_arg)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        saved <- false;
        display <- false;
        imageTypes <- ((Obj.magic 0) :> ImageTypes.imageTypes);
        ();
        ();
        (* super(...) is the inherit clause *) ();
        (self#setImageTypes ((new ImageTypes.imageTypes ())));
        ignore (self#setAllowsChildren (false));
        actionScriptOutputJPanel <- (new ImageActionScriptOutputJPanel.imageActionScriptOutputJPanel (self))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "ImageActionScriptOutput" (fun arguments -> Obj.repr (new imageActionScriptOutput (Obj.obj arguments)))



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
(* package org.allbinary.input.automation.module.generic.configuration.profile.actions *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.actions.script.GenericProfileActionScript *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class genericProfileAction ((name_arg : string)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable genericProfileActionScript : GenericProfileActionScript.genericProfileActionScript = (Obj.magic 0)
    method genericProfileActionScript = genericProfileActionScript
    method set_genericProfileActionScript value' = genericProfileActionScript <- value'
    val mutable genericProfileActionJPanel : Obj.t = Obj.repr 0
    method genericProfileActionJPanel : 'r. 'r = Obj.magic genericProfileActionJPanel
    method set_genericProfileActionJPanel : 'v. 'v -> unit = fun value' -> genericProfileActionJPanel <- Obj.repr value'
    
    
    

    method getName () : string =
        begin
        name
        end
    

    method setName ((name_arg : string)) : unit =
        begin
        name <- name_arg
        end
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((GenericProfileActionData.get_nAME ()), name));
        ignore ((Obj.magic logUtil)#putF (("HashMap: " ^ (java_string_of (Obj.repr !hashMap))), self, "toHashMap()"));
        (!hashMap :> java_hash_map)
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNodeWithValueNodes ((Obj.magic document), (GenericProfileActionData.get_nAME ()), (self#toHashMap ()))))) in ();
        ignore ((Obj.magic !node)#appendChild (((self#getGenericProfileActionScript ())#toXmlNode ((Obj.magic document)))));
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]
    

    method getGenericProfileActionScript () : GenericProfileActionScript.genericProfileActionScript =
        begin
        (genericProfileActionScript :> GenericProfileActionScript.genericProfileActionScript)
        end
    

    method setGenericProfileActionScript : 'any1. 'any1 -> unit = fun (genericProfileActionScript_arg) ->
        let genericProfileActionScript_arg = Obj.repr genericProfileActionScript_arg in
        begin
        genericProfileActionScript <- (Obj.magic genericProfileActionScript_arg)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        genericProfileActionScript <- ((Obj.magic 0) :> GenericProfileActionScript.genericProfileActionScript);
        genericProfileActionJPanel <- (Obj.repr (Obj.magic 0));
        ();
        name <- name_arg;
        (self#setGenericProfileActionScript ((new GenericProfileActionScript.genericProfileActionScript ((Obj.magic genericProfileActionJPanel)))))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "GenericProfileAction" (fun arguments -> Obj.repr (new genericProfileAction (Obj.obj arguments)))



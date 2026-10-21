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
(* package org.allbinary.logic.visual.theme *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class themePropertiesView ((themeInterface_arg : ThemeInterface.themeInterface)) =
  object
    val mutable themeInterface : ThemeInterface.themeInterface = (Obj.magic 0)
    method themeInterface = themeInterface
    method set_themeInterface value' = themeInterface <- value'
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNameValueNodes ((Obj.magic document), (ThemeData.getInstance ())#nAME, (themeInterface#toHashMap ()))))) in ();
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        themeInterface <- themeInterface_arg
      end
  end
let () = java_register_constructor "ThemePropertiesView" (fun arguments -> Obj.repr (new themePropertiesView (Obj.obj arguments)))



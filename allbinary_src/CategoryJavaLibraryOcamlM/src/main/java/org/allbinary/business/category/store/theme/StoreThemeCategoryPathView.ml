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
(* package org.allbinary.business.category.store.theme *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.category.CategoryView *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.logic.visual.theme.ThemeInterface *)
(* import org.allbinary.logic.visual.theme.ThemePropertiesView *)
(* import org.allbinary.logic.visual.theme.ThemeValidation *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class storeThemeCategoryPathView ((categoryInterface : StoreThemeCategoryInterface.storeThemeCategoryInterface)) =
  object (self)
    inherit CategoryView.categoryView ((Obj.magic categoryInterface)) as super
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr (super#toXmlNode ((Obj.magic document))))) in ();
        let storeThemeCategoryInterface : StoreThemeCategoryInterface.storeThemeCategoryInterface ref = ref (((Obj.magic (self#getCategoryInterface ())) :> StoreThemeCategoryInterface.storeThemeCategoryInterface)) in ();
        let themeArray : Obj.t array ref = ref (((!storeThemeCategoryInterface#getThemes ())#toArray ())) in ();
        let size : int ref = ref ((Array.length !themeArray)) in ();
        for i = 0 to !size - 1 do
            let themeValidation : ThemeValidation.themeValidation ref = ref (((Obj.magic !themeArray.(i)) :> ThemeValidation.themeValidation)) in ();
            let domNodeInterface : DomNodeInterface.domNodeInterface ref = ref (((Obj.magic (new ThemePropertiesView.themePropertiesView ((Obj.magic !themeValidation)))) :> DomNodeInterface.domNodeInterface)) in ();
            ignore ((Obj.magic !node)#appendChild ((!domNodeInterface#toXmlNode ((Obj.magic document)))))
        done;
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "StoreThemeCategoryPathView" (fun arguments -> Obj.repr (new storeThemeCategoryPathView (Obj.obj arguments)))



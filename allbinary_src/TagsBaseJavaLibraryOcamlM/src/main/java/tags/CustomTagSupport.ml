(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package tags *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.servlet.jsp.tagext.TagSupport *)
(* import org.allbinary.string.CommonStrings *)

class customTagSupport () =
  object
    inherit TagSupport.tagSupport ()
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable tagStrings : TagStrings.tagStrings = (Obj.magic 0)
    method tagStrings = tagStrings
    method set_tagStrings value' = tagStrings <- value'

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        tagStrings <- ((TagStrings.getInstance ()) :> TagStrings.tagStrings);
        ()
      end
  end
let () = java_register_constructor "CustomTagSupport" (fun arguments -> Obj.repr (new customTagSupport (Obj.obj arguments)))



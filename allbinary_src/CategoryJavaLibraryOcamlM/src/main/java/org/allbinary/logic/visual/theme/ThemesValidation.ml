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
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.control.validate.Validation *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class themesValidation () =
  object
    inherit Validation.validation ()
    val mutable themeVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method themeVector = themeVector
    method set_themeVector value' = themeVector <- value'
    
    
    
    

    method isValid () : bool =
        begin
        true
        end [@@warning "-7"]
    

    method validationInfo () : string =
        begin
        (Obj.magic 0)
        end [@@warning "-7"]
    

    method toValidationInfoDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7"]
    

    method toValidationInfoNode : 'any1 'return. 'any1 -> 'return = fun (_document) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7-20"]
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((ThemesData.getInstance ())#nAME)))) in ();
        let size : int ref = ref ((themeVector#size ())) in ();
        for i = 0 to !size - 1 do
            let themeDomNodeInterface : DomNodeInterface.domNodeInterface ref = ref (((Obj.magic (themeVector#get (i))) :> DomNodeInterface.domNodeInterface)) in ();
            ignore ((Obj.magic !node)#appendChild ((!themeDomNodeInterface#toXmlNode ((Obj.magic document)))))
        done;
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        themeVector <- (new BasicArrayListD.basicArrayListD ())
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "ThemesValidation" (fun arguments -> Obj.repr (new themesValidation (Obj.obj arguments)))



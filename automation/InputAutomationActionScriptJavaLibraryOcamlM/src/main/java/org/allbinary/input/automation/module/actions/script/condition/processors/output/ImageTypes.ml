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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.input.media.image.InputImageType *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

class imageTypes () =
  object
    val mutable vector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method vector = vector
    method set_vector value' = vector <- value'
    
    
    

    method getVector () : BasicArrayList.basicArrayList =
        begin
        (vector :> BasicArrayList.basicArrayList)
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let newNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((ImageActionScriptOutputData.get_tYPES ()))))) in ();
        let size : int ref = ref ((vector#size ())) in ();
        for index = 0 to !size - 1 do
            let imageType : InputImageType.inputImageType ref = ref (((Obj.magic (vector#get (index))) :> InputImageType.inputImageType)) in ();
            ignore ((Obj.magic !newNode)#appendChild ((ModDomHelper.createTextNode ((Obj.magic document), (ImageActionScriptOutputData.get_tYPE ()), (!imageType#getName ())))))
        done;
        (Obj.magic ((Obj.magic !newNode)))
        end [@@warning "-20"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("ImageTypes: "));
        let size : int ref = ref ((vector#size ())) in ();
        for index = 0 to !size - 1 do
            let imageType : InputImageType.inputImageType ref = ref (((Obj.magic (vector#get (index))) :> InputImageType.inputImageType)) in ();
            ignore (!stringBuffer#append ((!imageType#getName ())));
            if (index < (!size - 1)) then begin
                ignore (!stringBuffer#append (", "))
            end
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        vector <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ()
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "ImageTypes" (fun arguments -> Obj.repr (new imageTypes (Obj.obj arguments)))

let valueOf ((anyType : Obj.t array)) =
        begin
        let imageTypes : Obj.t ref = ref ((Obj.repr (new imageTypes ()))) in ();
        for index = 0 to (Array.length anyType) - 1 do
            let imageType : InputImageType.inputImageType ref = ref (((InputImageType.getInstance ((Obj.magic anyType.(index)))) :> InputImageType.inputImageType)) in ();
            ignore (((Obj.magic !imageTypes)#getVector ())#add (!imageType))
        done;
        (Obj.magic !imageTypes)
        end
let () = java_register_static "ImageTypes.valueOf" (fun arguments -> Obj.repr (valueOf (Obj.obj arguments)))



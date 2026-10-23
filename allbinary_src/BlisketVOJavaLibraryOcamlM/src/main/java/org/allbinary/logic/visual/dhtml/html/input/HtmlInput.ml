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
(* package org.allbinary.logic.visual.dhtml.html.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.visual.dhtml.html.HtmlTag *)

class htmlInput ((before_arg : string), (type__arg : string), (name_arg : string), (after_arg : string)) =
  object (self)
    inherit HtmlTag.htmlTag ()
    val mutable eND : string = ""
    method eND = eND
    method set_eND value' = eND <- value'
    val mutable sTARTINPUT : string = ""
    method sTARTINPUT = sTARTINPUT
    method set_sTARTINPUT value' = sTARTINPUT <- value'
    val mutable eNDINPUT : string = ""
    method eNDINPUT = eNDINPUT
    method set_eNDINPUT value' = eNDINPUT <- value'
    val mutable tYPE : string = ""
    method tYPE = tYPE
    method set_tYPE value' = tYPE <- value'
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable before : string = ""
    method before = before
    method set_before value' = before <- value'
    val mutable type_ : string = ""
    method type_ = type_
    method set_type_ value' = type_ <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable after : string = ""
    method after = after
    method set_after value' = after <- value'
    
    

    method toString () : string =
        begin
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        let result : string ref = ref (!stringUtil#eMPTY_STRING) in ();
        let attributeKeys : Obj.t array ref = ref ((((self#otherAttributes)#keySet ())#toArray ())) in ();
        let attributeSize : int ref = ref ((Array.length !attributeKeys)) in ();
        result := before;
        result := (!result ^ java_string_of (Obj.repr (sTARTINPUT)));
        result := (!result ^ java_string_of (Obj.repr (tYPE)));
        result := (!result ^ java_string_of (Obj.repr (type_)));
        result := (!result ^ java_string_of (Obj.repr ("\" ")));
        result := (!result ^ java_string_of (Obj.repr (nAME)));
        result := (!result ^ java_string_of (Obj.repr (name)));
        result := (!result ^ java_string_of (Obj.repr ("\" ")));
        for i = 0 to !attributeSize - 1 do
            let key : string ref = ref ((Obj.magic !attributeKeys.(i))) in ();
            let value : string ref = ref ((Obj.magic (otherAttributes#get (!key)))) in ();
            if ((!value <> (Obj.magic 0)) && ((String.compare !value (!stringUtil#eMPTY_STRING)) != 0)) then begin
                result := (!result ^ java_string_of (Obj.repr (!key)));
                result := (!result ^ java_string_of (Obj.repr ("=\"")));
                result := (!result ^ java_string_of (Obj.repr (!value)));
                result := (!result ^ java_string_of (Obj.repr ("\" ")))
            end
        done;
        result := (!result ^ java_string_of (Obj.repr (eND)));
        result := (!result ^ java_string_of (Obj.repr (eNDINPUT)));
        result := (!result ^ java_string_of (Obj.repr (after)));
        !result
        end [@@warning "-7"]

    initializer
      begin
        eND <- ">";
        sTARTINPUT <- "<INPUT ";
        eNDINPUT <- "</INPUT>";
        tYPE <- "TYPE=\"";
        nAME <- "NAME=\"";
        ();
        ();
        ();
        ();
        ();
        before <- before_arg;
        type_ <- type__arg;
        name <- name_arg;
        after <- after_arg
      end
  end
let () = java_register_constructor "HtmlInput" (fun arguments -> Obj.repr (new htmlInput (Obj.obj arguments)))



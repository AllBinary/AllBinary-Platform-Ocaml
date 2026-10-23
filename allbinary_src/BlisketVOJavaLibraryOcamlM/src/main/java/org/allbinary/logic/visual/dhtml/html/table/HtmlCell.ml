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
(* package org.allbinary.logic.visual.dhtml.html.table *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.visual.dhtml.html.HtmlTag *)

class htmlCell ((before_arg : string), (width_arg : string), (height_arg : string), (after_arg : string)) =
  object (self)
    inherit HtmlTag.htmlTag ()
    val mutable eND : string = ""
    method eND = eND
    method set_eND value' = eND <- value'
    val mutable sTART : string = ""
    method sTART = sTART
    method set_sTART value' = sTART <- value'
    val mutable eNDTAG : string = ""
    method eNDTAG = eNDTAG
    method set_eNDTAG value' = eNDTAG <- value'
    val mutable hEIGHT : string = ""
    method hEIGHT = hEIGHT
    method set_hEIGHT value' = hEIGHT <- value'
    val mutable wIDTH : string = ""
    method wIDTH = wIDTH
    method set_wIDTH value' = wIDTH <- value'
    val mutable height : string = ""
    method height = height
    method set_height value' = height <- value'
    val mutable width : string = ""
    method width = width
    method set_width value' = width <- value'
    val mutable before : string = ""
    method before = before
    method set_before value' = before <- value'
    val mutable body : string = ""
    method body = body
    method set_body value' = body <- value'
    val mutable after : string = ""
    method after = after
    method set_after value' = after <- value'
    
    

    method addText ((body_arg : string)) : unit =
        begin
        body <- body_arg
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        let result : string ref = ref (!stringUtil#eMPTY_STRING) in ();
        let attributeKeys : Obj.t array ref = ref ((((self#otherAttributes)#keySet ())#toArray ())) in ();
        let attributeSize : int ref = ref ((Array.length !attributeKeys)) in ();
        result := before;
        result := (!result ^ java_string_of (Obj.repr (sTART)));
        result := (!result ^ java_string_of (Obj.repr (" ")));
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
        result := (!result ^ java_string_of (Obj.repr (body)));
        result := (!result ^ java_string_of (Obj.repr (eNDTAG)));
        result := (!result ^ java_string_of (Obj.repr (after)));
        !result
        end [@@warning "-7"]

    initializer
      begin
        eND <- ">";
        sTART <- "<td ";
        eNDTAG <- "</td>";
        hEIGHT <- "height";
        wIDTH <- "width";
        ();
        ();
        ();
        body <- "";
        ();
        ();
        before <- (Obj.obj (java_new "String" (Obj.repr (before_arg))));
        after <- (Obj.obj (java_new "String" (Obj.repr (after_arg))));
        height <- (Obj.obj (java_new "String" (Obj.repr (height_arg))));
        width <- (Obj.obj (java_new "String" (Obj.repr (width_arg))));
        ignore (self#addAttribute (hEIGHT, height));
        ignore (self#addAttribute (wIDTH, width))
      end
  end
let () = java_register_constructor "HtmlCell" (fun arguments -> Obj.repr (new htmlCell (Obj.obj arguments)))



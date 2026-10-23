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
(* package org.allbinary.logic.visual.dhtml.html.select *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.io.LineReader *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.visual.dhtml.html.HtmlTag *)

class htmlSelect ((before_arg : string), (size_arg : string), (name_arg : string), (after_arg : string)) =
  object (self)
    inherit HtmlTag.htmlTag ()
    val mutable eND : string = ""
    method eND = eND
    method set_eND value' = eND <- value'
    val mutable sTARTSELECT : string = ""
    method sTARTSELECT = sTARTSELECT
    method set_sTARTSELECT value' = sTARTSELECT <- value'
    val mutable eNDSELECT : string = ""
    method eNDSELECT = eNDSELECT
    method set_eNDSELECT value' = eNDSELECT <- value'
    val mutable sIZE : string = ""
    method sIZE = sIZE
    method set_sIZE value' = sIZE <- value'
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable sTARTOPTION : string = ""
    method sTARTOPTION = sTARTOPTION
    method set_sTARTOPTION value' = sTARTOPTION <- value'
    val mutable sELETED : string = ""
    method sELETED = sELETED
    method set_sELETED value' = sELETED <- value'
    val mutable eNDOPTION : string = ""
    method eNDOPTION = eNDOPTION
    method set_eNDOPTION value' = eNDOPTION <- value'
    val mutable before : string = ""
    method before = before
    method set_before value' = before <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable after : string = ""
    method after = after
    method set_after value' = after <- value'
    val mutable size : string = ""
    method size = size
    method set_size value' = size <- value'
    val mutable selected : string = ""
    method selected = selected
    method set_selected value' = selected <- value'
    val mutable options : BasicArrayList.basicArrayList = (Obj.magic 0)
    method options = options
    method set_options value' = options <- value'
    val mutable multiple : string = ""
    method multiple = multiple
    method set_multiple value' = multiple <- value'
    val mutable isMultipleSelect : bool = false
    method isMultipleSelect = isMultipleSelect
    method set_isMultipleSelect value' = isMultipleSelect <- value'
    
    

    method addOption ((key : string)) : unit =
        begin
        ignore (options#add (key))
        end [@@warning "-7"]
    

    method addOptions ((fileName : string)) : unit =
        begin
        (try
            let lineReader : LineReader.lineReader ref = ref (((new LineReader.lineReader (fileName)) :> LineReader.lineReader)) in ();
            while (!lineReader#hasNext ()) do
                let option : string ref = ref ((!lineReader#next ())) in ();
                (self#addOption (!option))
            done
        with e -> begin
            (self#addOption ("Error"))
        end)
        end [@@warning "-7"]
    

    method setSelected ((selected_arg : string)) : unit =
        begin
        selected <- selected_arg
        end [@@warning "-7"]
    

    method isMultiple () : bool =
        begin
        isMultipleSelect
        end [@@warning "-7"]
    

    method setMultiple ((value : bool)) : unit =
        begin
        isMultipleSelect <- value
        end [@@warning "-7"]
    

    method getOptions () : string =
        begin
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        let result : string ref = ref (!stringUtil#eMPTY_STRING) in ();
        let optionsArray : Obj.t array ref = ref ((options#toArray ())) in ();
        let optionsSize : int ref = ref ((Array.length !optionsArray)) in ();
        for i = 0 to !optionsSize - 1 do
            let value : string ref = ref ((Obj.magic !optionsArray.(i))) in ();
            if ((!value != (Obj.magic 0)) && ((!value#compareTo (!stringUtil#eMPTY_STRING)) != 0)) then begin
                result := (!result ^ java_string_of (Obj.repr (sTARTOPTION)));
                result := (!result ^ java_string_of (Obj.repr (eND)));
                result := (!result ^ java_string_of (Obj.repr (!value)));
                result := (!result ^ java_string_of (Obj.repr (eNDOPTION)))
            end
        done;
        !result
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        let result : string ref = ref (!stringUtil#eMPTY_STRING) in ();
        let attributeKeys : Obj.t array ref = ref ((((self#otherAttributes)#keySet ())#toArray ())) in ();
        let attributeSize : int ref = ref ((Array.length !attributeKeys)) in ();
        result := before;
        result := (!result ^ java_string_of (Obj.repr (sTARTSELECT)));
        result := (!result ^ java_string_of (Obj.repr (nAME)));
        result := (!result ^ java_string_of (Obj.repr (name)));
        result := (!result ^ java_string_of (Obj.repr ("\" ")));
        result := (!result ^ java_string_of (Obj.repr (sIZE)));
        result := (!result ^ java_string_of (Obj.repr (size)));
        result := (!result ^ java_string_of (Obj.repr ("\" ")));
        for i = 0 to !attributeSize - 1 do
            let key : string ref = ref ((Obj.magic !attributeKeys.(i))) in ();
            let value : string ref = ref ((Obj.magic (otherAttributes#get (!key)))) in ();
            if ((!value != (Obj.magic 0)) && ((!value#compareTo (!stringUtil#eMPTY_STRING)) != 0)) then begin
                result := (!result ^ java_string_of (Obj.repr (!key)));
                result := (!result ^ java_string_of (Obj.repr ("=\"")));
                result := (!result ^ java_string_of (Obj.repr (!value)));
                result := (!result ^ java_string_of (Obj.repr ("\" ")))
            end
        done;
        if (self#isMultiple ()) then begin
            result := (!result ^ java_string_of (Obj.repr (((" " ^ multiple) ^ " "))))
        end;
        result := (!result ^ java_string_of (Obj.repr (eND)));
        result := (!result ^ java_string_of (Obj.repr ((self#getOptions ()))));
        result := (!result ^ java_string_of (Obj.repr (eNDSELECT)));
        result := (!result ^ java_string_of (Obj.repr (after)));
        !result
        end [@@warning "-7"]

    initializer
      begin
        eND <- ">";
        sTARTSELECT <- "<SELECT ";
        eNDSELECT <- "</SELECT>";
        sIZE <- "SIZE=\"";
        nAME <- "NAME=\"";
        sTARTOPTION <- "<OPTION";
        sELETED <- "SELECTED";
        eNDOPTION <- "</OPTION>";
        ();
        ();
        ();
        ();
        selected <- "";
        ();
        multiple <- "multiple";
        isMultipleSelect <- false;
        ();
        before <- before_arg;
        size <- size_arg;
        name <- name_arg;
        after <- after_arg;
        options <- (new BasicArrayListD.basicArrayListD ())
      end
  end
let () = java_register_constructor "HtmlSelect" (fun arguments -> Obj.repr (new htmlSelect (Obj.obj arguments)))



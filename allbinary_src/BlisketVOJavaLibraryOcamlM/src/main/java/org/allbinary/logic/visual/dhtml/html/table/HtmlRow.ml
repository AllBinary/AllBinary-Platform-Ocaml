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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.visual.dhtml.html.HtmlTag *)

class htmlRow ((before_arg : string), (after_arg : string)) =
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
    val mutable numberOfColumns : int = 0
    method numberOfColumns = numberOfColumns
    method set_numberOfColumns value' = numberOfColumns <- value'
    val mutable before : string = ""
    method before = before
    method set_before value' = before <- value'
    val mutable after : string = ""
    method after = after
    method set_after value' = after <- value'
    val mutable htmlCellsVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method htmlCellsVector = htmlCellsVector
    method set_htmlCellsVector value' = htmlCellsVector <- value'
    
    

    method addCell : 'any1. 'any1 -> unit = fun (htmlCell) ->
        let htmlCell = Obj.repr htmlCell in
        begin
        ignore (htmlCellsVector#add ((Obj.magic htmlCell)));
        numberOfColumns <- numberOfColumns + 1
        end [@@warning "-7-20"]
    

    method getNumberOfColumns () : int =
        begin
        numberOfColumns
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        let result : string ref = ref (!stringUtil#eMPTY_STRING) in ();
        let attributeKeys : Obj.t array ref = ref ((((self#otherAttributes)#keySet ())#toArray ())) in ();
        let attributeSize : int ref = ref ((Array.length !attributeKeys)) in ();
        let cellSize : int ref = ref ((htmlCellsVector#size ())) in ();
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
        for i = 0 to !cellSize - 1 do
            result := (!result ^ java_string_of (Obj.repr ((java_string_of (Obj.repr (htmlCellsVector#get (i)))))));
            result := (!result ^ java_string_of (Obj.repr (" ")))
        done;
        result := (!result ^ java_string_of (Obj.repr (eNDTAG)));
        result := (!result ^ java_string_of (Obj.repr (after)));
        !result
        end [@@warning "-7"]

    initializer
      begin
        eND <- ">";
        sTART <- "<tr ";
        eNDTAG <- "</tr>";
        numberOfColumns <- 0;
        ();
        ();
        ();
        ();
        before <- (Obj.obj (java_new "String" (Obj.repr (before_arg))));
        after <- (Obj.obj (java_new "String" (Obj.repr (after_arg))));
        htmlCellsVector <- (new BasicArrayListD.basicArrayListD ())
      end
  end
let () = java_register_constructor "HtmlRow" (fun arguments -> Obj.repr (new htmlRow (Obj.obj arguments)))



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
(* import org.allbinary.string.CommonPhoneStrings *)

class htmlTable ((before_arg : string), (cellpadding_arg : string), (cellspacing_arg : string), (after_arg : string)) =
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
    val mutable cLASS : string = ""
    method cLASS = cLASS
    method set_cLASS value' = cLASS <- value'
    val mutable dIRECTION : string = ""
    method dIRECTION = dIRECTION
    method set_dIRECTION value' = dIRECTION <- value'
    val mutable iD : string = ""
    method iD = iD
    method set_iD value' = iD <- value'
    val mutable lANG : string = ""
    method lANG = lANG
    method set_lANG value' = lANG <- value'
    val mutable uNITS : string = ""
    method uNITS = uNITS
    method set_uNITS value' = uNITS <- value'
    val mutable bORDER : string = ""
    method bORDER = bORDER
    method set_bORDER value' = bORDER <- value'
    val mutable cELLPADDING : string = ""
    method cELLPADDING = cELLPADDING
    method set_cELLPADDING value' = cELLPADDING <- value'
    val mutable cELLSPACING : string = ""
    method cELLSPACING = cELLSPACING
    method set_cELLSPACING value' = cELLSPACING <- value'
    val mutable cOLS : string = ""
    method cOLS = cOLS
    method set_cOLS value' = cOLS <- value'
    val mutable fLOAT : string = ""
    method fLOAT = fLOAT
    method set_fLOAT value' = fLOAT <- value'
    val mutable fRAME : string = ""
    method fRAME = fRAME
    method set_fRAME value' = fRAME <- value'
    val mutable rULES : string = ""
    method rULES = rULES
    method set_rULES value' = rULES <- value'
    val mutable sTYLE : string = ""
    method sTYLE = sTYLE
    method set_sTYLE value' = sTYLE <- value'
    val mutable bORDERCOLLAPSE : string = ""
    method bORDERCOLLAPSE = bORDERCOLLAPSE
    method set_bORDERCOLLAPSE value' = bORDERCOLLAPSE <- value'
    val mutable numberOfColumns : int = 0
    method numberOfColumns = numberOfColumns
    method set_numberOfColumns value' = numberOfColumns <- value'
    val mutable before : string = ""
    method before = before
    method set_before value' = before <- value'
    val mutable border : string = ""
    method border = border
    method set_border value' = border <- value'
    val mutable cellpadding : string = ""
    method cellpadding = cellpadding
    method set_cellpadding value' = cellpadding <- value'
    val mutable cellspacing : string = ""
    method cellspacing = cellspacing
    method set_cellspacing value' = cellspacing <- value'
    val mutable style : string = ""
    method style = style
    method set_style value' = style <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable after : string = ""
    method after = after
    method set_after value' = after <- value'
    val mutable htmlRowsVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method htmlRowsVector = htmlRowsVector
    method set_htmlRowsVector value' = htmlRowsVector <- value'
    
    

    method addRow : 'any1. 'any1 -> unit = fun (htmlRow) ->
        let htmlRow = Obj.repr htmlRow in
        begin
        if (numberOfColumns < ((Obj.magic htmlRow)#getNumberOfColumns ())) then begin
            numberOfColumns <- ((Obj.magic htmlRow)#getNumberOfColumns ())
        end;
        ignore (htmlRowsVector#add ((Obj.magic htmlRow)))
        end [@@warning "-7-20"]
    

    method toString () : string =
        begin
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        let result : string ref = ref (!stringUtil#eMPTY_STRING) in ();
        let attributeKeys : Obj.t array ref = ref (((otherAttributes#keySet ())#toArray ())) in ();
        result := before;
        result := (!result ^ java_string_of (Obj.repr (sTART)));
        result := (!result ^ java_string_of (Obj.repr (" ")));
        for i = 0 to (Array.length !attributeKeys) - 1 do
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
        let size : int ref = ref ((htmlRowsVector#size ())) in ();
        for i = 0 to !size - 1 do
            result := (!result ^ java_string_of (Obj.repr ((java_string_of (Obj.repr (htmlRowsVector#get (i)))))));
            result := (!result ^ java_string_of (Obj.repr (" ")))
        done;
        result := (!result ^ java_string_of (Obj.repr (eNDTAG)));
        result := (!result ^ java_string_of (Obj.repr (after)));
        !result
        end [@@warning "-7"]

    initializer
      begin
        eND <- ">";
        sTART <- "<table ";
        eNDTAG <- "</table>";
        cLASS <- "class";
        dIRECTION <- "dir";
        iD <- "id";
        lANG <- "lang";
        uNITS <- "units";
        bORDER <- "border";
        cELLPADDING <- "cellpadding";
        cELLSPACING <- "cellspacing";
        cOLS <- "cols";
        fLOAT <- "float";
        fRAME <- "frame";
        rULES <- "rules";
        sTYLE <- "style";
        bORDERCOLLAPSE <- "border-collapse: collapse";
        numberOfColumns <- 0;
        ();
        border <- "";
        ();
        ();
        style <- "";
        name <- "";
        ();
        ();
        ();
        before <- before_arg;
        cellpadding <- cellpadding_arg;
        cellspacing <- cellspacing_arg;
        after <- after_arg;
        htmlRowsVector <- (new BasicArrayListD.basicArrayListD ());
        ignore (self#addAttribute (bORDER, (CommonPhoneStrings.getInstance ())#zERO));
        ignore (self#addAttribute (cELLPADDING, cellpadding));
        ignore (self#addAttribute (cELLSPACING, cellspacing));
        ignore (self#addAttribute (sTYLE, bORDERCOLLAPSE))
      end
  end
let () = java_register_constructor "HtmlTable" (fun arguments -> Obj.repr (new htmlTable (Obj.obj arguments)))



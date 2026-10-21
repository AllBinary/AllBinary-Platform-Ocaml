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
(* package org.allbinary.logic.visual.dhtml.html *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.visual.dhtml.html.input.HtmlInput *)
(* import org.allbinary.logic.visual.dhtml.html.table.HtmlTable *)

class htmlForm ((action_arg : string)) =
  object
    val mutable fORMBEGIN : string = ""
    method fORMBEGIN = fORMBEGIN
    method set_fORMBEGIN value' = fORMBEGIN <- value'
    val mutable eND : string = ""
    method eND = eND
    method set_eND value' = eND <- value'
    val mutable fORMEND : string = ""
    method fORMEND = fORMEND
    method set_fORMEND value' = fORMEND <- value'
    val mutable aCTION : string = ""
    method aCTION = aCTION
    method set_aCTION value' = aCTION <- value'
    val mutable gET : string = ""
    method gET = gET
    method set_gET value' = gET <- value'
    val mutable pOST : string = ""
    method pOST = pOST
    method set_pOST value' = pOST <- value'
    val mutable mETHODS : string array = (Obj.magic 0)
    method mETHODS = mETHODS
    method set_mETHODS value' = mETHODS <- value'
    val mutable mETHOD : string = ""
    method mETHOD = mETHOD
    method set_mETHOD value' = mETHOD <- value'
    val mutable method_ : string = ""
    method method_ = method_
    method set_method_ value' = method_ <- value'
    val mutable action : string = ""
    method action = action
    method set_action value' = action <- value'
    val mutable inputs : BasicArrayList.basicArrayList = (Obj.magic 0)
    method inputs = inputs
    method set_inputs value' = inputs <- value'
    
    

    method setPost () : unit =
        begin
        method_ <- pOST
        end
    

    method setGet () : unit =
        begin
        method_ <- gET
        end
    

    method addInput : 'any1. 'any1 -> unit = fun (htmlInput) ->
        let htmlInput = Obj.repr htmlInput in
        begin
        ignore (inputs#add ((Obj.magic htmlInput)))
        end [@@warning "-20"]
    

    method addTable : 'any1. 'any1 -> unit = fun (htmlTable) ->
        let htmlTable = Obj.repr htmlTable in
        begin
        ignore (inputs#add ((Obj.magic htmlTable)))
        end [@@warning "-20"]
    

    method toString () : string =
        begin
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        let result : string ref = ref (!stringUtil#eMPTY_STRING) in ();
        let inputArray : Obj.t array ref = ref ((inputs#toArray ())) in ();
        let inputSize : int ref = ref ((Array.length !inputArray)) in ();
        result := fORMBEGIN;
        result := (!result ^ java_string_of (Obj.repr (mETHOD)));
        result := (!result ^ java_string_of (Obj.repr (method_)));
        result := (!result ^ java_string_of (Obj.repr ("\" ")));
        result := (!result ^ java_string_of (Obj.repr (aCTION)));
        result := (!result ^ java_string_of (Obj.repr (action)));
        result := (!result ^ java_string_of (Obj.repr ("\" ")));
        result := (!result ^ java_string_of (Obj.repr (eND)));
        for i = 0 to !inputSize - 1 do
            result := (!result ^ java_string_of (Obj.repr ((java_string_of (Obj.repr !inputArray.(i))))));
            result := (!result ^ java_string_of (Obj.repr (" ")))
        done;
        result := (!result ^ java_string_of (Obj.repr (fORMEND)));
        !result
        end

    initializer
      begin
        fORMBEGIN <- "<form ";
        eND <- ">";
        fORMEND <- "</form>";
        aCTION <- "ACTION=\"";
        gET <- "GET\"";
        pOST <- "POST\"";
        mETHODS <- [| gET; pOST |];
        mETHOD <- "METHOD=\"";
        method_ <- "";
        ();
        ();
        ();
        action <- action_arg;
        inputs <- (new BasicArrayListD.basicArrayListD ())
      end
  end
let () = java_register_constructor "HtmlForm" (fun arguments -> Obj.repr (new htmlForm (Obj.obj arguments)))



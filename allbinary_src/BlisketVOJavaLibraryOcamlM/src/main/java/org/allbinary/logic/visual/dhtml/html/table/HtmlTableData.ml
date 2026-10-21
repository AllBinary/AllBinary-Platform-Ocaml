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
(* import org.allbinary.string.CommonStrings *)

class htmlTableData () =
  object
    val mutable lEFT : string = ""
    method lEFT = lEFT
    method set_lEFT value' = lEFT <- value'
    val mutable rIGHT : string = ""
    method rIGHT = rIGHT
    method set_rIGHT value' = rIGHT <- value'
    val mutable nONE : string = ""
    method nONE = nONE
    method set_nONE value' = nONE <- value'
    val mutable tOP : string = ""
    method tOP = tOP
    method set_tOP value' = tOP <- value'
    val mutable bOTTOM : string = ""
    method bOTTOM = bOTTOM
    method set_bOTTOM value' = bOTTOM <- value'
    val mutable tOPBOT : string = ""
    method tOPBOT = tOPBOT
    method set_tOPBOT value' = tOPBOT <- value'
    val mutable sIDES : string = ""
    method sIDES = sIDES
    method set_sIDES value' = sIDES <- value'
    val mutable aLL : string = ""
    method aLL = aLL
    method set_aLL value' = aLL <- value'
    val mutable bORDERED : string = ""
    method bORDERED = bORDERED
    method set_bORDERED value' = bORDERED <- value'
    val mutable bASIC : string = ""
    method bASIC = bASIC
    method set_bASIC value' = bASIC <- value'
    val mutable rOWS : string = ""
    method rOWS = rOWS
    method set_rOWS value' = rOWS <- value'
    val mutable fRAMES : string array = (Obj.magic 0)
    method fRAMES = fRAMES
    method set_fRAMES value' = fRAMES <- value'

    initializer
      begin
        lEFT <- (CommonStrings.getInstance ())#lEFT;
        rIGHT <- (CommonStrings.getInstance ())#rIGHT;
        nONE <- "none";
        tOP <- "top";
        bOTTOM <- "bottom";
        tOPBOT <- "topbot";
        sIDES <- "sides";
        aLL <- "all";
        bORDERED <- "border";
        bASIC <- "basic";
        rOWS <- "rows";
        fRAMES <- [| nONE; tOP; bOTTOM; tOPBOT; sIDES; aLL; bORDERED |];
        ()
      end
  end
let () = java_register_constructor "HtmlTableData" (fun arguments -> Obj.repr (new htmlTableData (Obj.obj arguments)))

let instance = (new htmlTableData ())
let get_instance () = instance
let () = java_register_static "HtmlTableData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "HtmlTableData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



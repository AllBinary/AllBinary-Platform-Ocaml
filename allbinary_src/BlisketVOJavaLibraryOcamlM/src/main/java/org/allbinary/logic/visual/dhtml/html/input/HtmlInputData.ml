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

class htmlInputData () =
  object
    val mutable tEXT : string = ""
    method tEXT = tEXT
    method set_tEXT value' = tEXT <- value'
    val mutable rADIO : string = ""
    method rADIO = rADIO
    method set_rADIO value' = rADIO <- value'
    val mutable cHECKBOX : string = ""
    method cHECKBOX = cHECKBOX
    method set_cHECKBOX value' = cHECKBOX <- value'
    val mutable hIDDEN : string = ""
    method hIDDEN = hIDDEN
    method set_hIDDEN value' = hIDDEN <- value'
    val mutable iMAGE : string = ""
    method iMAGE = iMAGE
    method set_iMAGE value' = iMAGE <- value'
    val mutable pASSWORD : string = ""
    method pASSWORD = pASSWORD
    method set_pASSWORD value' = pASSWORD <- value'
    val mutable rESET : string = ""
    method rESET = rESET
    method set_rESET value' = rESET <- value'
    val mutable sUBMIT : string = ""
    method sUBMIT = sUBMIT
    method set_sUBMIT value' = sUBMIT <- value'
    val mutable tYPES : string array = (Obj.magic 0)
    method tYPES = tYPES
    method set_tYPES value' = tYPES <- value'

    initializer
      begin
        tEXT <- "text";
        rADIO <- "radio";
        cHECKBOX <- "checkbox";
        hIDDEN <- "hidden";
        iMAGE <- "image";
        pASSWORD <- "password";
        rESET <- "reset";
        sUBMIT <- "submit";
        tYPES <- [| tEXT; rADIO; cHECKBOX; hIDDEN; iMAGE; pASSWORD; rADIO; rESET; sUBMIT |];
        ()
      end
  end
let () = java_register_constructor "HtmlInputData" (fun arguments -> Obj.repr (new htmlInputData (Obj.obj arguments)))

let instance = (new htmlInputData ())
let get_instance () = instance
let () = java_register_static "HtmlInputData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "HtmlInputData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



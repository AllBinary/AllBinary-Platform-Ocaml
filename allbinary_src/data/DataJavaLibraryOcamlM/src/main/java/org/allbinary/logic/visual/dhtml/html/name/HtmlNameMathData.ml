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
(* package org.allbinary.logic.visual.dhtml.html.name *)

open Allbinary_java [@@warning "-33"]

class htmlNameMathData () =
  object
    val mutable eQUALS : string = ""
    method eQUALS = eQUALS
    method set_eQUALS value' = eQUALS <- value'
    val mutable pLUS : string = ""
    method pLUS = pLUS
    method set_pLUS value' = pLUS <- value'
    val mutable mINUS : string = ""
    method mINUS = mINUS
    method set_mINUS value' = mINUS <- value'
    val mutable dIVIDE : string = ""
    method dIVIDE = dIVIDE
    method set_dIVIDE value' = dIVIDE <- value'
    val mutable mULTIPLY : string = ""
    method mULTIPLY = mULTIPLY
    method set_mULTIPLY value' = mULTIPLY <- value'
    

    initializer
      begin
        eQUALS <- "_EQUALS_";
        pLUS <- "_PLUS_";
        mINUS <- "_MINUS_";
        dIVIDE <- "_DIVIDE_";
        mULTIPLY <- "_MULTIPLY_";
        ();
        ()
      end
  end
let () = java_register_constructor "HtmlNameMathData" (fun arguments -> Obj.repr (new htmlNameMathData (Obj.obj arguments)))

let instance = (new htmlNameMathData ())
let get_instance () = instance
let () = java_register_static "HtmlNameMathData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "HtmlNameMathData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



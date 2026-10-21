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
(* package org.allbinary.graphics.form *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.logic.string.StringUtil *)

class formTypeFactory () =
  object
    val mutable uNK : string = ""
    method uNK = uNK
    method set_uNK value' = uNK <- value'
    val mutable nULL_FORM_TYPE : FormType.formType = (Obj.magic 0)
    method nULL_FORM_TYPE = nULL_FORM_TYPE
    method set_nULL_FORM_TYPE value' = nULL_FORM_TYPE <- value'
    val mutable tEMP_HORIZONTAL_FORM : FormType.formType = (Obj.magic 0)
    method tEMP_HORIZONTAL_FORM = tEMP_HORIZONTAL_FORM
    method set_tEMP_HORIZONTAL_FORM value' = tEMP_HORIZONTAL_FORM <- value'
    val mutable hORIZONTAL_FORM : FormType.formType = (Obj.magic 0)
    method hORIZONTAL_FORM = hORIZONTAL_FORM
    method set_hORIZONTAL_FORM value' = hORIZONTAL_FORM <- value'
    val mutable vERTICAL_CENTER_FORM : FormType.formType = (Obj.magic 0)
    method vERTICAL_CENTER_FORM = vERTICAL_CENTER_FORM
    method set_vERTICAL_CENTER_FORM value' = vERTICAL_CENTER_FORM <- value'
    

    method getFormType () : FormType.formType =
        begin
        let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        let formType : FormType.formType ref = ref (((Obj.magic 0) :> FormType.formType)) in ();
        if (!displayInfo#isPortrait ()) then begin
            formType := vERTICAL_CENTER_FORM
        end else begin
            formType := hORIZONTAL_FORM
        end;
        (!formType :> FormType.formType)
        end

    initializer
      begin
        uNK <- "Unknown FormType";
        nULL_FORM_TYPE <- ((new FormType.formType ((StringUtil.getInstance ())#nULL_STRING)) :> FormType.formType);
        tEMP_HORIZONTAL_FORM <- ((new FormType.formType ("TempHorizontal")) :> FormType.formType);
        hORIZONTAL_FORM <- ((new FormType.formType ("Horizontal")) :> FormType.formType);
        vERTICAL_CENTER_FORM <- ((new FormType.formType ("Vertical")) :> FormType.formType);
        ()
      end
  end
let () = java_register_constructor "FormTypeFactory" (fun arguments -> Obj.repr (new formTypeFactory (Obj.obj arguments)))

let instance = (new formTypeFactory ())
let get_instance () = instance
let () = java_register_static "FormTypeFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "FormTypeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



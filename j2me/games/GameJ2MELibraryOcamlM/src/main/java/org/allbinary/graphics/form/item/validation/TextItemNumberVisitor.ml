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
(* package org.allbinary.graphics.form.item.validation *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.TextNotificationUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.util.visitor.Visitor *)
(* import org.allbinary.string.CommonStrings *)

class textItemNumberVisitor () =
  object (self)
    inherit Visitor.visitor ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method visit : 'any1. 'any1 -> Obj.t = fun (anyType) ->
        let anyType = Obj.repr anyType in
        try
        begin
        let value : string ref = ref ((Obj.magic anyType)) in ();
        if ((String.length !value) < 2) then begin
            let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
            if (!stringValidationUtil#isNumber (!value)) then begin
                raise (Java_return (Obj.repr ((BooleanFactory.getInstance ())#tRUE)))
            end else begin
                (try
                    ignore ((TextNotificationUtil.getInstance ())#fireError ("Numbers Only"))
                with e -> begin
                    let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                    ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#vISIT, e))
                end);
                raise (Java_return (Obj.repr ((BooleanFactory.getInstance ())#fALSE)))
            end
        end else begin
            raise (Java_return (Obj.repr ((BooleanFactory.getInstance ())#fALSE)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "TextItemNumberVisitor" (fun arguments -> Obj.repr (new textItemNumberVisitor (Obj.obj arguments)))



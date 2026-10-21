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
(* package org.allbinary.logic.communication.smtp.info *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class emailInfo ((basicEmailInfo_arg : BasicEmailInfo.basicEmailInfo)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable basicEmailInfo : BasicEmailInfo.basicEmailInfo = (Obj.magic 0)
    method basicEmailInfo = basicEmailInfo
    method set_basicEmailInfo value' = basicEmailInfo <- value'
    val mutable htmlAttachment : string = ""
    method htmlAttachment = htmlAttachment
    method set_htmlAttachment value' = htmlAttachment <- value'
    val mutable contentBase : string = ""
    method contentBase = contentBase
    method set_contentBase value' = contentBase <- value'
    
    
    

    method init : 'any1. 'any1 * string * string -> unit = fun (basicEmailInfo_arg, (htmlAttachment_arg : string), (contentBase_arg : string)) ->
        let basicEmailInfo_arg = Obj.repr basicEmailInfo_arg in
        begin
        basicEmailInfo <- (Obj.magic basicEmailInfo_arg);
        htmlAttachment <- htmlAttachment_arg;
        contentBase <- contentBase_arg
        end [@@warning "-20"]
    

    method getBasicEmailInfo () : BasicEmailInfo.basicEmailInfo =
        begin
        (basicEmailInfo :> BasicEmailInfo.basicEmailInfo)
        end
    

    method getHtmlAttachment () : string =
        begin
        htmlAttachment
        end
    

    method getContentBase () : string =
        begin
        contentBase
        end
    

    method toString () : string =
        begin
        ("Email Info: \n " ^ (java_string_of (Obj.repr (self#getBasicEmailInfo ()))))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        basicEmailInfo <- ((Obj.magic 0) :> BasicEmailInfo.basicEmailInfo);
        htmlAttachment <- "";
        contentBase <- "";
        ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGING)) then begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#putF (!commonStrings#sTART, self, !commonStrings#cONSTRUCTOR))
        end;
        (self#init (basicEmailInfo_arg, (Obj.magic 0), (Obj.magic 0)))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "EmailInfo" (fun arguments -> Obj.repr (new emailInfo (Obj.obj arguments)))



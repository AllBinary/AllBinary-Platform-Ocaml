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
(* import org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)

class basicEmailInfo ((subject_arg : string), (textBody_arg : string)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable subject : string = ""
    method subject = subject
    method set_subject value' = subject <- value'
    val mutable textBody : string = ""
    method textBody = textBody
    method set_textBody value' = textBody <- value'
    val mutable emailServerConfigurationInterface : EmailServerConfigurationInterface.emailServerConfigurationInterface = (Obj.magic 0)
    method emailServerConfigurationInterface = emailServerConfigurationInterface
    method set_emailServerConfigurationInterface value' = emailServerConfigurationInterface <- value'
    
    

    method getSubject () : string =
        begin
        subject
        end
    

    method getTextBody () : string =
        begin
        textBody
        end
    

    method getEmailServerConfigurationInterface () : EmailServerConfigurationInterface.emailServerConfigurationInterface =
        begin
        (emailServerConfigurationInterface :> EmailServerConfigurationInterface.emailServerConfigurationInterface)
        end
    

    method setEmailServerConfigurationInterface : 'any1. 'any1 -> unit = fun (emailServerConfigurationInterface_arg) ->
        let emailServerConfigurationInterface_arg = Obj.repr emailServerConfigurationInterface_arg in
        begin
        emailServerConfigurationInterface <- (Obj.magic emailServerConfigurationInterface_arg)
        end [@@warning "-20"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (self#getEmailServerConfigurationInterface ())))));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#nEW_LINE));
        ignore (!stringBuffer#append ("Subject: \n"));
        ignore (!stringBuffer#append ((self#getSubject ())));
        ignore (!stringBuffer#append ("\nText Body: \n"));
        ignore (!stringBuffer#append ((self#getTextBody ())));
        (java_string_of (Obj.repr !stringBuffer))
        end
    

    method init () : unit =
        begin
        raise (Failure ("RuntimeException"))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        emailServerConfigurationInterface <- ((Obj.magic 0) :> EmailServerConfigurationInterface.emailServerConfigurationInterface);
        ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGING)) then begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#putF (!commonStrings#sTART, self, !commonStrings#cONSTRUCTOR))
        end;
        subject <- subject_arg;
        textBody <- textBody_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicEmailInfo" (fun arguments -> Obj.repr (new basicEmailInfo (Obj.obj arguments)))



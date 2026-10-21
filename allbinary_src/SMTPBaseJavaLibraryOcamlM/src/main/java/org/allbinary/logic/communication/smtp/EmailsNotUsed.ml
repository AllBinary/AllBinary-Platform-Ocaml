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
(* package org.allbinary.logic.communication.smtp *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tree.dom.BasicErrorNodeUtil *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class emailsNotUsed () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable emailInfoVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method emailInfoVector = emailInfoVector
    method set_emailInfoVector value' = emailInfoVector <- value'
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pAYMENT)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "toXmlNode"))
            end;
            let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((EmailData.get_nAME ()))))) in ();
            let size : int ref = ref ((emailInfoVector#size ())) in ();
            for index = 0 to !size - 1 do
                let email : Email.email ref = ref (((Obj.magic (emailInfoVector#get (index))) :> Email.email)) in ();
                let emailNode : Obj.t ref = ref ((Obj.repr (!email#toXmlNode ((Obj.magic document))))) in ();
                if ((Obj.magic !emailNode) != (Obj.magic 0)) then begin
                    ignore ((Obj.magic !node)#appendChild ((Obj.magic !emailNode)))
                end
            done;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pAYMENT)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#eND, self, "toXmlNode()"))
            end;
            (Obj.magic ((Obj.magic !node)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "toXmlNode()", e))
            end;
            let error : string ref = ref ("Error Processing Order.  Please contact us if error persists.<p/>") in ();
            (Obj.magic ((BasicErrorNodeUtil.get ((Obj.magic document), !error))))
        end)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        emailInfoVector <- (new BasicArrayListD.basicArrayListD ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "EmailsNotUsed" (fun arguments -> Obj.repr (new emailsNotUsed (Obj.obj arguments)))



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
(* package org.allbinary.logic.control.workflow *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.lang.reflect.Method *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class workFlowWrapper ((anyType_arg : Obj.t)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable anyType : Obj.t = (Obj.magic 0)
    method anyType = anyType
    method set_anyType value' = anyType <- value'
    
    

    method getWorkFlowObject () : Obj.t =
        begin
        (Obj.repr (anyType))
        end
    

    method getName () : string =
        begin
        (try
            let helperClass : string ref = ref ((java_get_class (Obj.repr anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!helperClass#getMethod ("getName", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (anyType, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            let error : string ref = ref ("Reflection Exception") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "getName()", e))
            end;
            raise (Failure (!error))
        end)
        end
    

    method getStoreName () : string =
        begin
        (try
            let helperClass : string ref = ref ((java_get_class (Obj.repr anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!helperClass#getMethod ("getStoreName", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (anyType, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            let error : string ref = ref ("Reflection Exception") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "getStoreName()", e))
            end;
            raise (Failure (!error))
        end)
        end
    

    method process () : int =
        begin
        (try
            let helperClass : string ref = ref ((java_get_class (Obj.repr anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!helperClass#getMethod (commonStrings#pROCESS, (Obj.magic 0))))) in ();
            let result : int ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (anyType, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            let error : string ref = ref ("Reflection Exception") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#pROCESS, e))
            end;
            raise (Failure (!error))
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        anyType <- anyType_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "WorkFlowWrapper" (fun arguments -> Obj.repr (new workFlowWrapper (Obj.obj arguments)))



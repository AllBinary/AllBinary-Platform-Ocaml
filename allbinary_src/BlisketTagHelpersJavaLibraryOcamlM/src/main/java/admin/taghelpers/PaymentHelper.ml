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
(* package admin.taghelpers *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.installer.Portion *)
(* import org.allbinary.business.user.commerce.money.payment.PaymentFactory *)
(* import org.allbinary.business.user.commerce.money.payment.PaymentInterface *)
(* import org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity *)
(* import org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSession *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlTableUtil *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)

class paymentHelper ((hashMap : java_hash_map), pageContext) =
  object (self)
    inherit Table.table ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable weblisketSession : WeblisketSession.weblisketSession = (Obj.magic 0)
    method weblisketSession = weblisketSession
    method set_weblisketSession value' = weblisketSession <- value'
    val mutable request : Obj.t = Obj.repr 0
    method request : 'r. 'r = Obj.magic request
    method set_request : 'v. 'v -> unit = fun value' -> request <- Obj.repr value'
    val mutable value : string = ""
    method value = value
    method set_value value' = value <- value'
    val mutable portion : Portion.portion = (Obj.magic 0)
    method portion = portion
    method set_portion value' = portion <- value'
    
    

    method getFormData () : unit =
        begin
        value <- ((Obj.magic request)#getParameter ("VALUE"))
        end [@@warning "-7"]
    

    method insert () : string =
        begin
        (try
            let success : string ref = ref ("Successfully Added Payment") in ();
            let paymentEntity : PaymentEntity.paymentEntity ref = ref ((((PaymentEntityFactory.getInstance ())#getPaymentEntityInstance ()) :> PaymentEntity.paymentEntity)) in ();
            let paymentInterface : PaymentInterface.paymentInterface ref = ref (((PaymentFactory.getInstance ((Obj.magic request))) :> PaymentInterface.paymentInterface)) in ();
            ignore (!paymentEntity#add ((weblisketSession#getUserName ()), !paymentInterface));
            ignore (!paymentEntity#setDefault ((weblisketSession#getUserName ()), (Obj.obj (java_new "Integer" (Obj.repr ((!paymentEntity#getLastId ((weblisketSession#getUserName ())))))))));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "addPayment()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to add Payment") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "addPayment()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method select () : string =
        begin
        (try
            let success : string ref = ref ("Successfully Selected Payment") in ();
            let paymentEntity : PaymentEntity.paymentEntity ref = ref ((((PaymentEntityFactory.getInstance ())#getPaymentEntityInstance ()) :> PaymentEntity.paymentEntity)) in ();
            ignore (!paymentEntity#setDefault ((weblisketSession#getUserName ()), (Obj.obj (java_new "Integer" (Obj.repr (value))))));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "selectPayment()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to select Payment") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "selectPayment()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method delete () : string =
        begin
        (try
            let success : string ref = ref ("Successfully Removed Payment") in ();
            let paymentEntity : PaymentEntity.paymentEntity ref = ref ((((PaymentEntityFactory.getInstance ())#getPaymentEntityInstance ()) :> PaymentEntity.paymentEntity)) in ();
            ignore (!paymentEntity#remove ((weblisketSession#getUserName ()), (Obj.obj (java_new "Integer" (Obj.repr (value))))));
            let paymentInterface : PaymentInterface.paymentInterface ref = ref (((!paymentEntity#getDefault ((weblisketSession#getUserName ()))) :> PaymentInterface.paymentInterface)) in ();
            if (!paymentInterface == (Obj.magic 0)) then begin
                ignore (!paymentEntity#setDefault ((weblisketSession#getUserName ()), (Obj.obj (java_new "Integer" (Obj.repr ((!paymentEntity#getLastId ((weblisketSession#getUserName ())))))))))
            end;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "removePayment()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to remove Payment") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "removePayment()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method drop () : string =
        begin
        (try
            let paymentEntity : PaymentEntity.paymentEntity ref = ref ((((PaymentEntityFactory.getInstance ())#getPaymentEntityInstance ()) :> PaymentEntity.paymentEntity)) in ();
            let success : string ref = ref ((!paymentEntity#dropTable ())) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, (self#commonStrings)#dROP))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to drop Admin table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#commonStrings)#dROP, e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method create () : string =
        begin
        (try
            let paymentEntity : PaymentEntity.paymentEntity ref = ref ((((PaymentEntityFactory.getInstance ())#getPaymentEntityInstance ()) :> PaymentEntity.paymentEntity)) in ();
            let success : string ref = ref ((!paymentEntity#createTable ())) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "create()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to create user table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "create()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method restore () : string =
        begin
        (try
            let success : string ref = ref ("Restore Successful") in ();
            let result : string ref = ref (((Obj.magic (java_call_static "AbSqlTableUtil.getInstance" (Obj.repr ())))#restoreTable (((PaymentEntityFactory.getInstance ())#getPaymentEntityInstance ()), portion))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "restore()"))
            end;
            !result
        with e -> begin
            let error : string ref = ref ("Failed to restore backup") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "restore()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method backup () : string =
        begin
        (try
            let success : string ref = ref ("Backup Successful") in ();
            let result : string ref = ref (((Obj.magic (java_call_static "AbSqlTableUtil.getInstance" (Obj.repr ())))#backupTable (((PaymentEntityFactory.getInstance ())#getPaymentEntityInstance ())))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "backup()"))
            end;
            !result
        with e -> begin
            let error : string ref = ref ("Failed to make backup") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "backup()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method update () : string =
        begin
        commonStrings#nOT_IMPLEMENTED
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        value <- "";
        ();
        ();
        request <- Obj.repr ((Obj.magic (pageContext#getRequest ())));
        weblisketSession <- (new WeblisketSession.weblisketSession (hashMap, pageContext));
        portion <- (new Portion.portion (hashMap));
        (self#getFormData ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "PaymentHelper" (fun arguments -> Obj.repr (new paymentHelper (Obj.obj arguments)))



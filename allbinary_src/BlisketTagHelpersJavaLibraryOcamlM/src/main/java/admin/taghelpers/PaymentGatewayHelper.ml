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
(* import org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory *)
(* import org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil *)
(* import org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSession *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlTableUtil *)
(* import org.allbinary.logic.string.StringMaker *)

class paymentGatewayHelper ((hashMap : java_hash_map), pageContext) =
  object (self)
    inherit BasicTable.basicTable ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable weblisketSession : WeblisketSession.weblisketSession = (Obj.magic 0)
    method weblisketSession = weblisketSession
    method set_weblisketSession value' = weblisketSession <- value'
    val mutable httpServletRequest : Obj.t = Obj.repr 0
    method httpServletRequest : 'r. 'r = Obj.magic httpServletRequest
    method set_httpServletRequest : 'v. 'v -> unit = fun value' -> httpServletRequest <- Obj.repr value'
    val mutable portion : Portion.portion = (Obj.magic 0)
    method portion = portion
    method set_portion value' = portion <- value'
    
    

    method insert () : string =
        begin
        (try
            let paymentGatewayInterface : PaymentGatewayInterface.paymentGatewayInterface ref = ref ((((new PaymentGatewayInterfaceFactory.paymentGatewayInterfaceFactory ())#getInstance ((Obj.magic httpServletRequest))) :> PaymentGatewayInterface.paymentGatewayInterface)) in ();
            ignore (!paymentGatewayInterface#setStoreName ((weblisketSession#getStoreName ())));
            ignore ((PaymentGatewayEntityFactory.getInstance ())#add (!paymentGatewayInterface));
            let success : string ref = ref ("Successfully Added New Payment Gateway") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "insert()"))
            end;
            (!success ^ "<br/>")
        with e -> begin
            let error : string ref = ref ("Failed to add") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "add()", e))
            end;
            ((((!error ^ "<br>") ^ "Exception: ") ^ java_string_of (Obj.repr (e))) ^ "<br>")
        end)
        end [@@warning "-7"]
    

    method update () : string =
        begin
        (try
            let paymentGatewayInterface : PaymentGatewayInterface.paymentGatewayInterface ref = ref ((((new PaymentGatewayInterfaceFactory.paymentGatewayInterfaceFactory ())#getInstance ((Obj.magic httpServletRequest))) :> PaymentGatewayInterface.paymentGatewayInterface)) in ();
            ignore (!paymentGatewayInterface#setStoreName ((weblisketSession#getStoreName ())));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ("Gateway Name: "));
                ignore (!stringBuffer#append ((!paymentGatewayInterface#getName ())));
                ignore (!stringBuffer#append (" HashMap="));
                ignore (!stringBuffer#append ((java_string_of (Obj.repr (!paymentGatewayInterface#toHashMap (true))))));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "update()"))
            end;
            ignore ((PaymentGatewayEntityFactory.getInstance ())#update (!paymentGatewayInterface));
            let success : string ref = ref ("Successfully Updated Payment Gateway information") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "update()"))
            end;
            (!success ^ "<br/>")
        with e -> begin
            let error : string ref = ref ("Failed to update payment gateway information") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "update()", e))
            end;
            ((((!error ^ "<br/>") ^ "Exception: ") ^ java_string_of (Obj.repr (e))) ^ "<br/>")
        end)
        end [@@warning "-7"]
    

    method delete () : string =
        begin
        (try
            let paymentGatewayInterface : PaymentGatewayInterface.paymentGatewayInterface ref = ref ((((new PaymentGatewayInterfaceFactory.paymentGatewayInterfaceFactory ())#getInstance ((Obj.magic httpServletRequest))) :> PaymentGatewayInterface.paymentGatewayInterface)) in ();
            ignore (!paymentGatewayInterface#setStoreName ((weblisketSession#getStoreName ())));
            let storeName : string ref = ref ((!paymentGatewayInterface#getStoreName ())) in ();
            let gatewayName : string ref = ref ((!paymentGatewayInterface#getName ())) in ();
            ignore ((PaymentGatewayEntityFactory.getInstance ())#remove (!storeName, ((BasicPaymentTypeUtil.getInstance ())#get (!gatewayName))));
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Successfully Removed payment gateway where store name="));
            ignore (!stringBuffer#append (!storeName));
            ignore (!stringBuffer#append (" and gateway name="));
            ignore (!stringBuffer#append (!gatewayName));
            let success : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "delete()"))
            end;
            (!success ^ "<br/>")
        with e -> begin
            let error : string ref = ref ("Failed to remove payment gateway from table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "remove()", e))
            end;
            ((((!error ^ "<br/>") ^ "Exception: ") ^ java_string_of (Obj.repr (e))) ^ "<br>")
        end)
        end [@@warning "-7"]
    

    method drop () : string =
        begin
        (try
            let success : string ref = ref (((PaymentGatewayEntityFactory.getInstance ())#dropTable ())) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, (self#commonStrings)#dROP))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to drop payment transaction result table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#commonStrings)#dROP, e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method create () : string =
        begin
        (try
            let success : string ref = ref (((PaymentGatewayEntityFactory.getInstance ())#createTable ())) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "create()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to create payment transaction result table") in ();
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
            let result : string ref = ref (((Obj.magic (java_call_static "AbSqlTableUtil.getInstance" (Obj.repr ())))#restoreTable ((PaymentGatewayEntityFactory.getInstance ()), portion))) in ();
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
            let success : string ref = ref ("Restore Successful") in ();
            let result : string ref = ref (((Obj.magic (java_call_static "AbSqlTableUtil.getInstance" (Obj.repr ())))#backupTable ((PaymentGatewayEntityFactory.getInstance ())))) in ();
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

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        weblisketSession <- ((Obj.magic 0) :> WeblisketSession.weblisketSession);
        httpServletRequest <- (Obj.repr (Obj.magic 0));
        portion <- ((Obj.magic 0) :> Portion.portion);
        ();
        (try
            weblisketSession <- (new WeblisketSession.weblisketSession (hashMap, pageContext));
            httpServletRequest <- Obj.repr ((Obj.magic (pageContext#getRequest ())));
            portion <- (new Portion.portion (hashMap))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pAYMENTERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#commonStrings)#cONSTRUCTOR, e))
            end;
            raise e
        end)
      end
  end [@@warning "-20"]
let () = java_register_constructor "PaymentGatewayHelper" (fun arguments -> Obj.repr (new paymentGatewayHelper (Obj.obj arguments)))



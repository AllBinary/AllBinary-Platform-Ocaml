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
(* import org.allbinary.business.user.UserData *)
(* import org.allbinary.business.user.address.StreetAddress *)
(* import org.allbinary.data.tables.user.address.billing.BillingAddressesEntity *)
(* import org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory *)
(* import org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSession *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSessionData *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlTableUtil *)
(* import org.allbinary.logic.string.StringUtil *)

class billingAddressHelper ((hashMap : java_hash_map), pageContext) =
  object (self)
    inherit Table.table ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable stringUtil : StringUtil.stringUtil = (Obj.magic 0)
    method stringUtil = stringUtil
    method set_stringUtil value' = stringUtil <- value'
    val mutable weblisketSession : WeblisketSession.weblisketSession = (Obj.magic 0)
    method weblisketSession = weblisketSession
    method set_weblisketSession value' = weblisketSession <- value'
    val mutable request : Obj.t = Obj.repr 0
    method request : 'r. 'r = Obj.magic request
    method set_request : 'v. 'v -> unit = fun value' -> request <- Obj.repr value'
    val mutable userName : string = ""
    method userName = userName
    method set_userName value' = userName <- value'
    val mutable streetAddress : StreetAddress.streetAddress = (Obj.magic 0)
    method streetAddress = streetAddress
    method set_streetAddress value' = streetAddress <- value'
    val mutable portion : Portion.portion = (Obj.magic 0)
    method portion = portion
    method set_portion value' = portion <- value'
    
    

    method getAddressForm () : unit =
        begin
        userName <- ((Obj.magic request)#getParameter ((UserData.get_uSERNAME ())));
        if (userName = (Obj.magic 0)) then begin
            userName <- ((Obj.magic request)#getParameter ((WeblisketSessionData.get_rEMOVABLEUSERNAME ())))
        end;
        streetAddress <- (new StreetAddress.streetAddress ((Obj.magic request)))
        end [@@warning "-7"]
    

    method drop () : string =
        begin
        (try
            let success : string ref = ref (((new BillingAddressesEntity.billingAddressesEntity (stringUtil#eMPTY_STRING))#drop ())) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, commonStrings#dROP))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to drop Admin table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#dROP, e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method create () : string =
        begin
        (try
            let success : string ref = ref (((new BillingAddressesEntity.billingAddressesEntity (stringUtil#eMPTY_STRING))#createTable ())) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "create()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to create user table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "create()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method restore () : string =
        begin
        (try
            let success : string ref = ref ("Restore Successful") in ();
            let billingAddressesEntity : BillingAddressesEntity.billingAddressesEntity ref = ref (((new BillingAddressesEntity.billingAddressesEntity ((StringUtil.getInstance ())#eMPTY_STRING)) :> BillingAddressesEntity.billingAddressesEntity)) in ();
            let result : string ref = ref (((Obj.magic (java_call_static "AbSqlTableUtil.getInstance" (Obj.repr ())))#restoreTable (!billingAddressesEntity, portion))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "restore()"))
            end;
            !result
        with e -> begin
            let error : string ref = ref ("Failed to restore backup") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "restore()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method backup () : string =
        begin
        (try
            let success : string ref = ref ("Backup Successful") in ();
            let result : string ref = ref (((Obj.magic (java_call_static "AbSqlTableUtil.getInstance" (Obj.repr ())))#backupTable ((new BillingAddressesEntity.billingAddressesEntity ((StringUtil.getInstance ())#eMPTY_STRING))))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "backup()"))
            end;
            !result
        with e -> begin
            let error : string ref = ref ("Failed to make backup") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "backup()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method insert () : string =
        begin
        (try
            let success : string ref = ref ("Successfully Added Billing Address") in ();
            ignore (((BillingAddressesEntityFactory.getInstance ())#getInstance ((weblisketSession#getUserName ())))#add (streetAddress));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "add()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to add Billing Address") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "add()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method update () : string =
        begin
        (try
            let success : string ref = ref ("Successfully Updated Billing Address") in ();
            ignore (((BillingAddressesEntityFactory.getInstance ())#getInstance ((weblisketSession#getUserName ())))#update (streetAddress));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF ("Successfull update of a user Billing Address table", self, "update()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed update of a User Billing Address Table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "update()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method setToShippingAddress () : string =
        try
        begin
        (try
            let shippingAddressesEntityFactory : ShippingAddressesEntityFactory.shippingAddressesEntityFactory ref = ref (((ShippingAddressesEntityFactory.getInstance ()) :> ShippingAddressesEntityFactory.shippingAddressesEntityFactory)) in ();
            let streetAddress_arg : StreetAddress.streetAddress ref = ref ((((!shippingAddressesEntityFactory#getInstance ((weblisketSession#getUserName ())))#getDefault ()) :> StreetAddress.streetAddress)) in ();
            if (!streetAddress_arg != (Obj.magic 0)) then begin
                ignore ((!shippingAddressesEntityFactory#getInstance ((weblisketSession#getUserName ())))#add (!streetAddress_arg))
            end else begin
                raise (Java_return (Obj.repr ("No Shipping Address")))
            end;
            (StringUtil.getInstance ())#eMPTY_STRING
        with e -> begin
            let error : string ref = ref ("Failed to Set Billing address to Shipping Address") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "setToShippingAddress()", e))
            end;
            !error
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method delete () : string =
        begin
        (try
            let success : string ref = ref ("Successfully Removed Billing Address") in ();
            ignore (((BillingAddressesEntityFactory.getInstance ())#getInstance ((weblisketSession#getUserName ())))#remove ((Obj.obj (java_new "Integer" (Obj.repr ((streetAddress#getId ())))))));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "delete()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to remove Billing Address") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "delete()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method set () : string =
        begin
        (try
            let success : string ref = ref ("Successfully Set Billing Address") in ();
            ignore (((BillingAddressesEntityFactory.getInstance ())#getInstance ((weblisketSession#getUserName ())))#setDefault ((streetAddress#getId ())));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "set()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to set billing Address") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "set()", e))
            end;
            !error
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        stringUtil <- ((StringUtil.getInstance ()) :> StringUtil.stringUtil);
        ();
        ();
        userName <- "";
        streetAddress <- ((Obj.magic 0) :> StreetAddress.streetAddress);
        ();
        ();
        request <- Obj.repr ((Obj.magic (pageContext#getRequest ())));
        weblisketSession <- (new WeblisketSession.weblisketSession (hashMap, pageContext));
        portion <- (new Portion.portion (hashMap));
        (self#getAddressForm ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "BillingAddressHelper" (fun arguments -> Obj.repr (new billingAddressHelper (Obj.obj arguments)))



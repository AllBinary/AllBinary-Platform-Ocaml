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
(* package views.generic.order *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.user.commerce.inventory.order.OrderHistoryFactory *)
(* import org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.validate.ValidationComponentInterface *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class validationView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit OrderView.orderView (transformInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method isValid () : bool =
        try
        begin
        (try
            let valid : bool ref = ref (true) in ();
            if ((Obj.repr ((self#order)#isIdValid ())) == (Obj.repr false)) then begin
                raise (Java_return (Obj.repr (false)))
            end else begin
                (self#set_orderHistory) ((OrderHistoryFactory.getInstance (((self#order)#getId ()))));
                if (((self#orderHistory) == (Obj.magic 0)) || ((Obj.repr ((self#orderHistory)#isValid ())) == (Obj.repr false))) then begin
                    raise (Java_return (Obj.repr (false)))
                end;
                let orderItems : OrderItemsEntity.orderItemsEntity ref = ref (((new OrderItemsEntity.orderItemsEntity ()) :> OrderItemsEntity.orderItemsEntity)) in ();
                (self#set_basketReview) ((!orderItems#getBasketReview (((self#order)#getId ()))));
                if (((self#basketReview) == (Obj.magic 0)) || ((Obj.repr ((self#basketReview)#isValid ())) == (Obj.repr false))) then begin
                    raise (Java_return (Obj.repr (false)))
                end
            end;
            !valid
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to validate form", self, (self#commonStrings)#iS_VALID, e))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method validationInfo () : string =
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            if ((Obj.repr ((self#order)#isIdValid ())) == (Obj.repr false)) then begin
                ignore (!stringBuffer#append (((self#order)#getIdValidationInfo ())))
            end else begin
                (self#set_orderHistory) ((OrderHistoryFactory.getInstance (((self#order)#getId ()))));
                if (((self#orderHistory) == (Obj.magic 0)) || ((Obj.repr ((self#orderHistory)#isValid ())) == (Obj.repr false))) then begin
                    ignore (!stringBuffer#append ("Order History data error for: "));
                    ignore (!stringBuffer#append (((self#order)#getId ())));
                    ignore (!stringBuffer#append ("<br />"))
                end;
                let orderItems : OrderItemsEntity.orderItemsEntity ref = ref (((new OrderItemsEntity.orderItemsEntity ()) :> OrderItemsEntity.orderItemsEntity)) in ();
                (self#set_basketReview) ((!orderItems#getBasketReview (((self#order)#getId ()))));
                if ((self#basketReview) == (Obj.magic 0)) then begin
                    ignore (!stringBuffer#append ("Order Items data error - does not exist for: "));
                    ignore (!stringBuffer#append (((self#order)#getId ())));
                    ignore (!stringBuffer#append ("<br />"))
                end else if ((Obj.repr ((self#basketReview)#isValid ())) == (Obj.repr false)) then begin
                    ignore (!stringBuffer#append ("Order Items data error - not valid for: "));
                    ignore (!stringBuffer#append (((self#order)#getId ())));
                    ignore (!stringBuffer#append ("<br />"))
                end
            end;
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to generate validation error info", self, "validationInfo()", e))
            end;
            "Error Validating Form"
        end)
        end [@@warning "-7"]
    

    method toValidationInfoDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7"]
    

    method toValidationInfoNode : 'any1 'return. 'any1 -> 'return = fun (_document) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ValidationView" (fun arguments -> Obj.repr (new validationView (Obj.obj arguments)))



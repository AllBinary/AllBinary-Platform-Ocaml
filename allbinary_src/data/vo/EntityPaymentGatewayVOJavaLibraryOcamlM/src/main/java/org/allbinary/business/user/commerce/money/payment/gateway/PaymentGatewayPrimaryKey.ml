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
(* package org.allbinary.business.user.commerce.money.payment.gateway *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.business.context.modules.storefront.StoreFront *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)

class paymentGatewayPrimaryKey ((storeName_arg : string), (gatewayName : string)) =
  object (self)
    val mutable storeName : string = ""
    method storeName = storeName
    method set_storeName value' = storeName <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    
    

    method getStoreName () : string =
        begin
        storeName
        end
    

    method setStoreName ((storeName_arg : string)) : unit =
        begin
        storeName <- storeName_arg
        end
    

    method getName () : string =
        begin
        name
        end
    

    method setName ((name_arg : string)) : unit =
        begin
        name <- name_arg
        end
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (("PaymentGatewayPrimaryKey"#getName ())));
        ignore (!stringBuffer#append (("StoreFront"#getName ())));
        ignore (!stringBuffer#append (" ="));
        ignore (!stringBuffer#append ((self#getStoreName ())));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
        ignore (!stringBuffer#append (("PaymentGateway"#getName ())));
        ignore (!stringBuffer#append ("="));
        ignore (!stringBuffer#append ((self#getName ())));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        storeName <- "";
        name <- "";
        ();
        (self#setStoreName (storeName_arg));
        (self#setName (gatewayName))
      end
  end
let () = java_register_constructor "PaymentGatewayPrimaryKey" (fun arguments -> Obj.repr (new paymentGatewayPrimaryKey (Obj.obj arguments)))



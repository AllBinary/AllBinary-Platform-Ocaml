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
(* package org.allbinary.data.generator *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.globals.PATH_GLOBALS *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.string.StringMaker *)

class paymentGatewayIdGenerator () =
  object
    inherit UniqueIdGenerator.uniqueIdGenerator () as super
    val mutable iDFILE : string = ""
    method iDFILE = iDFILE
    method set_iDFILE value' = iDFILE <- value'
    

    initializer
      begin
        iDFILE <- "paymentgatewayId";
        ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((URLGLOBALS.getMainPath ())));
        ignore (!stringBuffer#append ((PATH_GLOBALS.getInstance ())#iNIT_PATH));
        ignore (!stringBuffer#append (iDFILE));
        ignore (!stringBuffer#append ((UniqueIdGenerator.get_eXT ())));
        ignore (super#setFile ((java_string_of (Obj.repr !stringBuffer)), iDFILE))
      end
  end
let () = java_register_constructor "PaymentGatewayIdGenerator" (fun arguments -> Obj.repr (new paymentGatewayIdGenerator (Obj.obj arguments)))



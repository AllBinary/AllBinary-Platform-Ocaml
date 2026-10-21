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
(* package org.allbinary.business.user.commerce.money.payment.gateway.transaction *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.tokens.Tokenizer *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class transactionResult ((result_arg : string)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable keyValuePairs : java_hash_map = (Obj.magic 0)
    method keyValuePairs = keyValuePairs
    method set_keyValuePairs value' = keyValuePairs <- value'
    val mutable result : string = ""
    method result = result
    method set_result value' = result <- value'
    
    
    

    method toString () : string =
        begin
        result
        end
    

    method toHashMap () : java_hash_map =
        begin
        (keyValuePairs :> java_hash_map)
        end
    

    method getAllPossibleKeys () : BasicArrayList.basicArrayList =
        begin
        let paymentTransactionKeysFactory : PaymentTransactionKeysFactory.paymentTransactionKeysFactory ref = ref (((PaymentTransactionKeysFactory.getInstance ()) :> PaymentTransactionKeysFactory.paymentTransactionKeysFactory)) in ();
        let verisignResponseKeys : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!verisignResponseKeys#add ((java_string_of (Obj.repr !paymentTransactionKeysFactory#rESULT))));
        ignore (!verisignResponseKeys#add ((java_string_of (Obj.repr !paymentTransactionKeysFactory#pNREF))));
        ignore (!verisignResponseKeys#add ((java_string_of (Obj.repr !paymentTransactionKeysFactory#rESPMSG))));
        ignore (!verisignResponseKeys#add ((java_string_of (Obj.repr !paymentTransactionKeysFactory#aUTHCODE))));
        ignore (!verisignResponseKeys#add ((java_string_of (Obj.repr !paymentTransactionKeysFactory#aVSADDR))));
        ignore (!verisignResponseKeys#add ((java_string_of (Obj.repr !paymentTransactionKeysFactory#aVSZIP))));
        ignore (!verisignResponseKeys#add ((java_string_of (Obj.repr !paymentTransactionKeysFactory#oRIGRESULT))));
        ignore (!verisignResponseKeys#add ((java_string_of (Obj.repr !paymentTransactionKeysFactory#sTATUS))));
        ignore (!verisignResponseKeys#add ((java_string_of (Obj.repr !paymentTransactionKeysFactory#fRAUDCODE))));
        ignore (!verisignResponseKeys#add ((java_string_of (Obj.repr !paymentTransactionKeysFactory#fRAUDMSG))));
        ignore (!verisignResponseKeys#add ((java_string_of (Obj.repr !paymentTransactionKeysFactory#eRRCODE))));
        ignore (!verisignResponseKeys#add ((java_string_of (Obj.repr !paymentTransactionKeysFactory#sCORE))));
        ignore (!verisignResponseKeys#add ((java_string_of (Obj.repr !paymentTransactionKeysFactory#rEASON1))));
        ignore (!verisignResponseKeys#add ((java_string_of (Obj.repr !paymentTransactionKeysFactory#rEASON2))));
        ignore (!verisignResponseKeys#add ((java_string_of (Obj.repr !paymentTransactionKeysFactory#rEASON3))));
        ignore (!verisignResponseKeys#add ((java_string_of (Obj.repr !paymentTransactionKeysFactory#eXCEPTION1))));
        ignore (!verisignResponseKeys#add ((java_string_of (Obj.repr !paymentTransactionKeysFactory#eXCEPTION2))));
        ignore (!verisignResponseKeys#add ((java_string_of (Obj.repr !paymentTransactionKeysFactory#eXCEPTION3))));
        ignore (!verisignResponseKeys#add ((java_string_of (Obj.repr !paymentTransactionKeysFactory#eXCEPTION4))));
        ignore (!verisignResponseKeys#add ((java_string_of (Obj.repr !paymentTransactionKeysFactory#eXCEPTION5))));
        ignore (!verisignResponseKeys#add ((java_string_of (Obj.repr !paymentTransactionKeysFactory#eXCEPTION6))));
        ignore (!verisignResponseKeys#add ((java_string_of (Obj.repr !paymentTransactionKeysFactory#eXCEPTION7))));
        (!verisignResponseKeys :> BasicArrayList.basicArrayList)
        end
    

    method getValues () : BasicArrayList.basicArrayList =
        begin
        let keyVector : BasicArrayList.basicArrayList ref = ref (((self#getAllPossibleKeys ()) :> BasicArrayList.basicArrayList)) in ();
        let valueVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!keyVector#size ())) in ();
        for i = 0 to !size - 1 do
            let key : string ref = ref ((Obj.magic (!keyVector#get (i)))) in ();
            if (keyValuePairs#containsKey (!key)) then begin
                ignore (!valueVector#add ((keyValuePairs#get (!key))))
            end else begin
                let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
                ignore (!valueVector#add (!stringUtil#eMPTY_STRING))
            end
        done;
        (!valueVector :> BasicArrayList.basicArrayList)
        end
    

    method getPnRef () : string =
        begin
        (Obj.magic (keyValuePairs#get ((java_string_of (Obj.repr (PaymentTransactionKeysFactory.getInstance ())#pNREF)))))
        end
    

    method getRespMsg () : string =
        begin
        (Obj.magic (keyValuePairs#get ((java_string_of (Obj.repr (PaymentTransactionKeysFactory.getInstance ())#rESPMSG)))))
        end
    

    method getResult () : string =
        begin
        (Obj.magic (keyValuePairs#get ((java_string_of (Obj.repr (PaymentTransactionKeysFactory.getInstance ())#rESULT)))))
        end
    

    method getScore () : string =
        begin
        (Obj.magic (keyValuePairs#get ((java_string_of (Obj.repr (PaymentTransactionKeysFactory.getInstance ())#sCORE)))))
        end
    

    method getStatus () : string =
        begin
        (Obj.magic (keyValuePairs#get ((java_string_of (Obj.repr (PaymentTransactionKeysFactory.getInstance ())#sTATUS)))))
        end
    

    method getFraudCode () : string =
        begin
        (Obj.magic (keyValuePairs#get ((java_string_of (Obj.repr (PaymentTransactionKeysFactory.getInstance ())#fRAUDCODE)))))
        end
    

    method getFraudMsg () : string =
        begin
        (Obj.magic (keyValuePairs#get ((java_string_of (Obj.repr (PaymentTransactionKeysFactory.getInstance ())#fRAUDMSG)))))
        end
    

    method getOrigResult () : string =
        begin
        (Obj.magic (keyValuePairs#get ((java_string_of (Obj.repr (PaymentTransactionKeysFactory.getInstance ())#oRIGRESULT)))))
        end
    

    method getAvsAddr () : string =
        begin
        (Obj.magic (keyValuePairs#get ((java_string_of (Obj.repr (PaymentTransactionKeysFactory.getInstance ())#aVSADDR)))))
        end
    

    method getAvsZip () : string =
        begin
        (Obj.magic (keyValuePairs#get ((java_string_of (Obj.repr (PaymentTransactionKeysFactory.getInstance ())#aVSZIP)))))
        end
    

    method getErrCode () : string =
        begin
        (Obj.magic (keyValuePairs#get ((java_string_of (Obj.repr (PaymentTransactionKeysFactory.getInstance ())#eRRCODE)))))
        end
    

    method getException1 () : string =
        begin
        (Obj.magic (keyValuePairs#get ((java_string_of (Obj.repr (PaymentTransactionKeysFactory.getInstance ())#eXCEPTION1)))))
        end
    

    method getException2 () : string =
        begin
        (Obj.magic (keyValuePairs#get ((java_string_of (Obj.repr (PaymentTransactionKeysFactory.getInstance ())#eXCEPTION2)))))
        end
    

    method getException3 () : string =
        begin
        (Obj.magic (keyValuePairs#get ((java_string_of (Obj.repr (PaymentTransactionKeysFactory.getInstance ())#eXCEPTION3)))))
        end
    

    method getException4 () : string =
        begin
        (Obj.magic (keyValuePairs#get ((java_string_of (Obj.repr (PaymentTransactionKeysFactory.getInstance ())#eXCEPTION4)))))
        end
    

    method getException5 () : string =
        begin
        (Obj.magic (keyValuePairs#get ((java_string_of (Obj.repr (PaymentTransactionKeysFactory.getInstance ())#eXCEPTION5)))))
        end
    

    method getException6 () : string =
        begin
        (Obj.magic (keyValuePairs#get ((java_string_of (Obj.repr (PaymentTransactionKeysFactory.getInstance ())#eXCEPTION6)))))
        end
    

    method getException7 () : string =
        begin
        (Obj.magic (keyValuePairs#get ((java_string_of (Obj.repr (PaymentTransactionKeysFactory.getInstance ())#eXCEPTION7)))))
        end
    

    method getReason1 () : string =
        begin
        (Obj.magic (keyValuePairs#get ((java_string_of (Obj.repr (PaymentTransactionKeysFactory.getInstance ())#rEASON1)))))
        end
    

    method getReason2 () : string =
        begin
        (Obj.magic (keyValuePairs#get ((java_string_of (Obj.repr (PaymentTransactionKeysFactory.getInstance ())#rEASON2)))))
        end
    

    method getReason3 () : string =
        begin
        (Obj.magic (keyValuePairs#get ((java_string_of (Obj.repr (PaymentTransactionKeysFactory.getInstance ())#rEASON3)))))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        ();
        (try
            result <- result_arg;
            let tokenizer : Tokenizer.tokenizer ref = ref (((new Tokenizer.tokenizer ((CommonSeps.getInstance ())#aMPERSAND)) :> Tokenizer.tokenizer)) in ();
            let tokens : BasicArrayList.basicArrayList ref = ref (((!tokenizer#getTokensFromString (result_arg, (new BasicArrayListD.basicArrayListD ()))) :> BasicArrayList.basicArrayList)) in ();
            let tokenizer2 : Tokenizer.tokenizer ref = ref (((new Tokenizer.tokenizer ((CommonSeps.getInstance ())#eQUALS)) :> Tokenizer.tokenizer)) in ();
            let hashtable : Obj.t ref = ref ((Obj.repr (!tokenizer2#getTokens (!tokens)))) in ();
            ignore (keyValuePairs#putAll ((Obj.magic !hashtable)))
        with e -> begin
            let exceptionMessage : string ref = ref ("TransactionResult Constructor Failed") in ();
            ignore ((Obj.magic logUtil)#putF (!exceptionMessage, self, commonStrings#cONSTRUCTOR))
        end)
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "TransactionResult" (fun arguments -> Obj.repr (new transactionResult (Obj.obj arguments)))



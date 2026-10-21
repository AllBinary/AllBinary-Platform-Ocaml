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
(* package org.allbinary.business.quoterequest *)

open Allbinary_java [@@warning "-33"]

class quoteRequestData () =
  object
    val mutable iD : string = ""
    method iD = iD
    method set_iD value' = iD <- value'
    val mutable pROJECT_INFO : string = ""
    method pROJECT_INFO = pROJECT_INFO
    method set_pROJECT_INFO value' = pROJECT_INFO <- value'
    val mutable cUSTOMER_COMMENTS : string = ""
    method cUSTOMER_COMMENTS = cUSTOMER_COMMENTS
    method set_cUSTOMER_COMMENTS value' = cUSTOMER_COMMENTS <- value'
    val mutable bUDGET : string = ""
    method bUDGET = bUDGET
    method set_bUDGET value' = bUDGET <- value'
    val mutable tIMEFRAME : string = ""
    method tIMEFRAME = tIMEFRAME
    method set_tIMEFRAME value' = tIMEFRAME <- value'
    val mutable cOMMENTS : string = ""
    method cOMMENTS = cOMMENTS
    method set_cOMMENTS value' = cOMMENTS <- value'
    

    initializer
      begin
        iD <- "QUOTEREQUEST_ID";
        pROJECT_INFO <- "QUOTEREQUEST_PROJECT_INFO";
        cUSTOMER_COMMENTS <- "QUOTEREQUEST_CUSTOMER_COMMENTS";
        bUDGET <- "QUOTEREQUEST_BUDGET";
        tIMEFRAME <- "QUOTEREQUEST_TIMEFRAME";
        cOMMENTS <- "QUOTEREQUEST_COMMENTS";
        ();
        ()
      end
  end
let () = java_register_constructor "QuoteRequestData" (fun arguments -> Obj.repr (new quoteRequestData (Obj.obj arguments)))

let instance = (new quoteRequestData ())
let get_instance () = instance
let () = java_register_static "QuoteRequestData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "QuoteRequestData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



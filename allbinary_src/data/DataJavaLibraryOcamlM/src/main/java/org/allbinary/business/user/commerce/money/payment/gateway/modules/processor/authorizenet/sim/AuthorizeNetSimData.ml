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
(* package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim *)

open Allbinary_java [@@warning "-33"]

let x_FP_HASH : string = "x_fp_hash"
let get_x_FP_HASH () = x_FP_HASH
let () = java_register_static "AuthorizeNetSimData.get_x_FP_HASH" (fun _ -> Obj.repr (get_x_FP_HASH ()))
let x_FP_SEQUENCE : string = "x_fp_sequence"
let get_x_FP_SEQUENCE () = x_FP_SEQUENCE
let () = java_register_static "AuthorizeNetSimData.get_x_FP_SEQUENCE" (fun _ -> Obj.repr (get_x_FP_SEQUENCE ()))
let x_FP_TIMESTAMP : string = "x_fp_timestamp"
let get_x_FP_TIMESTAMP () = x_FP_TIMESTAMP
let () = java_register_static "AuthorizeNetSimData.get_x_FP_TIMESTAMP" (fun _ -> Obj.repr (get_x_FP_TIMESTAMP ()))
let x_SHOW_FORM : string = "x_show_form"
let get_x_SHOW_FORM () = x_SHOW_FORM
let () = java_register_static "AuthorizeNetSimData.get_x_SHOW_FORM" (fun _ -> Obj.repr (get_x_SHOW_FORM ()))
let x_HEADER_HTML_PAYMENT_FORM : string = "x_header_html_payment_form"
let get_x_HEADER_HTML_PAYMENT_FORM () = x_HEADER_HTML_PAYMENT_FORM
let () = java_register_static "AuthorizeNetSimData.get_x_HEADER_HTML_PAYMENT_FORM" (fun _ -> Obj.repr (get_x_HEADER_HTML_PAYMENT_FORM ()))
let x_FOOTER_HTML_PAYMENT_FORM : string = "x_footer_html_payment_form"
let get_x_FOOTER_HTML_PAYMENT_FORM () = x_FOOTER_HTML_PAYMENT_FORM
let () = java_register_static "AuthorizeNetSimData.get_x_FOOTER_HTML_PAYMENT_FORM" (fun _ -> Obj.repr (get_x_FOOTER_HTML_PAYMENT_FORM ()))
let x_HEADER_HTML_RECEIPT : string = "x_header_html_receipt"
let get_x_HEADER_HTML_RECEIPT () = x_HEADER_HTML_RECEIPT
let () = java_register_static "AuthorizeNetSimData.get_x_HEADER_HTML_RECEIPT" (fun _ -> Obj.repr (get_x_HEADER_HTML_RECEIPT ()))
let x_FOOTER_HTML_RECEIPT : string = "x_footer_html_receipt"
let get_x_FOOTER_HTML_RECEIPT () = x_FOOTER_HTML_RECEIPT
let () = java_register_static "AuthorizeNetSimData.get_x_FOOTER_HTML_RECEIPT" (fun _ -> Obj.repr (get_x_FOOTER_HTML_RECEIPT ()))
let x_RECEIPT_LINK_TEXT : string = "x_receipt_link_text"
let get_x_RECEIPT_LINK_TEXT () = x_RECEIPT_LINK_TEXT
let () = java_register_static "AuthorizeNetSimData.get_x_RECEIPT_LINK_TEXT" (fun _ -> Obj.repr (get_x_RECEIPT_LINK_TEXT ()))
let x_RECEIPT_LINK_URL : string = "x_receipt_link_url"
let get_x_RECEIPT_LINK_URL () = x_RECEIPT_LINK_URL
let () = java_register_static "AuthorizeNetSimData.get_x_RECEIPT_LINK_URL" (fun _ -> Obj.repr (get_x_RECEIPT_LINK_URL ()))
let x_LOGO_URL : string = "x_logo_url"
let get_x_LOGO_URL () = x_LOGO_URL
let () = java_register_static "AuthorizeNetSimData.get_x_LOGO_URL" (fun _ -> Obj.repr (get_x_LOGO_URL ()))
let x_BACKGROUND_URL : string = "x_background_url"
let get_x_BACKGROUND_URL () = x_BACKGROUND_URL
let () = java_register_static "AuthorizeNetSimData.get_x_BACKGROUND_URL" (fun _ -> Obj.repr (get_x_BACKGROUND_URL ()))
let x_COLOR_BACKGROUND : string = "x_color_background"
let get_x_COLOR_BACKGROUND () = x_COLOR_BACKGROUND
let () = java_register_static "AuthorizeNetSimData.get_x_COLOR_BACKGROUND" (fun _ -> Obj.repr (get_x_COLOR_BACKGROUND ()))
let x_COLOR_LINK : string = "x_color_link"
let get_x_COLOR_LINK () = x_COLOR_LINK
let () = java_register_static "AuthorizeNetSimData.get_x_COLOR_LINK" (fun _ -> Obj.repr (get_x_COLOR_LINK ()))
let x_COLOR_TEXT : string = "x_color_text"
let get_x_COLOR_TEXT () = x_COLOR_TEXT
let () = java_register_static "AuthorizeNetSimData.get_x_COLOR_TEXT" (fun _ -> Obj.repr (get_x_COLOR_TEXT ()))
let x_RELAY_URL : string = "x_relay_url"
let get_x_RELAY_URL () = x_RELAY_URL
let () = java_register_static "AuthorizeNetSimData.get_x_RELAY_URL" (fun _ -> Obj.repr (get_x_RELAY_URL ()))
class authorizeNetSimData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "AuthorizeNetSimData" (fun arguments -> Obj.repr (new authorizeNetSimData (Obj.obj arguments)))



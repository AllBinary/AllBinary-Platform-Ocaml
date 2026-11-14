(* Generated Code Do Not Modify *)
(* package org.apache.xmlrpc *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.IOException *)
(* import java.net.MalformedURLException *)
(* import java.net.URL *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.init.crypt.jcehelper.CryptInterface *)
(* import org.allbinary.logic.NullUtil *)

class xmlRpcClient ((url_arg : string)) =
  object
    val mutable url : java_uri = (Obj.magic 0)
    method url = url
    method set_url value' = url <- value'
    
    

    method getURL () : java_uri =
        begin
        (url :> java_uri)
        end
    

    method setBasicAuthentication ((_user : string), (_password : string)) : unit =
        begin
        ()
        end
    

    method execute : 'any2. string * 'any2 -> Obj.t = fun ((_method_ : string), _params) ->
        begin
        (Obj.repr ((NullUtil.getInstance ())#nULL_OBJECT))
        end [@@warning "-20"]
    

    method executeWithCrypt : 'any2 'any3. string * 'any2 * 'any3 -> Obj.t = fun ((_method_ : string), _params, _cryptInterface) ->
        begin
        (Obj.repr ((NullUtil.getInstance ())#nULL_OBJECT))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        url <- (new java_uri (url_arg))
      end
  end
let () = java_register_constructor "XmlRpcClient" (fun arguments -> Obj.repr (new xmlRpcClient (Obj.obj arguments)))



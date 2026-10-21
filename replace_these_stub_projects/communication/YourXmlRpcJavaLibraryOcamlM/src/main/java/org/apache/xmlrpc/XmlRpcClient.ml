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
    val mutable url : Obj.t = Obj.repr 0
    method url : 'r. 'r = Obj.magic url
    method set_url : 'v. 'v -> unit = fun value' -> url <- Obj.repr value'
    
    

    method getURL : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic url)))
        end
    

    method setBasicAuthentication ((_user : string), (_password : string)) : unit =
        begin
        ()
        end
    

    method execute : 'any2. string * 'any2 -> Obj.t = fun ((_method_ : string), _params) ->
        begin
        (Obj.repr ((NullUtil.getInstance ())#nULL_OBJECT))
        end [@@warning "-20"]
    

    (* Java overload execute(String, BasicArrayList, CryptInterface) is not converted: OCaml has one method per name *)

    initializer
      begin
        ();
        ();
        url <- Obj.repr ((new URL.uRL (url_arg)))
      end
  end [@@warning "-20"]
let () = java_register_constructor "XmlRpcClient" (fun arguments -> Obj.repr (new xmlRpcClient (Obj.obj arguments)))



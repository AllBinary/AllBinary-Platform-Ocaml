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
(* package bundle.input.automation *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Collection *)
(* import java.util.Map *)
(* import java.util.Set *)
(* import org.osgi.framework.ServiceReference *)
(* import org.allbinary.logic.string.StringMaker *)


let toString : 'any1. 'any1 -> string = fun (_map) ->
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-20"]

let () = java_register_static "ServiceReferenceMap.toString" (fun arguments -> Obj.repr (toString (Obj.obj arguments)))
class serviceReferenceMap (serviceReference_arg) =
  object
    val mutable serviceReference : Obj.t = Obj.repr 0
    method serviceReference : 'r. 'r = Obj.magic serviceReference
    method set_serviceReference : 'v. 'v -> unit = fun value' -> serviceReference <- Obj.repr value'
    
    

    method size () : int =
        begin
        (-1)
        end
    

    method isEmpty () : bool =
        begin
        false
        end
    

    method containsKey : 'any1. 'any1 -> bool = fun (_key) ->
        begin
        false
        end
    

    method containsValue : 'any1. 'any1 -> bool = fun (_value) ->
        begin
        false
        end
    

    method get : 'any1. 'any1 -> Obj.t = fun (key) ->
        let key = Obj.repr key in
        begin
        (Obj.repr (((Obj.magic serviceReference)#getProperty ((Obj.magic key)))))
        end
    

    method put : 'any1 'any2. 'any1 * 'any2 -> Obj.t = fun (_key, _value) ->
        begin
        (Obj.repr ((Obj.magic 0)))
        end
    

    method remove : 'any1. 'any1 -> Obj.t = fun (_key) ->
        begin
        (Obj.repr ((Obj.magic 0)))
        end
    

    method putAll : 'any1. 'any1 -> unit = fun (_m) ->
        begin
        ()
        end [@@warning "-20"]
    

    method clear () : unit =
        begin
        ()
        end
    

    method keySet : 'return. unit -> 'return = fun () ->
        begin
        let keyStringArray : string array ref = ref (((Obj.magic serviceReference)#getPropertyKeys ())) in ();
        (Obj.magic ((Obj.magic 0)))
        end
    

    method values : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end
    

    method entrySet : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end

    initializer
      begin
        ();
        ();
        serviceReference <- Obj.repr (serviceReference_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "ServiceReferenceMap" (fun arguments -> Obj.repr (new serviceReferenceMap (Obj.obj arguments)))



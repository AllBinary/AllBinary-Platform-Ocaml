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
(* package org.allbinary.logic.java.proxy *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.lang.reflect.Method *)
(* import java.lang.reflect.Proxy *)

class interfaceCastProxy ((anyType_arg : Obj.t)) =
  object
    val mutable anyType : Obj.t = (Obj.magic 0)
    method anyType = anyType
    method set_anyType value' = anyType <- value'
    
    

    method invoke : 'any1 'any2. 'any1 * 'any2 * Obj.t array -> Obj.t = fun (_proxyObject, proxyMethod, (proxyArgs : Obj.t array)) ->
        let proxyMethod = Obj.repr proxyMethod in
        begin
        let methodName : string ref = ref (((Obj.magic proxyMethod)#getName ())) in ();
        let realMethod : Obj.t ref = ref ((Obj.repr ((java_get_class (Obj.repr anyType))#getMethod (!methodName, ((Obj.magic proxyMethod)#getParameterTypes ()))))) in ();
        if (not ((Obj.magic !realMethod)#isAccessible ())) then begin
            ignore ((Obj.magic !realMethod)#setAccessible (true))
        end;
        (Obj.repr (((Obj.magic proxyMethod)#invoke (anyType, proxyArgs))))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        anyType <- anyType_arg
      end
  end
let () = java_register_constructor "InterfaceCastProxy" (fun arguments -> Obj.repr (new interfaceCastProxy (Obj.obj arguments)))

let newInstance : 'any1. 'any1 -> Obj.t = fun (anyType_arg) ->
        let anyType_arg = Obj.repr anyType_arg in
        begin
        (Obj.repr ((Proxy.newProxyInstance (((java_get_class (Obj.repr anyType_arg))#getClassLoader ()), ((java_get_class (Obj.repr anyType_arg))#getInterfaces ()), (new interfaceCastProxy (anyType_arg))))))
        end
let () = java_register_static "InterfaceCastProxy.newInstance" (fun arguments -> Obj.repr (newInstance (Obj.obj arguments)))



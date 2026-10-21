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
(* package org.allbinary.logic.system.loader *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.lang.reflect.Constructor *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.java.anyType.ConstructorUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.AbKeys *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import org.allbinary.string.CommonSeps *)

class abeFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable useCustomLoader : bool = false
    method useCustomLoader = useCustomLoader
    method set_useCustomLoader value' = useCustomLoader <- value'
    
    

    (* Java overload getInstance(AbeClientInformationInterface, String) is not converted: OCaml has one method per name *)
    

    (* Java overload getInstance(AbeClientInformationInterface, String, ArrayType, ArrayType) is not converted: OCaml has one method per name *)
    

    method getClass : 'any1. 'any1 * string -> string = fun (abeClientInformation, (className : string)) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        try
        begin
        (try
            let parent : Obj.t ref = ref ((Obj.repr (WebappClassLoaderInfo.getLoader ()))) in ();
            if useCustomLoader then begin
                let loader : Obj.t ref = ref ((Obj.repr (new AbeClassLoader.abeClassLoader ((Obj.magic !parent), ((AbKeys.getInstance ())#getKey ((Obj.magic abeClientInformation), className)))))) in ();
                let c : string ref = ref (((Obj.magic !loader)#loadClass (className))) in ();
                raise (Java_return (Obj.repr (!c)))
            end else begin
                let c : string ref = ref (((Obj.magic !parent)#loadClass (className))) in ();
                raise (Java_return (Obj.repr (!c)))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#lOADERERROR)) then begin
                ignore ((Obj.magic logUtil)#put (("Failure for: " ^ className), self, "getClass(className)", e))
            end;
            raise e
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        useCustomLoader <- false;
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbeFactory" (fun arguments -> Obj.repr (new abeFactory (Obj.obj arguments)))

let instance = (new abeFactory ())
let get_instance () = instance
let () = java_register_static "AbeFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AbeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



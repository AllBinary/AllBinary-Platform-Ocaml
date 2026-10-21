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
(* package admin.taghelpers *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.loader.AbeFactory *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import org.allbinary.string.CommonStrings *)


let getInstance : 'any1 'any5. 'any1 * string * string * java_hash_map * 'any5 -> Obj.t = fun (abeClientInformation, (factoryName : string), (className : string), (hashMap : java_hash_map), httpServletRequest) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        let httpServletRequest = Obj.repr httpServletRequest in
        begin
        let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        (try
            let params : Obj.t array ref = ref ((Array.make (2) (Obj.magic 0))) in ();
            let classes : string array ref = ref ((Array.make (2) (Obj.magic 0))) in ();
            let abeFactory : AbeFactory.abeFactory ref = ref (((AbeFactory.getInstance ()) :> AbeFactory.abeFactory)) in ();
            !classes.(0) <- (java_get_class (Obj.repr hashMap));
            !classes.(1) <- (!abeFactory#getClass ((Obj.magic abeClientInformation), "javax.servlet.http.HttpServletRequest"));
            !params.(0) <- (Obj.repr ((Obj.magic hashMap)));
            !params.(1) <- (Obj.repr ((Obj.magic (Obj.magic httpServletRequest))));
            let anyType : Obj.t ref = ref ((Obj.repr (!abeFactory#getInstance ((Obj.magic abeClientInformation), className, !classes, !params)))) in ();
            (Obj.repr (!anyType))
        with e -> begin
            let error : string ref = ref (((("Failed To Get Instance Args: HashMap=" ^ (java_string_of (Obj.repr hashMap))) ^ " HttpServletRequest=") ^ java_string_of (Obj.repr ((Obj.magic httpServletRequest))))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERFACTORYERROR)) then begin
                ignore ((Obj.magic !logUtil_arg)#put (!error, (factoryName ^ "->HelperFactory"), "getInstance(String, String, HashMap, PageContext)", e))
            end;
            raise e
        end)
        end [@@warning "-20"]

(* Java overload getInstance(AbeClientInformationInterface, String, String, HashMap, PageContext) is not converted: OCaml has one method per name *)

(* Java overload getInstance(AbeClientInformationInterface, String, String, HashMap, HashMap, PageContext) is not converted: OCaml has one method per name *)

(* Java overload getInstance(AbeClientInformationInterface, String, String) is not converted: OCaml has one method per name *)

let () = java_register_static "HelperFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class helperFactory () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "HelperFactory" (fun arguments -> Obj.repr (new helperFactory (Obj.obj arguments)))



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
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)

class storeFrontsHelperFactory () =
  object (self)
    inherit TagHelperFactory.tagHelperFactory ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method getInstance : 'any2. java_hash_map * 'any2 -> Obj.t = fun ((hashMap : java_hash_map), pageContext) ->
        let pageContext = Obj.repr pageContext in
        begin
        (try
            (Obj.repr ((new StoreFrontsHelper.storeFrontsHelper (hashMap, (Obj.magic pageContext)))))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERFACTORYERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#gET_INSTANCE, e))
            end;
            (Obj.repr ((Obj.magic 0)))
        end)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "StoreFrontsHelperFactory" (fun arguments -> Obj.repr (new storeFrontsHelperFactory (Obj.obj arguments)))



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
(* package org.allbinary.business.context *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSession *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class abContext ((propertiesHashMap_arg : java_hash_map), pageContext_arg) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable propertiesHashMap : java_hash_map = (Obj.magic 0)
    method propertiesHashMap = propertiesHashMap
    method set_propertiesHashMap value' = propertiesHashMap <- value'
    val mutable pageContext : Obj.t = Obj.repr 0
    method pageContext : 'r. 'r = Obj.magic pageContext
    method set_pageContext : 'v. 'v -> unit = fun value' -> pageContext <- Obj.repr value'
    
    

    method getWeblisketSession () : WeblisketSessionInterface.weblisketSessionInterface =
        begin
        ((new WeblisketSession.weblisketSession (propertiesHashMap, (Obj.magic pageContext))) :> WeblisketSessionInterface.weblisketSessionInterface)
        end
    

    method getPageContext : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic pageContext)))
        end
    

    method getPropertiesHashMap () : java_hash_map =
        begin
        (propertiesHashMap :> java_hash_map)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("Properties HashMap: " ^ (java_string_of (Obj.repr propertiesHashMap_arg))), self, commonStrings#cONSTRUCTOR))
        end;
        propertiesHashMap <- propertiesHashMap_arg;
        pageContext <- Obj.repr (pageContext_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbContext" (fun arguments -> Obj.repr (new abContext (Obj.obj arguments)))



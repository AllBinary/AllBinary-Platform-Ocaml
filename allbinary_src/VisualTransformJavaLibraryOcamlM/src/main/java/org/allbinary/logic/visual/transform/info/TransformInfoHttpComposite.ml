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
(* package org.allbinary.logic.visual.transform.info *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSession *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class transformInfoHttpComposite ((transformInfoInterface_arg : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable transformInfoInterface : TransformInfoHttpInterface.transformInfoHttpInterface = (Obj.magic 0)
    method transformInfoInterface = transformInfoInterface
    method set_transformInfoInterface value' = transformInfoInterface <- value'
    
    

    method getTransformInfoInterface () : TransformInfoInterface.transformInfoInterface =
        begin
        (transformInfoInterface :> TransformInfoInterface.transformInfoInterface)
        end
    

    method getWeblisketSession () : WeblisketSession.weblisketSession =
        begin
        ((new WeblisketSession.weblisketSession ((self#getPropertiesHashMap ()), (self#getPageContext ()))) :> WeblisketSession.weblisketSession)
        end
    

    method getPageContext : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((transformInfoInterface#getPageContext ())))
        end
    

    method getPropertiesHashMap () : java_hash_map =
        begin
        ((transformInfoInterface#getPropertiesHashMap ()) :> java_hash_map)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("View Name: " ^ (transformInfoInterface_arg#getName ())), self, commonStrings#cONSTRUCTOR))
        end;
        transformInfoInterface <- (Obj.magic transformInfoInterface_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "TransformInfoHttpComposite" (fun arguments -> Obj.repr (new transformInfoHttpComposite (Obj.obj arguments)))



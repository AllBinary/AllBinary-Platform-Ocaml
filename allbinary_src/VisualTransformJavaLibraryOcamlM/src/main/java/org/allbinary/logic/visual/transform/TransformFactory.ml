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
(* package org.allbinary.logic.visual.transform *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.data.tables.transform.info.TransformInfoEntity *)
(* import org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoData *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory *)
(* import org.allbinary.string.CommonStrings *)

class transformFactory () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    
    

    (* Java overload getInstance(AbeClientInformationInterface, String, TransformInfoInterface) is not converted: OCaml has one method per name *)
    

    (* Java overload getInstance(AbeClientInformationInterface, HashMap, PageContext) is not converted: OCaml has one method per name *)
    

    (* Java overload getInstance(AbeClientInformationInterface, TransformInfoInterface) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "TransformFactory" (fun arguments -> Obj.repr (new transformFactory (Obj.obj arguments)))

let instance = (new transformFactory ())
let get_instance () = instance
let () = java_register_static "TransformFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TransformFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



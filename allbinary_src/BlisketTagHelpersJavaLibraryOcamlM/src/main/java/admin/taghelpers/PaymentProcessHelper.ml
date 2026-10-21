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
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface *)
(* import views.admin.payment.PaymentProcessorComponent *)

class paymentProcessHelper ((propertiesHashMap : java_hash_map), pageContext) =
  object
    inherit TagHelper.tagHelper ()
    val mutable paymentProcessorComponent : Obj.t = Obj.repr 0
    method paymentProcessorComponent : 'r. 'r = Obj.magic paymentProcessorComponent
    method set_paymentProcessorComponent : 'v. 'v -> unit = fun value' -> paymentProcessorComponent <- Obj.repr value'
    
    

    method process () : string =
        begin
        ((Obj.magic paymentProcessorComponent)#view ())
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        let transformInfoInterface : TransformInfoHttpInterface.transformInfoHttpInterface ref = ref (((Obj.magic (TransformInfoHttpFactory.getInstance (propertiesHashMap, pageContext))) :> TransformInfoHttpInterface.transformInfoHttpInterface)) in ();
        paymentProcessorComponent <- Obj.repr ((new PaymentProcessorComponent.paymentProcessorComponent (!transformInfoInterface)))
      end
  end [@@warning "-20"]
let () = java_register_constructor "PaymentProcessHelper" (fun arguments -> Obj.repr (new paymentProcessHelper (Obj.obj arguments)))



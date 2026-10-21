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
(* package views.business.context.modules.storefront.customizer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfo *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)

class storeCustomizerComponentUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method generate : 'any1 'any2. 'any1 * 'any2 -> string = fun (abeClientInformation, transformInfoInterface) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        let transformInfoInterface = Obj.repr transformInfoInterface in
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("Generating Modified Views For: " ^ ((Obj.magic transformInfoInterface)#getName ())), self, "generateModifiedViews()"))
        end;
        let customizerUtil : CustomizerUtil.customizerUtil ref = ref (((CustomizerUtil.getInstance ()) :> CustomizerUtil.customizerUtil)) in ();
        let allCustomizedViews : BasicArrayList.basicArrayList ref = ref (((!customizerUtil#getTransformInfoObjectConfigGroupComponentNodes ((Obj.magic transformInfoInterface))) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!allCustomizedViews#size ())) in ();
        for index = 0 to !size - 1 do
            let nextTransformInfoInterface : TransformInfo.transformInfo ref = ref (((Obj.magic (!allCustomizedViews#get (index))) :> TransformInfo.transformInfo)) in ();
            let allViewsToBeModified : BasicArrayList.basicArrayList ref = ref (((!customizerUtil#getTransformInfoObjectConfigComponentNodesToCustomize ((Obj.magic transformInfoInterface), !nextTransformInfoInterface)) :> BasicArrayList.basicArrayList)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (("View or component that was modified by a Customizer: " ^ (!nextTransformInfoInterface#getName ())), self, "generateModifiedViews()"))
            end;
            ignore (self#generate ((Obj.magic abeClientInformation), (Obj.magic transformInfoInterface), !allViewsToBeModified))
        done;
        (StringUtil.getInstance ())#eMPTY_STRING
        end [@@warning "-20"]
    

    (* Java overload generate(AbeClientInformationInterface, TransformInfoInterface, BasicArrayList) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "StoreCustomizerComponentUtil" (fun arguments -> Obj.repr (new storeCustomizerComponentUtil (Obj.obj arguments)))

let instance = (new storeCustomizerComponentUtil ())
let get_instance () = instance
let () = java_register_static "StoreCustomizerComponentUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "StoreCustomizerComponentUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



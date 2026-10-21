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
(* package org.allbinary.logic.visual.transform.generator *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.InputOutputTypeData *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.visual.transform.TransformFactory *)
(* import org.allbinary.logic.visual.transform.TransformInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoDomNode *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator *)

class transformGeneratorUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method generate : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (abeClientInformation, transformInfoInterface, ownerTransformInfoInterface) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        let transformInfoInterface = Obj.repr transformInfoInterface in
        let ownerTransformInfoInterface = Obj.repr ownerTransformInfoInterface in
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (("Generating View: " ^ ((Obj.magic transformInfoInterface)#getName ())), self, "generate()"))
            end;
            let componentInterface : TransformInterface.transformInterface ref = ref ((((TransformFactory.getInstance ())#getInstance ((Obj.magic abeClientInformation), ((Obj.magic transformInfoInterface)#getName ()), (Obj.magic ownerTransformInfoInterface))) :> TransformInterface.transformInterface)) in ();
            let result : string ref = ref ((!componentInterface#view ())) in ();
            let httpTransformInfoInterface : TransformInfoHttpInterface.transformInfoHttpInterface ref = ref (((Obj.magic (!componentInterface#getTransformInfoInterface ())) :> TransformInfoHttpInterface.transformInfoHttpInterface)) in ();
            let inputOutputTypeData : InputOutputTypeData.inputOutputTypeData ref = ref (((InputOutputTypeData.getInstance ()) :> InputOutputTypeData.inputOutputTypeData)) in ();
            if ((java_string_index_of !result (Obj.repr ("<HTML>"))) >= 0) then begin
                ignore ((!httpTransformInfoInterface#getPropertiesHashMap ())#put (!inputOutputTypeData#nAME, !inputOutputTypeData#dEFAULT))
            end else begin
                ignore ((!httpTransformInfoInterface#getPropertiesHashMap ())#put (!inputOutputTypeData#nAME, !inputOutputTypeData#dEFAULT_FRAGMENT))
            end;
            ignore ((new StoreFileGenerator.storeFileGenerator ((!componentInterface#getTransformInfoInterface ())))#process (!result))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to generate a view", self, "generate()", e))
            end;
            raise e
        end)
        end [@@warning "-20"]
    

    (* Java overload generate(AbeClientInformationInterface, TransformInfoDomNode, TransformInfoInterface) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "TransformGeneratorUtil" (fun arguments -> Obj.repr (new transformGeneratorUtil (Obj.obj arguments)))

let instance = (new transformGeneratorUtil ())
let get_instance () = instance
let () = java_register_static "TransformGeneratorUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TransformGeneratorUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoDomNode *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface *)

class transformsGeneratorUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method generateComponentsFromObjectConfig : 'any1 'any2. 'any1 * 'any2 * string -> string = fun (abeClientInformation, transformInfoInterface, (group : string)) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        let transformInfoInterface = Obj.repr transformInfoInterface in
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("Started Group: " ^ group), self, "generateComponentsFromObjectConfig(2)"))
        end;
        let transformInfoObjectConfigInterface : TransformInfoObjectConfigInterface.transformInfoObjectConfigInterface ref = ref ((((Obj.magic transformInfoInterface)#getObjectConfigInterface ()) :> TransformInfoObjectConfigInterface.transformInfoObjectConfigInterface)) in ();
        let result : string ref = ref ((self#generateComponentsFromObjectConfig ((Obj.magic abeClientInformation), !transformInfoObjectConfigInterface, (Obj.magic transformInfoInterface), group))) in ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("End Group: " ^ group), self, "generateComponentsFromObjectConfig(2)"))
        end;
        !result
        end [@@warning "-20"]
    

    (* Java overload generateComponentsFromObjectConfig(AbeClientInformationInterface, TransformInfoObjectConfigInterface, TransformInfoInterface, String) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "TransformsGeneratorUtil" (fun arguments -> Obj.repr (new transformsGeneratorUtil (Obj.obj arguments)))

let instance = (new transformsGeneratorUtil ())
let get_instance () = instance
let () = java_register_static "TransformsGeneratorUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TransformsGeneratorUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



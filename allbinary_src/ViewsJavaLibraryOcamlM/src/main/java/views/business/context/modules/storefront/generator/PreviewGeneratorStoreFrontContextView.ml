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
(* package views.business.context.modules.storefront.generator *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoData *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfosData *)
(* import org.allbinary.string.CommonSeps *)

class previewGeneratorStoreFrontContextView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit GeneratorStoreFrontContextView.generatorStoreFrontContextView (transformInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method view () : string =
        begin
        (try
            let httpTransformInfoInterface : TransformInfoHttpInterface.transformInfoHttpInterface ref = ref (((Obj.magic (self#getTransformInfoInterface ())) :> TransformInfoHttpInterface.transformInfoHttpInterface)) in ();
            ignore ((!httpTransformInfoInterface#getPropertiesHashMap ())#put ((TransformInfoData.getInstance ())#pARTIAL, ((CommonSeps.getInstance ())#sPACE + (TransformInfosData.getInstance ())#pREVIEW)));
            (self#view ((TransformInfosData.getInstance ())#pREVIEW))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "view()", e))
            end;
            raise e
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "PreviewGeneratorStoreFrontContextView" (fun arguments -> Obj.repr (new previewGeneratorStoreFrontContextView (Obj.obj arguments)))



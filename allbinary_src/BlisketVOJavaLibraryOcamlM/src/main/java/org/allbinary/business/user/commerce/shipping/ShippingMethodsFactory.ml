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
(* package org.allbinary.business.user.commerce.shipping *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.DynamicObjectData *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.commerce.shipping.modules.BasicWeightShippingModuleView *)
(* import org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView *)
(* import org.allbinary.business.user.commerce.shipping.modules.ShippingInterface *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.globals.FREEBLISKET_PATH_GLOBALS *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.control.crypt.file.CryptFileReader *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.loader.AbeFactory *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

let sHIPPINGMETHODSFILEPATHSTRING : string = ""
let get_sHIPPINGMETHODSFILEPATHSTRING () = sHIPPINGMETHODSFILEPATHSTRING
let () = java_register_static "ShippingMethodsFactory.get_sHIPPINGMETHODSFILEPATHSTRING" (fun _ -> Obj.repr (get_sHIPPINGMETHODSFILEPATHSTRING ()))
let sHIPPINGMETHODSFILENAME : string = "shippingMethods.xml"
let get_sHIPPINGMETHODSFILENAME () = sHIPPINGMETHODSFILENAME
let () = java_register_static "ShippingMethodsFactory.get_sHIPPINGMETHODSFILENAME" (fun _ -> Obj.repr (get_sHIPPINGMETHODSFILENAME ()))
class shippingMethodsFactory ((abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface), (storeFrontInterface : StoreFrontInterface.storeFrontInterface)) =
  object
    val mutable defaultShippingMethodInterface : ShippingInterface.shippingInterface = (Obj.magic 0)
    method defaultShippingMethodInterface = defaultShippingMethodInterface
    method set_defaultShippingMethodInterface value' = defaultShippingMethodInterface <- value'
    val mutable document : Obj.t = Obj.repr 0
    method document : 'r. 'r = Obj.magic document
    method set_document : 'v. 'v -> unit = fun value' -> document <- Obj.repr value'
    val mutable shippingVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method shippingVector = shippingVector
    method set_shippingVector value' = shippingVector <- value'
    
    

    method getInstance () : BasicArrayList.basicArrayList =
        begin
        (shippingVector :> BasicArrayList.basicArrayList)
        end
    

    method getDefaultInstance () : ShippingInterface.shippingInterface =
        begin
        (defaultShippingMethodInterface :> ShippingInterface.shippingInterface)
        end

    initializer
      begin
        defaultShippingMethodInterface <- ((Obj.magic 0) :> ShippingInterface.shippingInterface);
        ();
        ();
        ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let sep : string ref = ref ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR) in ();
        ignore (!stringBuffer#append ((URLGLOBALS.getMainPath ())));
        ignore (!stringBuffer#append ((FREEBLISKET_PATH_GLOBALS.getInstance ())#xSLPATH));
        ignore (!stringBuffer#append ((storeFrontInterface#getName ())));
        ignore (!stringBuffer#append (!sep));
        ignore (!stringBuffer#append (sHIPPINGMETHODSFILEPATHSTRING));
        let abPath : AbPath.abPath ref = ref (((Obj.magic (new AbPath.abPath ((java_string_of (Obj.repr !stringBuffer)), sHIPPINGMETHODSFILENAME))) :> AbPath.abPath)) in ();
        let data : string ref = ref (((Obj.obj (java_new "CryptFileReader" (Obj.repr ((TransformInfoObjectConfigData.getInstance ())#uNCRYPTED_EXTENSION, (TransformInfoObjectConfigData.getInstance ())#eNCRYPTED_EXTENSION))))#get (!abPath))) in ();
        document <- Obj.repr ((DomDocumentHelper.create (!data)));
        shippingVector <- (new BasicArrayListD.basicArrayListD ());
        let nodeList : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#getElementsByTagName ((ShippingMethodsData.get_nAME ()))))) in ();
        for index = 0 to ((Obj.magic !nodeList)#getLength ()) - 1 do
            let node : Obj.t ref = ref ((Obj.repr ((Obj.magic !nodeList)#item (index)))) in ();
            let shippingMethodNodeChildren : Obj.t ref = ref ((Obj.repr ((Obj.magic !node)#getChildNodes ()))) in ();
            let shippingMethodNameNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode ((ShippingMethodData.get_nAME ()), (Obj.magic !shippingMethodNodeChildren))))) in ();
            let classNameNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode ((DynamicObjectData.get_nAME ()), ((Obj.magic !shippingMethodNameNode)#getChildNodes ()))))) in ();
            let shippingMethodClassName : string ref = ref ((DomNodeHelper.getTextNodeValue ((Obj.magic !classNameNode)))) in ();
            let shippingMethodInterface : ShippingInterface.shippingInterface ref = ref (((Obj.magic ((AbeFactory.getInstance ())#getInstance (abeClientInformation, !shippingMethodClassName))) :> ShippingInterface.shippingInterface)) in ();
            ignore (shippingVector#add (!shippingMethodInterface));
            let defaultShippingMethodNameNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode ((ShippingMethodData.get_dEFAULT ()), ((Obj.magic !shippingMethodNameNode)#getChildNodes ()))))) in ();
            let defaultShippingMethodNameNodeValue : string ref = ref ((DomNodeHelper.getTextNodeValue ((Obj.magic !defaultShippingMethodNameNode)))) in ();
            if ((!defaultShippingMethodNameNodeValue <> (Obj.magic 0)) && ((String.compare !defaultShippingMethodNameNodeValue ((ShippingMethodData.get_dEFAULT ()))) == 0)) then begin
                defaultShippingMethodInterface <- !shippingMethodInterface
            end
        done;
        if ((shippingVector#size ()) < 1) then begin
            defaultShippingMethodInterface <- (new BasicWeightShippingModuleView.basicWeightShippingModuleView ());
            ignore (shippingVector#add (defaultShippingMethodInterface));
            ignore (shippingVector#add ((new NoShippingModuleView.noShippingModuleView ())))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "ShippingMethodsFactory" (fun arguments -> Obj.repr (new shippingMethodsFactory (Obj.obj arguments)))

let () =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let sep : string ref = ref ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR) in ();
        ignore (!stringBuffer#append (!sep));
        ignore (!stringBuffer#append ("generic"));
        ignore (!stringBuffer#append (!sep));
        ignore (!stringBuffer#append ("shipping"));
        ignore (!stringBuffer#append (!sep));
        sHIPPINGMETHODSFILEPATHSTRING <- (java_string_of (Obj.repr !stringBuffer))
        end



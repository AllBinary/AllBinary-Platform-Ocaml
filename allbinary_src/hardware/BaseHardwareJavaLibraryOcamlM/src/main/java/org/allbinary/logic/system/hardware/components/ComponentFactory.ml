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
(* package org.allbinary.logic.system.hardware.components *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.string.CommonStrings *)

class componentFactory () =
  object
    val mutable vGA : Component.component = (Obj.magic 0)
    method vGA = vGA
    method set_vGA value' = vGA <- value'
    val mutable iDE : Component.component = (Obj.magic 0)
    method iDE = iDE
    method set_iDE value' = iDE <- value'
    val mutable sCSI : Component.component = (Obj.magic 0)
    method sCSI = sCSI
    method set_sCSI value' = sCSI <- value'
    val mutable bRIDGE : Component.component = (Obj.magic 0)
    method bRIDGE = bRIDGE
    method set_bRIDGE value' = bRIDGE <- value'
    val mutable eTHERNET : Component.component = (Obj.magic 0)
    method eTHERNET = eTHERNET
    method set_eTHERNET value' = eTHERNET <- value'
    val mutable uSB : Component.component = (Obj.magic 0)
    method uSB = uSB
    method set_uSB value' = uSB <- value'
    val mutable mULTIMEDIA : Component.component = (Obj.magic 0)
    method mULTIMEDIA = mULTIMEDIA
    method set_mULTIMEDIA value' = mULTIMEDIA <- value'
    val mutable pCI : Component.component = (Obj.magic 0)
    method pCI = pCI
    method set_pCI value' = pCI <- value'
    val mutable rAID : Component.component = (Obj.magic 0)
    method rAID = rAID
    method set_rAID value' = rAID <- value'
    val mutable sMBUS : Component.component = (Obj.magic 0)
    method sMBUS = sMBUS
    method set_sMBUS value' = sMBUS <- value'
    val mutable pIC : Component.component = (Obj.magic 0)
    method pIC = pIC
    method set_pIC value' = pIC <- value'
    val mutable class_ : Component.component = (Obj.magic 0)
    method class_ = class_
    method set_class_ value' = class_ <- value'
    val mutable uNKNOWN : Component.component = (Obj.magic 0)
    method uNKNOWN = uNKNOWN
    method set_uNKNOWN value' = uNKNOWN <- value'

    initializer
      begin
        vGA <- ((new Component.component ("VGA")) :> Component.component);
        iDE <- ((new Component.component ("IDE")) :> Component.component);
        sCSI <- ((new Component.component ("SCSI")) :> Component.component);
        bRIDGE <- ((new Component.component ("bridge")) :> Component.component);
        eTHERNET <- ((new Component.component ("Ethernet")) :> Component.component);
        uSB <- ((new Component.component ("USB")) :> Component.component);
        mULTIMEDIA <- ((new Component.component ("Multimedia")) :> Component.component);
        pCI <- ((new Component.component ("PCI")) :> Component.component);
        rAID <- ((new Component.component ("RAID")) :> Component.component);
        sMBUS <- ((new Component.component ("SMBus")) :> Component.component);
        pIC <- ((new Component.component ("PIC")) :> Component.component);
        class_ <- ((new Component.component ("Class")) :> Component.component);
        uNKNOWN <- ((new Component.component ((CommonStrings.getInstance ())#uNKNOWN)) :> Component.component);
        ()
      end
  end
let () = java_register_constructor "ComponentFactory" (fun arguments -> Obj.repr (new componentFactory (Obj.obj arguments)))

let instance = (new componentFactory ())
let get_instance () = instance
let () = java_register_static "ComponentFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ComponentFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



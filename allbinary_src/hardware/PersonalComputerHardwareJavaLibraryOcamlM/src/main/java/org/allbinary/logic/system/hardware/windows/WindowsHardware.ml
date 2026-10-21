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
(* package org.allbinary.logic.system.hardware.windows *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.hardware.HardwareInterface *)
(* import org.allbinary.logic.system.hardware.components.ComponentFactory *)
(* import org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface *)
(* import org.allbinary.logic.system.hardware.components.interfaces.CpuInterface *)
(* import org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface *)
(* import org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface *)
(* import org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface *)
(* import org.allbinary.logic.system.hardware.components.interfaces.HardDriveInterface *)
(* import org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface *)
(* import org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface *)
(* import org.allbinary.logic.system.hardware.components.interfaces.MediaInterface *)
(* import org.allbinary.logic.system.hardware.components.interfaces.MonitorInterface *)
(* import org.allbinary.logic.system.hardware.components.interfaces.UsbInterface *)
(* import org.allbinary.logic.system.hardware.components.interfaces.VideoInterface *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.util.ABHashtable *)

class windowsHardware () =
  object
    val mutable componentInterfaceVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method componentInterfaceVector = componentInterfaceVector
    method set_componentInterfaceVector value' = componentInterfaceVector <- value'
    val mutable videoInterfaceVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method videoInterfaceVector = videoInterfaceVector
    method set_videoInterfaceVector value' = videoInterfaceVector <- value'
    val mutable hardDriveControllerInterfaceVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method hardDriveControllerInterfaceVector = hardDriveControllerInterfaceVector
    method set_hardDriveControllerInterfaceVector value' = hardDriveControllerInterfaceVector <- value'
    val mutable cpuInterfaceVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method cpuInterfaceVector = cpuInterfaceVector
    method set_cpuInterfaceVector value' = cpuInterfaceVector <- value'
    val mutable usbInterfaceVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method usbInterfaceVector = usbInterfaceVector
    method set_usbInterfaceVector value' = usbInterfaceVector <- value'
    val mutable ethernetInterfaceVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method ethernetInterfaceVector = ethernetInterfaceVector
    method set_ethernetInterfaceVector value' = ethernetInterfaceVector <- value'
    val mutable multimediaInterfaceVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method multimediaInterfaceVector = multimediaInterfaceVector
    method set_multimediaInterfaceVector value' = multimediaInterfaceVector <- value'
    val mutable fireWireInterfaceVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method fireWireInterfaceVector = fireWireInterfaceVector
    method set_fireWireInterfaceVector value' = fireWireInterfaceVector <- value'
    val mutable bridgeInterfaceVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method bridgeInterfaceVector = bridgeInterfaceVector
    method set_bridgeInterfaceVector value' = bridgeInterfaceVector <- value'
    val mutable hardDriveInterfaceVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method hardDriveInterfaceVector = hardDriveInterfaceVector
    method set_hardDriveInterfaceVector value' = hardDriveInterfaceVector <- value'
    val mutable macInterfaceVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method macInterfaceVector = macInterfaceVector
    method set_macInterfaceVector value' = macInterfaceVector <- value'
    val mutable monitorInterfaceVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method monitorInterfaceVector = monitorInterfaceVector
    method set_monitorInterfaceVector value' = monitorInterfaceVector <- value'
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable mINHARDWARE : int = 0
    method mINHARDWARE = mINHARDWARE
    method set_mINHARDWARE value' = mINHARDWARE <- value'
    val mutable componentFactory : ComponentFactory.componentFactory = (Obj.magic 0)
    method componentFactory = componentFactory
    method set_componentFactory value' = componentFactory <- value'
    
    

    method getComponentType ((component : string)) : string =
        try
        begin
        if ((java_string_index_of component (Obj.repr ((java_string_of (Obj.repr componentFactory#eTHERNET))))) >= 0) then begin
            raise (Java_return (Obj.repr ((java_string_of (Obj.repr componentFactory#eTHERNET)))))
        end else if ((java_string_index_of component (Obj.repr ((java_string_of (Obj.repr componentFactory#bRIDGE))))) >= 0) then begin
            raise (Java_return (Obj.repr ((java_string_of (Obj.repr componentFactory#bRIDGE)))))
        end else if ((java_string_index_of component (Obj.repr ((java_string_of (Obj.repr componentFactory#iDE))))) >= 0) then begin
            raise (Java_return (Obj.repr ((java_string_of (Obj.repr componentFactory#iDE)))))
        end else if ((java_string_index_of component (Obj.repr ((java_string_of (Obj.repr componentFactory#mULTIMEDIA))))) >= 0) then begin
            raise (Java_return (Obj.repr ((java_string_of (Obj.repr componentFactory#mULTIMEDIA)))))
        end else if ((java_string_index_of component (Obj.repr ((java_string_of (Obj.repr componentFactory#sCSI))))) >= 0) then begin
            raise (Java_return (Obj.repr ((java_string_of (Obj.repr componentFactory#sCSI)))))
        end else if ((java_string_index_of component (Obj.repr ((java_string_of (Obj.repr componentFactory#uSB))))) >= 0) then begin
            raise (Java_return (Obj.repr ((java_string_of (Obj.repr componentFactory#uSB)))))
        end else if ((java_string_index_of component (Obj.repr ((java_string_of (Obj.repr componentFactory#vGA))))) >= 0) then begin
            raise (Java_return (Obj.repr ((java_string_of (Obj.repr componentFactory#vGA)))))
        end else begin
            raise (Java_return (Obj.repr ((Obj.magic 0))))
        end
        end
        with Java_return value -> Obj.obj value
    

    method getMultimedia ((index : int)) : MediaInterface.mediaInterface =
        begin
        ((Obj.magic (multimediaInterfaceVector#get (index))) :> MediaInterface.mediaInterface)
        end
    

    method getBridge ((index : int)) : BridgeInterface.bridgeInterface =
        begin
        ((Obj.magic (bridgeInterfaceVector#get (index))) :> BridgeInterface.bridgeInterface)
        end
    

    method getCpu ((index : int)) : CpuInterface.cpuInterface =
        begin
        ((Obj.magic (cpuInterfaceVector#get (index))) :> CpuInterface.cpuInterface)
        end
    

    method getEthernet ((index : int)) : EthernetInterface.ethernetInterface =
        begin
        ((Obj.magic (ethernetInterfaceVector#get (index))) :> EthernetInterface.ethernetInterface)
        end
    

    method getFireWire ((index : int)) : FireWireInterface.fireWireInterface =
        begin
        ((Obj.magic (fireWireInterfaceVector#get (index))) :> FireWireInterface.fireWireInterface)
        end
    

    method getHardDriveController ((index : int)) : HardDriveControllerInterface.hardDriveControllerInterface =
        begin
        ((Obj.magic (hardDriveControllerInterfaceVector#get (index))) :> HardDriveControllerInterface.hardDriveControllerInterface)
        end
    

    method getHardDrive ((index : int)) : HardDriveInterface.hardDriveInterface =
        begin
        ((Obj.magic (hardDriveInterfaceVector#get (index))) :> HardDriveInterface.hardDriveInterface)
        end
    

    method getMachineAccessControlAddress ((index : int)) : MachineAccessControlAddressInterface.machineAccessControlAddressInterface =
        begin
        ((Obj.magic (macInterfaceVector#get (index))) :> MachineAccessControlAddressInterface.machineAccessControlAddressInterface)
        end
    

    method getMonitor ((index : int)) : MonitorInterface.monitorInterface =
        begin
        ((Obj.magic (monitorInterfaceVector#get (index))) :> MonitorInterface.monitorInterface)
        end
    

    method getUsb ((index : int)) : UsbInterface.usbInterface =
        begin
        ((Obj.magic (usbInterfaceVector#get (index))) :> UsbInterface.usbInterface)
        end
    

    method getVideo ((index : int)) : VideoInterface.videoInterface =
        begin
        ((Obj.magic (videoInterfaceVector#get (index))) :> VideoInterface.videoInterface)
        end
    

    method getComponent ((index : int)) : HardwareComponentInterface.hardwareComponentInterface =
        begin
        ((Obj.magic (componentInterfaceVector#get (index))) :> HardwareComponentInterface.hardwareComponentInterface)
        end
    

    method toString () : string =
        begin
        let hardwareBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let size : int ref = ref ((componentInterfaceVector#size ())) in ();
        for index = 0 to !size - 1 do
            let componentInterface : HardwareComponentInterface.hardwareComponentInterface ref = ref (((Obj.magic (componentInterfaceVector#get (index))) :> HardwareComponentInterface.hardwareComponentInterface)) in ();
            ignore (!hardwareBuffer#append ((java_string_of (Obj.repr !componentInterface))));
            ignore (!hardwareBuffer#append ((CommonSeps.getInstance ())#nEW_LINE))
        done;
        (java_string_of (Obj.repr !hardwareBuffer))
        end
    

    method compareTo : 'any1. 'any1 -> bool = fun (_hardwareInterface) ->
        begin
        true
        end [@@warning "-20"]
    

    method difference : 'any1 'return. 'any1 -> 'return = fun (_hardwareInterface) ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#nULL_TABLE))
        end [@@warning "-20"]

    initializer
      begin
        componentInterfaceVector <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        videoInterfaceVector <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        hardDriveControllerInterfaceVector <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        cpuInterfaceVector <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        usbInterfaceVector <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        ethernetInterfaceVector <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        multimediaInterfaceVector <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        fireWireInterfaceVector <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        bridgeInterfaceVector <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        hardDriveInterfaceVector <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        macInterfaceVector <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        monitorInterfaceVector <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        nAME <- "Windows Hardware Profile";
        mINHARDWARE <- 0;
        componentFactory <- ((ComponentFactory.getInstance ()) :> ComponentFactory.componentFactory);
        ();
        (try
            componentInterfaceVector <- (new BasicArrayListD.basicArrayListD ());
            videoInterfaceVector <- (new BasicArrayListD.basicArrayListD ());
            hardDriveControllerInterfaceVector <- (new BasicArrayListD.basicArrayListD ());
            cpuInterfaceVector <- (new BasicArrayListD.basicArrayListD ());
            usbInterfaceVector <- (new BasicArrayListD.basicArrayListD ());
            ethernetInterfaceVector <- (new BasicArrayListD.basicArrayListD ());
            multimediaInterfaceVector <- (new BasicArrayListD.basicArrayListD ());
            fireWireInterfaceVector <- (new BasicArrayListD.basicArrayListD ());
            bridgeInterfaceVector <- (new BasicArrayListD.basicArrayListD ());
            hardDriveInterfaceVector <- (new BasicArrayListD.basicArrayListD ());
            macInterfaceVector <- (new BasicArrayListD.basicArrayListD ());
            monitorInterfaceVector <- (new BasicArrayListD.basicArrayListD ());
            if ((componentInterfaceVector#size ()) < mINHARDWARE) then begin
                raise (Failure ("Not Enough Data For A Valid License On Windows"))
            end
        with e -> begin
            raise e
        end)
      end
  end
let () = java_register_constructor "WindowsHardware" (fun arguments -> Obj.repr (new windowsHardware (Obj.obj arguments)))



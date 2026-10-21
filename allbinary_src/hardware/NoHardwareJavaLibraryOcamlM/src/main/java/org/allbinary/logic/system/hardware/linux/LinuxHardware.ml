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
(* package org.allbinary.logic.system.hardware.linux *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.hardware.HardwareInterface *)
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
(* import org.allbinary.util.ABHashtable *)

class linuxHardware () =
  object
    
    

    method getMultimedia ((_index : int)) : MediaInterface.mediaInterface =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getBridge ((_index : int)) : BridgeInterface.bridgeInterface =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getCpu ((_index : int)) : CpuInterface.cpuInterface =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getEthernet ((_index : int)) : EthernetInterface.ethernetInterface =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getFireWire ((_index : int)) : FireWireInterface.fireWireInterface =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getHardDriveController ((_index : int)) : HardDriveControllerInterface.hardDriveControllerInterface =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getHardDrive ((_index : int)) : HardDriveInterface.hardDriveInterface =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getMachineAccessControlAddress ((_index : int)) : MachineAccessControlAddressInterface.machineAccessControlAddressInterface =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getMonitor ((_index : int)) : MonitorInterface.monitorInterface =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getUsb ((_index : int)) : UsbInterface.usbInterface =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getVideo ((_index : int)) : VideoInterface.videoInterface =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getComponent ((_index : int)) : HardwareComponentInterface.hardwareComponentInterface =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method toString () : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end
    

    method compareTo : 'any1. 'any1 -> bool = fun (_hardwareInterface) ->
        begin
        true
        end [@@warning "-20"]
    

    method difference : 'any1 'return. 'any1 -> 'return = fun (_hardwareInterface) ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#nULL_TABLE))
        end [@@warning "-20"]
    

    method isNextHardware ((_nextLine : string)) : bool =
        begin
        false
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "LinuxHardware" (fun arguments -> Obj.repr (new linuxHardware (Obj.obj arguments)))



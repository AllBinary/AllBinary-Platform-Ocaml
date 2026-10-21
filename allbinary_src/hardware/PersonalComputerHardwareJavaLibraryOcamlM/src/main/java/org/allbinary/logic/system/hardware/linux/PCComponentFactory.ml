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
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypes *)
(* import org.allbinary.logic.system.hardware.components.ComponentFactory *)
(* import org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface *)
(* import org.allbinary.logic.system.hardware.components.linux.Bridge *)
(* import org.allbinary.logic.system.hardware.components.linux.Ethernet *)
(* import org.allbinary.logic.system.hardware.components.linux.HardDriveController *)
(* import org.allbinary.logic.system.hardware.components.linux.Media *)
(* import org.allbinary.logic.system.hardware.components.linux.PCI *)
(* import org.allbinary.logic.system.hardware.components.linux.Unknown *)
(* import org.allbinary.logic.system.hardware.components.linux.Usb *)
(* import org.allbinary.logic.system.hardware.components.linux.Video *)
(* import org.allbinary.string.CommonStrings *)

class pCComponentFactory () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable componentFactory : ComponentFactory.componentFactory = (Obj.magic 0)
    method componentFactory = componentFactory
    method set_componentFactory value' = componentFactory <- value'
    
    

    (* Java overload getInstance(String, String) is not converted: OCaml has one method per name *)
    

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
        end else if ((String.compare component ((java_string_of (Obj.repr componentFactory#pCI)))) == 0) then begin
            raise (Java_return (Obj.repr ((java_string_of (Obj.repr componentFactory#pCI)))))
        end;
        (java_string_of (Obj.repr componentFactory#uNKNOWN))
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        componentFactory <- ((ComponentFactory.getInstance ()) :> ComponentFactory.componentFactory);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "PCComponentFactory" (fun arguments -> Obj.repr (new pCComponentFactory (Obj.obj arguments)))

let instance = (new pCComponentFactory ())
let get_instance () = instance
let () = java_register_static "PCComponentFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PCComponentFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



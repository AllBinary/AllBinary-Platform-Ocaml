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
(* package org.allbinary.game.part *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory *)
(* import org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryPool *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.util.BasicArrayListUtil *)

class makeCountedPartsSingletonArrayFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    

    method getUpdated ((partInterfaceArray : PartInterface.partInterface array)) : PartInterface.partInterface array =
        begin
        list <- (new BasicArrayListD.basicArrayListD ());
        for index = 0 to (Array.length partInterfaceArray) - 1 do
            ignore (list#add (partInterfaceArray.(index)))
        done;
        let countedBasicArrayList : BasicArrayList.basicArrayList ref = ref ((((CountedPickedUpLayerInterfaceFactoryPool.getInstance ())#getList ()) :> BasicArrayList.basicArrayList)) in ();
        let layerInterfaceFactoryInterface : CountedPickedUpLayerInterfaceFactory.countedPickedUpLayerInterfaceFactory ref = ref (((Obj.magic 0) :> CountedPickedUpLayerInterfaceFactory.countedPickedUpLayerInterfaceFactory)) in ();
        let size : int ref = ref ((!countedBasicArrayList#size ())) in ();
        for index = 0 to !size - 1 do
            layerInterfaceFactoryInterface := (Obj.magic !countedBasicArrayList#objectArray.(index));
            ignore (list#add ((new CountedLayerInterfaceFactoryPart.countedLayerInterfaceFactoryPart (0, !layerInterfaceFactoryInterface))))
        done;
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("Total Parts: "));
        ignore (!stringBuffer#appendint ((list#size ())));
        ignore (!stringBuffer#append (" Counted: "));
        ignore (!stringBuffer#appendint ((!countedBasicArrayList#size ())));
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, !commonStrings#gET_INSTANCE));
        let newPartInterfaceArray : PartInterface.partInterface array ref = ref ((Array.make ((list#size ())) (Obj.magic 0))) in ();
        let newSize : int ref = ref ((Array.length !newPartInterfaceArray)) in ();
        for index = 0 to !newSize - 1 do
            !newPartInterfaceArray.(index) <- ((Obj.magic (list#get (index))) :> PartInterface.partInterface)
        done;
        !newPartInterfaceArray
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        list <- (((BasicArrayListUtil.getInstance ())#getImmutableInstance ()) :> BasicArrayList.basicArrayList);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "MakeCountedPartsSingletonArrayFactory" (fun arguments -> Obj.repr (new makeCountedPartsSingletonArrayFactory (Obj.obj arguments)))

let instance = (new makeCountedPartsSingletonArrayFactory ())
let get_instance () = instance
let () = java_register_static "MakeCountedPartsSingletonArrayFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "MakeCountedPartsSingletonArrayFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



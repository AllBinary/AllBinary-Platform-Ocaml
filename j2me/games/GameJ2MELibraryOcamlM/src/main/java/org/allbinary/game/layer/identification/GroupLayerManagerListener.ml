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
(* package org.allbinary.game.layer.identification *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.identification.Group *)
(* import org.allbinary.game.identification.GroupInterfaceCompositeInterface *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.event.LayerManagerEvent *)
(* import org.allbinary.layer.event.LayerManagerEventHandler *)
(* import org.allbinary.layer.event.LayerManagerEventListener *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class groupLayerManagerListener () =
  object (self)
    inherit LayerManagerEventListener.layerManagerEventListener ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    
    

    method clear () : unit =
        begin
        let groupList : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((list#size ())) in ();
        for index = (!size - 1) downto 0 do
            groupList := (Obj.magic list#objectArray.(index));
            ignore (!groupList#clear ())
        done
        end [@@warning "-7"]
    

    method getGroupSizeFromInterface : 'any1. 'any1 -> int = fun (groupInterfaceCompositeInterface) ->
        let groupInterfaceCompositeInterface = Obj.repr groupInterfaceCompositeInterface in
        begin
        let groupInterfaceArray : Group.group array ref = ref (((Obj.magic groupInterfaceCompositeInterface)#getGroupInterface ())) in ();
        (self#getGroupSize (!groupInterfaceArray.(0)))
        end [@@warning "-7-20"]
    

    method getGroupSize : 'any1. 'any1 -> int = fun (groupInterface) ->
        let groupInterface = Obj.repr groupInterface in
        begin
        let id : int ref = ref (((Obj.magic groupInterface)#getGroupId ())) in ();
        (self#getGroupSizeById (!id))
        end [@@warning "-7-20"]
    

    method getList : 'any1 'return. 'any1 -> 'return = fun (groupInterface) ->
        let groupInterface = Obj.repr groupInterface in
        begin
        let id : int ref = ref (((Obj.magic groupInterface)#getGroupId ())) in ();
        (Obj.magic ((self#getListById (!id))))
        end [@@warning "-7-20"]
    

    method getListById : 'return. int -> 'return = fun ((groupId : int)) ->
        begin
        let groupList : BasicArrayList.basicArrayList ref = ref (((Obj.magic list#objectArray.(groupId)) :> BasicArrayList.basicArrayList)) in ();
        (Obj.magic (!groupList))
        end [@@warning "-7"]
    

    method getGroupSizeById ((groupId : int)) : int =
        begin
        let groupList : BasicArrayList.basicArrayList ref = ref (((Obj.magic list#objectArray.(groupId)) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!groupList#size ())) in ();
        !size
        end [@@warning "-7"]
    

    method areAllOtherGroupsEmpty : 'any1. 'any1 -> bool = fun (groupInterface) ->
        let groupInterface = Obj.repr groupInterface in
        try
        begin
        let id : int ref = ref (((Obj.magic groupInterface)#getGroupId ())) in ();
        let size : int ref = ref ((list#size ())) in ();
        for index = (!size - 1) downto 0 do
            if (!id <> index) then begin
                let groupSize : int ref = ref ((self#getGroupSizeById (index))) in ();
                if (!groupSize <> 0) then begin
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Group Size: "))#appendint (!groupSize)))), (Obj.magic self), "areAllOtherGroupsEmpty"));
                    raise (Java_return (Obj.repr (false)))
                end
            end
        done;
        true
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method isIdInList : 'any2. int * 'any2 -> bool = fun ((id : int), excludeGroupList) ->
        let excludeGroupList = Obj.repr excludeGroupList in
        try
        begin
        let size : int ref = ref (((Obj.magic excludeGroupList)#size ())) in ();
        let groupInterfaceArray : Group.group array ref = ref ((Obj.magic 0)) in ();
        let groupInterface : Group.group ref = ref (((Obj.magic 0) :> Group.group)) in ();
        let groupId : int ref = ref (0) in ();
        for index = (!size - 1) downto 0 do
            groupInterfaceArray := (Obj.magic (Obj.magic excludeGroupList)#objectArray.(index));
            let size2 : int ref = ref ((Array.length !groupInterfaceArray)) in ();
            for index2 = 0 to !size2 - 1 do
                groupInterface := !groupInterfaceArray.(index2);
                groupId := (!groupInterface#getGroupId ());
                if (!groupId = id) then begin
                    raise (Java_return (Obj.repr (true)))
                end
            done
        done;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method areAllOtherGroupsLessThan : 'any1. 'any1 * int -> bool = fun (excludeGroupList, (maxSize : int)) ->
        let excludeGroupList = Obj.repr excludeGroupList in
        try
        begin
        let size : int ref = ref ((list#size ())) in ();
        for index = (!size - 1) downto 0 do
            if (not (self#isIdInList (index, (Obj.magic excludeGroupList)))) then begin
                let groupSize : int ref = ref ((self#getGroupSizeById (index))) in ();
                if (!groupSize >= maxSize) then begin
                    raise (Java_return (Obj.repr (false)))
                end
            end
        done;
        true
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method init ((total : int)) : unit =
        begin
        while ((list#size ()) <= (total + 1)) do
            ignore (list#add ((new BasicArrayListD.basicArrayListD ())))
        done
        end [@@warning "-7"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, (Obj.magic self)))
        end [@@warning "-7-20"]
    

    method onCreateLayerManagerEvent : 'any1. 'any1 -> unit = fun (layerManagerEvent) ->
        let layerManagerEvent = Obj.repr layerManagerEvent in
        begin
        let layerInterface : AllBinaryLayer.allBinaryLayer ref = ref ((((Obj.magic layerManagerEvent)#getLayerInterface ()) :> AllBinaryLayer.allBinaryLayer)) in ();
        let groupInterfaceArray : Group.group array ref = ref ((!layerInterface#getGroupInterface ())) in ();
        let size : int ref = ref ((Array.length !groupInterfaceArray)) in ();
        let id : int ref = ref (0) in ();
        let groupList : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
        for index = 0 to !size - 1 do
            id := (java_to_int (Obj.repr ((!groupInterfaceArray.(index)#getGroupId ()))));
            groupList := (Obj.magic list#objectArray.(!id));
            if (!groupList == (Obj.magic 0)) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("id: "))#appendint (!id)))), (Obj.magic self), "onCreateLayerManagerEvent"))
            end;
            if (not (!groupList#contains (!layerInterface))) then begin
                ignore (!groupList#add (!layerInterface))
            end else begin
                ()
            end
        done
        end [@@warning "-7-20"]
    

    method onDeleteLayerManagerEvent : 'any1. 'any1 -> unit = fun (layerManagerEvent) ->
        let layerManagerEvent = Obj.repr layerManagerEvent in
        begin
        let layerInterface : AllBinaryLayer.allBinaryLayer ref = ref ((((Obj.magic layerManagerEvent)#getLayerInterface ()) :> AllBinaryLayer.allBinaryLayer)) in ();
        let groupInterfaceArray : Group.group array ref = ref ((!layerInterface#getGroupInterface ())) in ();
        let size : int ref = ref ((Array.length !groupInterfaceArray)) in ();
        let id : int ref = ref (0) in ();
        let groupList : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
        for index = 0 to !size - 1 do
            id := (java_to_int (Obj.repr ((!groupInterfaceArray.(index)#getGroupId ()))));
            groupList := (Obj.magic list#objectArray.(!id));
            ignore (!groupList#remove (!layerInterface))
        done
        end [@@warning "-7-20"]
    

    method log () : unit =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let gROUP : string ref = ref ("Group: ") in ();
        let sPACE : string ref = ref ((CommonSeps.getInstance ())#sPACE) in ();
        let tOTAL_LABEL : string ref = ref ((CommonLabels.getInstance ())#tOTAL_LABEL) in ();
        let size : int ref = ref ((list#size ())) in ();
        for index = (!size - 1) downto 0 do
            let groupList : BasicArrayList.basicArrayList ref = ref (((Obj.magic list#objectArray.(index)) :> BasicArrayList.basicArrayList)) in ();
            ignore (!stringBuffer#append (!gROUP));
            ignore (!stringBuffer#appendint (index));
            ignore (!stringBuffer#append (!sPACE));
            ignore (!stringBuffer#append (!tOTAL_LABEL));
            ignore (!stringBuffer#appendint ((!groupList#size ())));
            ignore (!stringBuffer#append (!sPACE))
        done;
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), (Obj.magic self), "log"))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ignore ((LayerManagerEventHandler.getInstance ())#addListener ((Obj.magic self)))
      end
  end [@@warning "-20"]
let () = java_register_constructor "GroupLayerManagerListener" (fun arguments -> Obj.repr (new groupLayerManagerListener (Obj.obj arguments)))

let sINGLETON = ref ((new groupLayerManagerListener ()))
let get_sINGLETON () = !sINGLETON
let set_sINGLETON value' = sINGLETON := value'
let () = java_register_static "GroupLayerManagerListener.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))
let () = java_register_static "GroupLayerManagerListener.set_sINGLETON" (fun value' -> set_sINGLETON (Obj.obj value'); Obj.repr ())

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (!sINGLETON))
        end
let () = java_register_static "GroupLayerManagerListener.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Enumeration *)
(* import org.allbinary.layer.Layer *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.util.EnumerationUtil *)

class levelLayersFinder () =
  object
    val mutable enumerationUtil : EnumerationUtil.enumerationUtil = (Obj.magic 0)
    method enumerationUtil = enumerationUtil
    method set_enumerationUtil value' = enumerationUtil <- value'
    

    method get : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (hashtable) ->
        let hashtable = Obj.repr hashtable in
        begin
        let smallIntegerSingletonFactory : SmallIntegerSingletonFactory.smallIntegerSingletonFactory ref = ref (((SmallIntegerSingletonFactory.getInstance ()) :> SmallIntegerSingletonFactory.smallIntegerSingletonFactory)) in ();
        let list : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let enumeration : java_enumeration ref = ref ((((Obj.magic hashtable)#keys ()) :> java_enumeration)) in ();
        let layerHashtableCanBeNull : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let integerCanBeNull : int ref = ref ((Obj.magic 0)) in ();
        let cachedIntegerCanBeNull : int ref = ref ((Obj.magic 0)) in ();
        while (enumerationUtil#hasMoreElements (!enumeration)) do
            layerHashtableCanBeNull := Obj.repr ((Obj.magic ((Obj.magic hashtable)#get ((Obj.magic (enumerationUtil#nextElement (!enumeration)))))));
            integerCanBeNull := (Obj.magic ((Obj.magic !layerHashtableCanBeNull)#get ((Obj.magic (Obj.magic (java_call_static "Layer.get_iD" (Obj.repr ())))))));
            cachedIntegerCanBeNull := (!smallIntegerSingletonFactory#getAt (!integerCanBeNull));
            if (not (!list#contains (!cachedIntegerCanBeNull))) then begin
                ignore (!list#add (!cachedIntegerCanBeNull))
            end
        done;
        (!list :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]

    initializer
      begin
        enumerationUtil <- ((EnumerationUtil.getInstance ()) :> EnumerationUtil.enumerationUtil);
        ()
      end
  end
let () = java_register_constructor "LevelLayersFinder" (fun arguments -> Obj.repr (new levelLayersFinder (Obj.obj arguments)))

let instance = (new levelLayersFinder ())
let get_instance () = instance
let () = java_register_static "LevelLayersFinder.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LevelLayersFinder.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



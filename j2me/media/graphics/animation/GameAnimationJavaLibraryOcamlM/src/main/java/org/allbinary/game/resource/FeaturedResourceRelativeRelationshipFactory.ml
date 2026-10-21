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
(* package org.allbinary.game.resource *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.RelativeRelationship *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.relationship.RelativeLayerRelationship *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.util.BasicArrayListUtil *)

class featuredResourceRelativeRelationshipFactory () =
  object (self)
    inherit FeaturedResourceFactory.featuredResourceFactory ()
    val mutable basicArrayListUtil : BasicArrayListUtil.basicArrayListUtil = (Obj.magic 0)
    method basicArrayListUtil = basicArrayListUtil
    method set_basicArrayListUtil value' = basicArrayListUtil <- value'
    
    

    method getRelativeRelationshipList : 'any2. string * 'any2 -> BasicArrayList.basicArrayList = fun ((resource : string), layer) ->
        let layer = Obj.repr layer in
        try
        begin
        let featureReleaseList : BasicArrayList.basicArrayList ref = ref (((self#getList ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref (((self#getList ())#size ())) in ();
        for index = 0 to !size - 1 do
            let featureInterface : ResourceRelativeRelationshipFactoryInterface.resourceRelativeRelationshipFactoryInterface ref = ref (((Obj.magic !featureReleaseList#objectArray.(index)) :> ResourceRelativeRelationshipFactoryInterface.resourceRelativeRelationshipFactoryInterface)) in ();
            if (!featureInterface#isFeature ()) then begin
                let list : BasicArrayList.basicArrayList ref = ref (((!featureInterface#getResourceRelativeRelationshipList (resource)) :> BasicArrayList.basicArrayList)) in ();
                if ((Obj.repr !list) != (Obj.repr (basicArrayListUtil#getImmutableInstance ()))) then begin
                    raise (Java_return (Obj.repr ((self#duplicate (!list, (Obj.magic layer))))))
                end
            end
        done;
        raise (Failure ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Not available for current feature selection or Resource: "))#append (resource))))))
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method duplicate : 'any1 'any2. 'any1 * 'any2 -> BasicArrayList.basicArrayList = fun (list, layer) ->
        let list = Obj.repr list in
        let layer = Obj.repr layer in
        begin
        let pointFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ()))))) in ();
        let newList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref (((Obj.magic list)#size ())) in ();
        for index = 0 to !size - 1 do
            let relativeRelationship : RelativeRelationship.relativeRelationship ref = ref (((Obj.magic (Obj.magic list)#objectArray.(index)) :> RelativeRelationship.relativeRelationship)) in ();
            ignore (!newList#add ((new RelativeLayerRelationship.relativeLayerRelationship ((Obj.magic layer), ((Obj.magic !pointFactory)#createXY ((!relativeRelationship#getX ()), (!relativeRelationship#getY ()))), ((BasicArrayListUtil.getInstance ())#getImmutableInstance ())))))
        done;
        (!newList :> BasicArrayList.basicArrayList)
        end [@@warning "-7-20"]

    initializer
      begin
        basicArrayListUtil <- ((BasicArrayListUtil.getInstance ()) :> BasicArrayListUtil.basicArrayListUtil);
        ();
        ()
      end
  end
let () = java_register_constructor "FeaturedResourceRelativeRelationshipFactory" (fun arguments -> Obj.repr (new featuredResourceRelativeRelationshipFactory (Obj.obj arguments)))

let iNSTANCE = ref ((new featuredResourceRelativeRelationshipFactory ()))
let get_iNSTANCE () = !iNSTANCE
let set_iNSTANCE value' = iNSTANCE := value'
let () = java_register_static "FeaturedResourceRelativeRelationshipFactory.get_iNSTANCE" (fun _ -> Obj.repr (get_iNSTANCE ()))

let getInstance () =
        begin
        !iNSTANCE
        end
let () = java_register_static "FeaturedResourceRelativeRelationshipFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



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
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface *)
(* import org.allbinary.game.configuration.GameConfigurationCentral *)
(* import org.allbinary.game.resource.FeaturedResourceFactory *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.RectangleFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class featuredAnimationInterfaceFactoryInterfaceFactory () =
  object (self)
    inherit FeaturedResourceFactory.featuredResourceFactory ()
    
    

    method getRectangle : 'return. string -> 'return = fun ((resource : string)) ->
        begin
        (Obj.magic ((self#getRectangleXY (resource, 0, 0))))
        end [@@warning "-7"]
    

    method getRectangleXY : 'return. string * int * int -> 'return = fun ((resource : string), (x : int), (y : int)) ->
        try
        begin
        let pointFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ()))))) in ();
        let list : BasicArrayList.basicArrayList ref = ref (((self#getList ()) :> BasicArrayList.basicArrayList)) in ();
        let scale : int ref = ref ((((GameConfigurationCentral.getInstance ())#sCALE#getValue ())#intValue ())) in ();
        let size : int ref = ref (((self#getList ())#size ())) in ();
        for index = 0 to !size - 1 do
            let featureInterface : FeatureResourceAnimationInterfaceFactoryInterface.featureResourceAnimationInterfaceFactoryInterface ref = ref (((Obj.magic !list#objectArray.(index)) :> FeatureResourceAnimationInterfaceFactoryInterface.featureResourceAnimationInterfaceFactoryInterface)) in ();
            if (!featureInterface#isFeature ()) then begin
                let rectangle : Obj.t ref = ref ((Obj.repr (!featureInterface#getRectangle (resource)))) in ();
                if ((Obj.repr (Obj.magic !rectangle)) != (Obj.repr (RectangleFactory.get_sINGLETON ()))) then begin
                    raise (Java_return (Obj.repr ((Obj.obj (java_new "Rectangle" (Obj.repr (((Obj.magic !pointFactory)#createXY (x, y)), ((((((Obj.magic !rectangle)#getWidth ()) * !scale)) asr 1)), ((((((Obj.magic !rectangle)#getHeight ()) * !scale)) asr 1)))))))))
                end
            end
        done;
        raise (Failure ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("No rectangle available for current feature selection or Resource: "))#append (resource))))))
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getProcedural ((resource : string)) : ProceduralAnimationInterfaceFactoryInterface.proceduralAnimationInterfaceFactoryInterface =
        begin
        ((Obj.magic (self#getBasicAnimationInterfaceFactoryInstance (resource))) :> ProceduralAnimationInterfaceFactoryInterface.proceduralAnimationInterfaceFactoryInterface)
        end [@@warning "-7"]
    

    method get ((resource : string)) : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface =
        begin
        ((Obj.magic (self#getBasicAnimationInterfaceFactoryInstance (resource))) :> AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface)
        end [@@warning "-7"]
    

    method getBasicAnimationInterfaceFactoryInstance ((resource : string)) : BasicAnimationInterfaceFactoryInterface.basicAnimationInterfaceFactoryInterface =
        try
        begin
        let list : BasicArrayList.basicArrayList ref = ref (((self#getList ()) :> BasicArrayList.basicArrayList)) in ();
        let resourceTypeAvailableList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref (((self#getList ())#size ())) in ();
        let featureInterface : FeatureResourceAnimationInterfaceFactoryInterface.featureResourceAnimationInterfaceFactoryInterface ref = ref (((Obj.magic 0) :> FeatureResourceAnimationInterfaceFactoryInterface.featureResourceAnimationInterfaceFactoryInterface)) in ();
        let animationInterfaceFactoryInterface : BasicAnimationInterfaceFactoryInterface.basicAnimationInterfaceFactoryInterface ref = ref (((Obj.magic 0) :> BasicAnimationInterfaceFactoryInterface.basicAnimationInterfaceFactoryInterface)) in ();
        for index = 0 to !size - 1 do
            featureInterface := (Obj.magic !list#objectArray.(index));
            if (!featureInterface#isFeature ()) then begin
                ignore (!resourceTypeAvailableList#add (!featureInterface));
                animationInterfaceFactoryInterface := (!featureInterface#getBasicAnimationInterfaceFactoryInstance (resource));
                if ((Obj.repr !animationInterfaceFactoryInterface) != (Obj.repr (NullAnimationFactory.get_nULL_NOT_FOR_USE_ANIMATION_FACTORY ()))) then begin
                    raise (Java_return (Obj.repr (!animationInterfaceFactoryInterface)))
                end
            end
        done;
        if ((!resourceTypeAvailableList#size ()) > 0) then begin
            let nO_ANIMATION_AVAILABLE_FROM : string ref = ref ("No animation available from: ") in ();
            let fOR_FACTORIES : string ref = ref (" factories: ") in ();
            let fOR_RESOURCE : string ref = ref (" for Resource: ") in ();
            let hAS_KEY : string ref = ref (" has: ") in ();
            let rESOURCES_LABEL : string ref = ref (" resources ") in ();
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append (!nO_ANIMATION_AVAILABLE_FROM));
            ignore (!stringBuffer#appendint ((!resourceTypeAvailableList#size ())));
            ignore (!stringBuffer#append ((CommonSeps.getInstance ())#fORWARD_SLASH));
            ignore (!stringBuffer#appendint (!size));
            ignore (!stringBuffer#append (!fOR_FACTORIES));
            let size2 : int ref = ref ((!resourceTypeAvailableList#size ())) in ();
            for index = 0 to !size2 - 1 do
                ignore (!stringBuffer#append ((java_string_of (Obj.repr (!resourceTypeAvailableList#get (index))))));
                ignore (!stringBuffer#append ((CommonSeps.getInstance ())#cOMMA_SEP))
            done;
            ignore (!stringBuffer#append (!fOR_RESOURCE));
            ignore (!stringBuffer#append (resource));
            for index = 0 to !size - 1 do
                ignore (!stringBuffer#append ((CommonSeps.getInstance ())#nEW_LINE));
                featureInterface := (Obj.magic !list#objectArray.(index));
                if (!featureInterface#isFeature ()) then begin
                    ignore (!stringBuffer#append (((StringUtil.getInstance ())#toString (!featureInterface))));
                    ignore (!stringBuffer#append (!hAS_KEY));
                    ignore (!stringBuffer#appendint (((!featureInterface#getHashtable ())#size ())));
                    ignore (!stringBuffer#append (!rESOURCES_LABEL))
                end
            done;
            raise (Failure ((java_string_of (Obj.repr !stringBuffer))))
        end else begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            for index = 0 to !size - 1 do
                featureInterface := (Obj.magic !list#objectArray.(index));
                ignore (!stringBuffer#append ((java_string_of (Obj.repr !featureInterface))));
                ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE))
            done;
            let result : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
            raise (Failure ((java_string_of (Obj.repr ((((!stringBuffer#append ("No feature resource type available for Resource: "))#append (resource))#append (" Resource Factories Available: "))#append (!result))))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "FeaturedAnimationInterfaceFactoryInterfaceFactory" (fun arguments -> Obj.repr (new featuredAnimationInterfaceFactoryInterfaceFactory (Obj.obj arguments)))

let iNSTANCE = ref ((new featuredAnimationInterfaceFactoryInterfaceFactory ()))
let get_iNSTANCE () = !iNSTANCE
let set_iNSTANCE value' = iNSTANCE := value'
let () = java_register_static "FeaturedAnimationInterfaceFactoryInterfaceFactory.get_iNSTANCE" (fun _ -> Obj.repr (get_iNSTANCE ()))

let getInstance () =
        begin
        !iNSTANCE
        end
let () = java_register_static "FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



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
(* package org.allbinary.business.advertisement *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.rand.MyRandomFactory *)
(* import org.allbinary.logic.system.security.licensing.LockedUtil *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class advertisements () =
  object (self)
    val mutable bannerList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method bannerList = bannerList
    method set_bannerList value' = bannerList <- value'
    val mutable pageList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method pageList = pageList
    method set_pageList value' = pageList <- value'
    val mutable myRandomFactory : MyRandomFactory.myRandomFactory = (Obj.magic 0)
    method myRandomFactory = myRandomFactory
    method set_myRandomFactory value' = myRandomFactory <- value'
    

    method addPage : 'any1. 'any1 -> unit = fun (advertisementProcessorInterface) ->
        let advertisementProcessorInterface = Obj.repr advertisementProcessorInterface in
        begin
        if (not (pageList#contains ((Obj.magic advertisementProcessorInterface)))) then begin
            ignore (pageList#add ((Obj.magic advertisementProcessorInterface)))
        end
        end [@@warning "-20"]
    

    method startRandomPage () : unit =
        begin
        let size : int ref = ref ((pageList#size ())) in ();
        if (!size > 0) then begin
            let random : int ref = ref ((myRandomFactory#getAbsoluteNextInt (!size))) in ();
            let advertisementProcessorInterface : AdvertisementProcessorInterface.advertisementProcessorInterface ref = ref (((Obj.magic pageList#objectArray.(!random)) :> AdvertisementProcessorInterface.advertisementProcessorInterface)) in ();
            ignore (!advertisementProcessorInterface#start ())
        end
        end
    

    method processRandomPage () : unit =
        begin
        if ((Obj.magic (java_call_static "LockedUtil.getInstance" (Obj.repr ())))#isLocked ()) then begin
            let size : int ref = ref ((pageList#size ())) in ();
            if (!size > 0) then begin
                let random : int ref = ref ((myRandomFactory#getAbsoluteNextInt (!size))) in ();
                let advertisementProcessorInterface : AdvertisementProcessorInterface.advertisementProcessorInterface ref = ref (((Obj.magic pageList#objectArray.(!random)) :> AdvertisementProcessorInterface.advertisementProcessorInterface)) in ();
                ignore (!advertisementProcessorInterface#process ())
            end
        end
        end
    

    method stopAllPage () : unit =
        begin
        let index : int ref = ref ((pageList#size ())) in ();
        while ((index := !index - 1; !index) >= 0) do
            let advertisementProcessorInterface : AdvertisementProcessorInterface.advertisementProcessorInterface ref = ref (((Obj.magic pageList#objectArray.(!index)) :> AdvertisementProcessorInterface.advertisementProcessorInterface)) in ();
            ignore (!advertisementProcessorInterface#stop ())
        done
        end
    

    method addBanner : 'any1. 'any1 -> unit = fun (advertisementProcessorInterface) ->
        let advertisementProcessorInterface = Obj.repr advertisementProcessorInterface in
        begin
        if (not (bannerList#contains ((Obj.magic advertisementProcessorInterface)))) then begin
            ignore (bannerList#add ((Obj.magic advertisementProcessorInterface)))
        end
        end [@@warning "-20"]
    

    method startAll () : unit =
        begin
        let index : int ref = ref ((bannerList#size ())) in ();
        while ((index := !index - 1; !index) >= 0) do
            let advertisementProcessorInterface : AdvertisementProcessorInterface.advertisementProcessorInterface ref = ref (((Obj.magic bannerList#objectArray.(!index)) :> AdvertisementProcessorInterface.advertisementProcessorInterface)) in ();
            ignore (!advertisementProcessorInterface#start ())
        done
        end
    

    method stopAllBanner () : unit =
        begin
        let index : int ref = ref ((bannerList#size ())) in ();
        while ((index := !index - 1; !index) >= 0) do
            let advertisementProcessorInterface : AdvertisementProcessorInterface.advertisementProcessorInterface ref = ref (((Obj.magic bannerList#objectArray.(!index)) :> AdvertisementProcessorInterface.advertisementProcessorInterface)) in ();
            ignore (!advertisementProcessorInterface#stop ())
        done
        end
    

    method getBanner ((index : int)) : AdvertisementProcessorInterface.advertisementProcessorInterface =
        begin
        let advertisementProcessorInterface : AdvertisementProcessorInterface.advertisementProcessorInterface ref = ref (((Obj.magic bannerList#objectArray.(index)) :> AdvertisementProcessorInterface.advertisementProcessorInterface)) in ();
        (!advertisementProcessorInterface :> AdvertisementProcessorInterface.advertisementProcessorInterface)
        end
    

    method stopAll () : unit =
        begin
        (self#stopAllBanner ());
        (self#stopAllPage ())
        end

    initializer
      begin
        bannerList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        pageList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        myRandomFactory <- ((MyRandomFactory.getInstance ()) :> MyRandomFactory.myRandomFactory);
        ()
      end
  end
let () = java_register_constructor "Advertisements" (fun arguments -> Obj.repr (new advertisements (Obj.obj arguments)))



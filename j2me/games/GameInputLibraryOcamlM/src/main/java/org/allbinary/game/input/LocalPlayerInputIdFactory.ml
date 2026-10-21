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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.analog.AnalogLocationInputFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)

class localPlayerInputIdFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable mAX_NUMBER_OF_PLAYERS : int = 0
    method mAX_NUMBER_OF_PLAYERS = mAX_NUMBER_OF_PLAYERS
    method set_mAX_NUMBER_OF_PLAYERS value' = mAX_NUMBER_OF_PLAYERS <- value'
    val mutable mAX_FAST_DEVICEID : int = 0
    method mAX_FAST_DEVICEID = mAX_FAST_DEVICEID
    method set_mAX_FAST_DEVICEID value' = mAX_FAST_DEVICEID <- value'
    val mutable deviceIdToplayerId : int array = (Obj.magic 0)
    method deviceIdToplayerId = deviceIdToplayerId
    method set_deviceIdToplayerId value' = deviceIdToplayerId <- value'
    val mutable playerIdToDeviceId : int array = (Obj.magic 0)
    method playerIdToDeviceId = playerIdToDeviceId
    method set_playerIdToDeviceId value' = playerIdToDeviceId <- value'
    val mutable playersInPlay : bool array = (Obj.magic 0)
    method playersInPlay = playersInPlay
    method set_playersInPlay value' = playersInPlay <- value'
    val mutable totalDevicesMapped : int = 0
    method totalDevicesMapped = totalDevicesMapped
    method set_totalDevicesMapped value' = totalDevicesMapped <- value'
    
    

    method getDeviceId ((playerInputId : int)) : int =
        begin
        playerIdToDeviceId.(playerInputId)
        end
    

    method getPlayerForDevice ((deviceId : int)) : int =
        try
        begin
        let index : int ref = ref (0) in ();
        if (deviceId < mAX_FAST_DEVICEID) then begin
            let playerInputId : int ref = ref (deviceIdToplayerId.(deviceId)) in ();
            if (!playerInputId <> (-1)) then begin
                raise (Java_return (Obj.repr (!playerInputId)))
            end
        end else begin
            for index = (totalDevicesMapped - 1) downto 0 do
                if (playerIdToDeviceId.(!index) = deviceId) then begin
                    raise (Java_return (Obj.repr (!index)))
                end
            done
        end;
        index := totalDevicesMapped;
        if (deviceId < mAX_FAST_DEVICEID) then begin
            deviceIdToplayerId.(deviceId) <- !index
        end else begin
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append ("Added DeviceId: "))#appendint (deviceId))#append (" beyond fast Id list")))), self, "getPlayerForDevice"))
        end;
        playerIdToDeviceId.(!index) <- deviceId;
        ignore ((AnalogLocationInputFactory.getInstance ())#addPlayer (totalDevicesMapped));
        totalDevicesMapped <- totalDevicesMapped + 1;
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((((((new StringMaker.stringMaker ())#append ("Added DeviceId: "))#appendint (deviceId))#append (" at: "))#appendint (!index))#append (" Total: "))#appendint (totalDevicesMapped)))), self, "getPlayerForDevice"));
        !index
        end
        with Java_return value -> Obj.obj value
    

    method getTotalDevicesInPlay () : int =
        begin
        let total : int ref = ref (0) in ();
        for index = (totalDevicesMapped - 1) downto 0 do
            if (playersInPlay.(index) = true) then begin
                total := !total + 1
            end
        done;
        !total
        end
    

    method isPlayerInPlay ((playerInputId : int)) : bool =
        begin
        playersInPlay.(playerInputId)
        end
    

    method setPlayerInPlay ((playerInputId : int)) : unit =
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Setting PlayerInPlay with playerInputId: "))#appendint (playerInputId)))), self, "setPlayerInPlay"));
        playersInPlay.(playerInputId) <- true
        end
    

    method setPlayerOutOfPlay ((playerInputId : int)) : unit =
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Setting PlayerOutOfPlay with playerInputId: "))#appendint (playerInputId)))), self, "setPlayerOutOfPlay"));
        playersInPlay.(playerInputId) <- false
        end
    

    method getPlayersInPlay () : bool array =
        begin
        playersInPlay
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        mAX_NUMBER_OF_PLAYERS <- 6;
        mAX_FAST_DEVICEID <- 65;
        deviceIdToplayerId <- (Array.make (mAX_FAST_DEVICEID) 0);
        playerIdToDeviceId <- (Array.make (mAX_NUMBER_OF_PLAYERS) 0);
        playersInPlay <- (Array.make (mAX_NUMBER_OF_PLAYERS) false);
        totalDevicesMapped <- 0;
        ();
        for index = ((Array.length deviceIdToplayerId) - 1) downto 0 do
            deviceIdToplayerId.(index) <- (-1)
        done
      end
  end [@@warning "-20"]
let () = java_register_constructor "LocalPlayerInputIdFactory" (fun arguments -> Obj.repr (new localPlayerInputIdFactory (Obj.obj arguments)))

let instance = (new localPlayerInputIdFactory ())
let get_instance () = instance
let () = java_register_static "LocalPlayerInputIdFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LocalPlayerInputIdFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



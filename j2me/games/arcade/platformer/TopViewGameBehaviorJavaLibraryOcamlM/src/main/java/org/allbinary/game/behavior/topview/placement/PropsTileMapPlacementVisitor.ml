(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.behavior.topview.placement *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.rand.MyRandomFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.mapeditor.core.TileLayer *)
(* import org.mapeditor.core.TiledMap *)

class propsTileMapPlacementVisitor () =
  object (self)
    inherit TileMapPlacementVisitor.tileMapPlacementVisitor ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable randomFactory : MyRandomFactory.myRandomFactory = (Obj.magic 0)
    method randomFactory = randomFactory
    method set_randomFactory value' = randomFactory <- value'
    

    method visit : 'any1. 'any1 * int array array -> unit = fun (lastMap, (mapData : int array array)) ->
        let lastMap = Obj.repr lastMap in
        begin
        let layerIndex : int ref = ref (0) in ();
        let tileLayer : Obj.t ref = ref ((Obj.repr ((Obj.magic ((Obj.magic lastMap)#getLayer (!layerIndex)))))) in ();
        let mapArray : int array array ref = ref (((Obj.magic !tileLayer)#getMapArray ())) in ();
        let size : int ref = ref ((Array.length mapData)) in ();
        let size2 : int ref = ref ((Array.length mapData.(0))) in ();
        for index = 0 to !size - 1 do
            for index2 = 0 to !size2 - 1 do
                if (!mapArray.(index).(index2) == 14) then begin
                    ()
                end else begin
                    (self#visit2 (!mapArray, mapData, index, index2))
                end;
                if ((index mod 7) = 0) then begin
                    if (!mapArray.(index).(index2) == 19) then begin
                        let randomInt : int ref = ref ((randomFactory#getAbsoluteNextIntAllowZero (3))) in ();
                        if (!randomInt = 0) then begin
                            mapData.(index).(index2) <- 1
                        end else if (!randomInt = 1) then begin
                            mapData.(index).(index2) <- 81
                        end else if (!randomInt = 2) then begin
                            mapData.(index).(index2) <- 97
                        end
                    end else if (!mapArray.(index).(index2) == 17) then begin
                        let randomInt : int ref = ref ((randomFactory#getAbsoluteNextIntAllowZero (3))) in ();
                        if (!randomInt = 0) then begin
                            mapData.(index).(index2) <- 17
                        end else if (!randomInt = 1) then begin
                            mapData.(index).(index2) <- 81
                        end else if (!randomInt = 2) then begin
                            mapData.(index).(index2) <- 97
                        end
                    end
                end;
                if ((index2 mod 7) = 0) then begin
                    if (!mapArray.(index).(index2) == 34) then begin
                        let randomInt : int ref = ref ((randomFactory#getAbsoluteNextIntAllowZero (4))) in ();
                        if (!randomInt = 0) then begin
                            mapData.(index).(index2) <- 33
                        end else if (!randomInt = 1) then begin
                            mapData.(index).(index2) <- 65
                        end else if (!randomInt = 2) then begin
                            mapData.(index).(index2) <- 81
                        end else if (!randomInt = 3) then begin
                            mapData.(index).(index2) <- 97
                        end
                    end
                end
            done
        done
        end [@@warning "-7-20"]
    

    method visit2 ((mapArray : int array array), (mapData : int array array), (index : int), (index2 : int)) : unit =
        try
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        let countX : int ref = ref (0) in ();
        let countY : int ref = ref (0) in ();
        let index3 : int ref = ref ((index - 1)) in ();
        for index4 = (index2 - 1) downto 0 + 1 do
            index3 := !index3 - 1;
            if ((!index3 < 0) || (index4 < 0)) then begin
                raise (Java_return (Obj.repr (())))
            end;
            if ((mapArray.(!index3).(index4) != 14) || (mapData.(!index3).(index4) != 0)) then begin
                if ((!countX > 10) && (!countY > 10)) then begin
                    for index5 = (!index3 + 1) to (index - 1) - 1 do
                        for index6 = (index4 + 1) to (index2 - 1) - 1 do
                            if ((mapArray.(index5).(index6) != 14) || (mapData.(index5).(index6) != 0)) then begin
                                raise (Java_return (Obj.repr (())))
                            end
                        done
                    done;
                    let x : int ref = ref ((index - ((!countX / 2)))) in ();
                    let y : int ref = ref ((index2 - ((!countY / 2)))) in ();
                    if ((((!x >= 0) && (!y >= 0)) && (!x < (Array.length mapData))) && (!y < (Array.length mapData.(0)))) then begin
                        ()
                    end
                end;
                raise (Java_return (Obj.repr (())))
            end;
            countY := !countY + 1;
            countX := !countX + 1
        done
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        randomFactory <- ((MyRandomFactory.getInstance ()) :> MyRandomFactory.myRandomFactory);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "PropsTileMapPlacementVisitor" (fun arguments -> Obj.repr (new propsTileMapPlacementVisitor (Obj.obj arguments)))



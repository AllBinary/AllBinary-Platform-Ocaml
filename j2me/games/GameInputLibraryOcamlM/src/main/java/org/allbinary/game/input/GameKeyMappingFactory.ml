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
(* import org.allbinary.logic.NullUtil *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "GameKeyMappingFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
class gameKeyMappingFactory () =
  object (self)
    val mutable intKeyToGameKey : GameKey.gameKey array = (Obj.magic 0)
    method intKeyToGameKey = intKeyToGameKey
    method set_intKeyToGameKey value' = intKeyToGameKey <- value'
    
    

    method getGameKey ((key : int)) : GameKey.gameKey =
        begin
        (intKeyToGameKey.(key) :> GameKey.gameKey)
        end
    

    method setGameKey : 'any1. 'any1 -> unit = fun (gameKey) ->
        let gameKey = Obj.repr gameKey in
        begin
        intKeyToGameKey.(((Obj.magic gameKey)#set_getId ())) (((Obj.magic gameKey) :> GameKey.gameKey))
        end [@@warning "-20"]

    initializer
      begin
        intKeyToGameKey <- (Array.make ((InputFactory.getInstance ())#mAX) (Obj.magic 0));
        ();
        let gameKeyFactory : GameKeyFactory.gameKeyFactory ref = ref (((GameKeyFactory.getInstance ()) :> GameKeyFactory.gameKeyFactory)) in ();
        (self#setGameKey (!gameKeyFactory#nONE));
        (self#setGameKey (!gameKeyFactory#uP));
        (self#setGameKey (!gameKeyFactory#dOWN));
        (self#setGameKey (!gameKeyFactory#lEFT));
        (self#setGameKey (!gameKeyFactory#rIGHT));
        (self#setGameKey (!gameKeyFactory#kEY_POUND));
        (self#setGameKey (!gameKeyFactory#kEY_STAR));
        (self#setGameKey (!gameKeyFactory#kEY_NUM0));
        (self#setGameKey (!gameKeyFactory#kEY_NUM1));
        (self#setGameKey (!gameKeyFactory#kEY_NUM2));
        (self#setGameKey (!gameKeyFactory#kEY_NUM3));
        (self#setGameKey (!gameKeyFactory#kEY_NUM4));
        (self#setGameKey (!gameKeyFactory#kEY_NUM5));
        (self#setGameKey (!gameKeyFactory#kEY_NUM6));
        (self#setGameKey (!gameKeyFactory#kEY_NUM7));
        (self#setGameKey (!gameKeyFactory#kEY_NUM8));
        (self#setGameKey (!gameKeyFactory#kEY_NUM9));
        (self#setGameKey (!gameKeyFactory#gAME_A));
        (self#setGameKey (!gameKeyFactory#gAME_B));
        (self#setGameKey (!gameKeyFactory#gAME_C));
        (self#setGameKey (!gameKeyFactory#gAME_D));
        (self#setGameKey (!gameKeyFactory#fIRE));
        (self#setGameKey (!gameKeyFactory#lEVEL_DOWN));
        (self#setGameKey (!gameKeyFactory#lEVEL_UP))
      end
  end
let () = java_register_constructor "GameKeyMappingFactory" (fun arguments -> Obj.repr (new gameKeyMappingFactory (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new gameKeyMappingFactory ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "GameKeyMappingFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



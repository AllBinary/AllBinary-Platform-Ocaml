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
(* package org.allbinary.game.paint.help *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.GameKey *)
(* import org.allbinary.game.input.GameKeyFactory *)
(* import org.allbinary.game.input.Input *)
(* import org.allbinary.game.input.PlatformInputMappingFactory *)
(* import org.allbinary.game.input.mapping.GameInputMapping *)
(* import org.allbinary.game.input.mapping.PersistentInputMapping *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.util.BasicArrayList *)

class basicInputMappingHelpPaintable ((gameInputMappingArray_arg : GameInputMapping.gameInputMapping array), (basicColor : BasicColor.basicColor)) =
  object (self)
    inherit HelpPaintable.helpPaintable ("Help Screen", (BasicColorFactory.getInstance ())#bLACK, basicColor) as super
    val mutable gameInputMappingArray : GameInputMapping.gameInputMapping array = (Obj.magic 0)
    method gameInputMappingArray = gameInputMappingArray
    method set_gameInputMappingArray value' = gameInputMappingArray <- value'
    val mutable nONE : GameKey.gameKey = (Obj.magic 0)
    method nONE = nONE
    method set_nONE value' = nONE <- value'
    
    

    method update : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_selectedGameKey, _selectedInput) ->
        begin
        let gameKeyMapping : PersistentInputMapping.persistentInputMapping ref = ref ((((Obj.magic (java_call_static "PlatformInputMappingFactory.getInstance" (Obj.repr ())))#getPersistentInputMappingInstance ()) :> PersistentInputMapping.persistentInputMapping)) in ();
        let eQUAL : string ref = ref (" = ") in ();
        let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let size : int ref = ref ((Array.length gameInputMappingArray)) in ();
        let keyInfo : string array ref = ref ((Array.make (!size) (Obj.magic 0))) in ();
        let gameInputMapping : GameInputMapping.gameInputMapping ref = ref (((Obj.magic 0) :> GameInputMapping.gameInputMapping)) in ();
        let gameKey : GameKey.gameKey ref = ref (((Obj.magic 0) :> GameKey.gameKey)) in ();
        let list : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
        for index = 0 to !size - 1 do
            gameInputMapping := gameInputMappingArray.(index);
            gameKey := (!gameInputMapping#getGameKey ());
            list := ((!gameKeyMapping#getInputMapping ())#getMappedInput (!gameKey));
            ignore (!stringMaker#delete (0, (!stringMaker#length ())));
            !keyInfo.(index) <- (java_string_of (Obj.repr (((!stringMaker#append ((!gameInputMapping#getName ())))#append (!eQUAL))#append ((self#get (!list))))))
        done;
        ignore (super#setInputInfoP (!keyInfo))
        end [@@warning "-7-20"]
    

    method get : 'any1. 'any1 -> string = fun (keyList) ->
        let keyList = Obj.repr keyList in
        begin
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let aND : string ref = ref ("and ") in ();
        let key : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let size : int ref = ref (((Obj.magic keyList)#size ())) in ();
        for index = 0 to !size - 1 do
            key := Obj.repr ((Obj.magic (Obj.magic keyList)#objectArray.(index)));
            ignore (!stringBuffer#append (((Obj.magic !key)#getName ())));
            if ((index + 1) < ((Obj.magic keyList)#size ())) then begin
                if (((Obj.magic keyList)#size ()) = 2) then begin
                    ignore ((!stringBuffer#append (!commonSeps#sPACE))#append (!aND))
                end else begin
                    if ((index + 2) = ((Obj.magic keyList)#size ())) then begin
                        ignore (!stringBuffer#append (!commonSeps#cOMMA_SEP));
                        ignore (!stringBuffer#append (!aND))
                    end else begin
                        ignore (!stringBuffer#append (!commonSeps#cOMMA_SEP))
                    end
                end
            end
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        nONE <- ((GameKeyFactory.getInstance ())#nONE :> GameKey.gameKey);
        ();
        (* super(...) is the inherit clause *) ();
        gameInputMappingArray <- gameInputMappingArray_arg;
        (self#update (nONE, nONE))
      end
  end
let () = java_register_constructor "BasicInputMappingHelpPaintable" (fun arguments -> Obj.repr (new basicInputMappingHelpPaintable (Obj.obj arguments)))



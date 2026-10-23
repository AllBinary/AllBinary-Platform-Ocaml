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
(* package org.allbinary.game.input.mapping *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import org.allbinary.game.input.GameKey *)
(* import org.allbinary.game.input.GameKeyFactory *)
(* import org.allbinary.game.input.Input *)
(* import org.allbinary.game.input.InputFactory *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "InputToGameKeyMapping.get_instance" (fun _ -> Obj.repr (get_instance ()))
class inputToGameKeyMapping () =
  object (self)
    inherit InputMapping.inputMapping () as super
    val mutable gameKeyFactory : GameKeyFactory.gameKeyFactory = (Obj.magic 0)
    method gameKeyFactory = gameKeyFactory
    method set_gameKeyFactory value' = gameKeyFactory <- value'
    val mutable mappedGameKeys : GameKey.gameKey array = (Obj.magic 0)
    method mappedGameKeys = mappedGameKeys
    method set_mappedGameKeys value' = mappedGameKeys <- value'
    val mutable platformToGameKeyMapping : GameKey.gameKey array = (Obj.magic 0)
    method platformToGameKeyMapping = platformToGameKeyMapping
    method set_platformToGameKeyMapping value' = platformToGameKeyMapping <- value'
    val mutable negativePlatformToGameKeyMapping : GameKey.gameKey array = (Obj.magic 0)
    method negativePlatformToGameKeyMapping = negativePlatformToGameKeyMapping
    method set_negativePlatformToGameKeyMapping value' = negativePlatformToGameKeyMapping <- value'
    
    

    method clear () : unit =
        begin
        for index = ((Array.length platformToGameKeyMapping) - 1) downto 0 do
            platformToGameKeyMapping.(index) <- (gameKeyFactory#nONE :> GameKey.gameKey)
        done
        end [@@warning "-7"]
    

    method removeAll () : unit =
        begin
        ignore (super#removeAll ());
        (self#clear ())
        end [@@warning "-7"]
    

    method addMapping : 'any1. 'any1 -> unit = fun (inputToGameKeyMapping) ->
        let inputToGameKeyMapping = Obj.repr inputToGameKeyMapping in
        begin
        for index = (((Obj.magic inputToGameKeyMapping)#getMaxMappable ()) - 1) downto 0 do
            let input : Obj.t ref = ref ((Obj.repr ((Obj.magic inputToGameKeyMapping)#getInstance (index)))) in ();
            if ((Obj.repr (Obj.magic !input)) != (Obj.repr gameKeyFactory#nONE)) then begin
                (self#addAll ((Obj.magic !input), ((Obj.magic inputToGameKeyMapping)#getMappedInput ((Obj.magic !input)))))
            end
        done
        end [@@warning "-7-20"]
    

    method addAll : 'any1 'any2. 'any1 * 'any2 -> unit = fun (input, list) ->
        let input = Obj.repr input in
        let list = Obj.repr list in
        begin
        for index = (((Obj.magic list)#size ()) - 1) downto 0 do
            let mappedToInput : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic list)#objectArray.(index)))) in ();
            (self#add ((Obj.magic input), (Obj.magic !mappedToInput)))
        done
        end [@@warning "-7-20"]
    

    method add : 'any1 'any2. 'any1 * 'any2 -> unit = fun (input, mappedToInput) ->
        let input = Obj.repr input in
        let mappedToInput = Obj.repr mappedToInput in
        begin
        ignore (super#add ((Obj.magic input), (Obj.magic mappedToInput)));
        (self#set ((Obj.magic input), (Obj.magic mappedToInput)))
        end [@@warning "-7-20"]
    

    method remove : 'any1 'any2. 'any1 * 'any2 -> unit = fun (input, mappedToInput) ->
        let input = Obj.repr input in
        let mappedToInput = Obj.repr mappedToInput in
        begin
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append ((CommonLabels.getInstance ())#sTART_LABEL))#append (((StringUtil.getInstance ())#toString ((Obj.magic input)))))#append (" == "))#append (((StringUtil.getInstance ())#toString ((Obj.magic mappedToInput))))))), self, "InputToGameKeyMapping::remove"));
        ignore (super#remove ((Obj.magic input), (Obj.magic mappedToInput)));
        (self#set ((Obj.magic input), gameKeyFactory#nONE))
        end [@@warning "-7-20"]
    

    method set : 'any1 'any2. 'any1 * 'any2 -> unit = fun (input, mappedToInput) ->
        let input = Obj.repr input in
        let mappedToInput = Obj.repr mappedToInput in
        begin
        let id : int ref = ref (((Obj.magic mappedToInput)#getId ())) in ();
        if ((!id >= 0) && (!id < (Array.length platformToGameKeyMapping))) then begin
            platformToGameKeyMapping.(!id) <- ((Obj.magic (Obj.magic input)) :> GameKey.gameKey)
        end
        end [@@warning "-7-20"]
    

    method getMaxMappable () : int =
        begin
        (Array.length platformToGameKeyMapping)
        end [@@warning "-7"]
    

    method getReverseInstance ((id : int)) : BasicArrayList.basicArrayList =
        begin
        let list : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let inputFactory : InputFactory.inputFactory ref = ref (((InputFactory.getInstance ()) :> InputFactory.inputFactory)) in ();
        for index = 0 to (Array.length platformToGameKeyMapping) - 1 do
            if ((platformToGameKeyMapping.(index)#getId ()) == id) then begin
                let input : Obj.t ref = ref ((Obj.repr (!inputFactory#getInstanceById (index)))) in ();
                if ((Obj.magic !input) != (Obj.magic 0)) then begin
                    ignore (!list#add ((Obj.magic !input)))
                end
            end
        done;
        (!list :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method initGameKey : 'any1 'any2. 'any1 * 'any2 -> unit = fun (canvas, gameKey) ->
        let canvas = Obj.repr canvas in
        let gameKey = Obj.repr gameKey in
        begin
        let key : int ref = ref (((Obj.magic canvas)#getKeyCode (((Obj.magic gameKey)#getId ())))) in ();
        if ((!key < 0) && ((-!key) < (Array.length negativePlatformToGameKeyMapping))) then begin
            negativePlatformToGameKeyMapping.((-!key)) <- ((Obj.magic gameKey) :> GameKey.gameKey)
        end else if (!key > 0) then begin
            if ((Obj.repr platformToGameKeyMapping.(!key)) == (Obj.repr gameKeyFactory#nONE)) then begin
                platformToGameKeyMapping.(!key) <- ((Obj.magic gameKey) :> GameKey.gameKey)
            end
        end else begin
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append ((java_string_of (Obj.repr (Obj.magic gameKey)))))#append ((CommonSeps.getInstance ())#cOLON_SEP))#appendint (!key)))), self, (self#commonStrings)#iNIT, (Failure ("Exception"))))))
        end
        end [@@warning "-7-20"]
    

    method getSmallestCanvasGameKeyCode : 'any1. 'any1 -> int = fun (canvas) ->
        let canvas = Obj.repr canvas in
        begin
        let nextKey : int ref = ref (0) in ();
        let smallestKey : int ref = ref (0) in ();
        let index : int ref = ref ((Array.length mappedGameKeys)) in ();
        while ((index := !index - 1; !index) >= 0) do
            nextKey := ((Obj.magic canvas)#getKeyCode ((mappedGameKeys.(!index)#getId ())));
            if (!nextKey < !smallestKey) then begin
                smallestKey := !nextKey
            end
        done;
        !smallestKey
        end [@@warning "-7-20"]
    

    method init : 'any1. 'any1 -> unit = fun (canvas) ->
        let canvas = Obj.repr canvas in
        begin
        (try
            let negativePlatformToGameKeyMapping_arg : GameKey.gameKey array ref = ref ((Array.make (0) (Obj.magic 0))) in ();
            let smallestKey : int ref = ref ((self#getSmallestCanvasGameKeyCode ((Obj.magic canvas)))) in ();
            if (!smallestKey < 0) then begin
                smallestKey := !smallestKey - 1;
                if (!smallestKey < (-256)) then begin
                    smallestKey := (-256)
                end;
                negativePlatformToGameKeyMapping_arg := (Array.make ((-!smallestKey)) (Obj.magic 0));
                let index : int ref = ref ((Array.length !negativePlatformToGameKeyMapping_arg)) in ();
                while ((index := !index - 1; !index) >= 0) do
                    !negativePlatformToGameKeyMapping_arg.(!index) <- (gameKeyFactory#nONE :> GameKey.gameKey)
                done;
                negativePlatformToGameKeyMapping <- !negativePlatformToGameKeyMapping_arg
            end;
            let index : int ref = ref ((Array.length mappedGameKeys)) in ();
            while ((index := !index - 1; !index) >= 0) do
                (self#initGameKey ((Obj.magic canvas), mappedGameKeys.(!index)))
            done
        with t -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#commonStrings)#iNIT, t))
        end)
        end [@@warning "-7-20"]
    

    method getInstanceForCanvas : 'any1. 'any1 * int -> GameKey.gameKey = fun (_canvas, (id : int)) ->
        try
        begin
        if ((id >= 0) && (id < (Array.length platformToGameKeyMapping))) then begin
            raise (Java_return (Obj.repr (platformToGameKeyMapping.(id))))
        end else if ((id < 0) && ((-id) < (Array.length negativePlatformToGameKeyMapping))) then begin
            raise (Java_return (Obj.repr (negativePlatformToGameKeyMapping.((-id)))))
        end else begin
            raise (Java_return (Obj.repr (gameKeyFactory#nONE)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method getInstance ((id : int)) : GameKey.gameKey =
        try
        begin
        if ((id >= 0) && (id < (Array.length platformToGameKeyMapping))) then begin
            raise (Java_return (Obj.repr (platformToGameKeyMapping.(id))))
        end else if ((id < 0) && ((-id) < (Array.length negativePlatformToGameKeyMapping))) then begin
            raise (Java_return (Obj.repr (negativePlatformToGameKeyMapping.((-id)))))
        end else begin
            raise (Java_return (Obj.repr (gameKeyFactory#nONE)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        gameKeyFactory <- ((GameKeyFactory.getInstance ()) :> GameKeyFactory.gameKeyFactory);
        mappedGameKeys <- [| gameKeyFactory#uP; gameKeyFactory#dOWN; gameKeyFactory#lEFT; gameKeyFactory#rIGHT |];
        platformToGameKeyMapping <- (Array.make ((InputFactory.getInstance ())#mAX) (Obj.magic 0));
        negativePlatformToGameKeyMapping <- (Array.make (0) (Obj.magic 0));
        ();
        ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, self, (self#commonStrings)#cONSTRUCTOR));
        (self#clear ())
      end
  end
let () = java_register_constructor "InputToGameKeyMapping" (fun arguments -> Obj.repr (new inputToGameKeyMapping (Obj.obj arguments)))

let getNullInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new inputToGameKeyMapping ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "InputToGameKeyMapping.getNullInstance" (fun arguments -> Obj.repr (getNullInstance (Obj.obj arguments)))



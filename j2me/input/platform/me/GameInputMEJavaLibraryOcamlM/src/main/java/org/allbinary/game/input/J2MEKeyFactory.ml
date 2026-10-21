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

class j2MEKeyFactory () =
  object
    val mutable gameKeyFactory : GameKeyFactory.gameKeyFactory = (Obj.magic 0)
    method gameKeyFactory = gameKeyFactory
    method set_gameKeyFactory value' = gameKeyFactory <- value'
    
    

    method init () : unit =
        begin
        let gameKeyArray : GameKey.gameKey array ref = ref ([| gameKeyFactory#dOWN; gameKeyFactory#fIRE; gameKeyFactory#gAME_A; gameKeyFactory#gAME_B; gameKeyFactory#gAME_C; gameKeyFactory#gAME_D; gameKeyFactory#kEY_NUM0; gameKeyFactory#kEY_NUM1; gameKeyFactory#kEY_NUM2; gameKeyFactory#kEY_NUM3; gameKeyFactory#kEY_NUM4; gameKeyFactory#kEY_NUM5; gameKeyFactory#kEY_NUM6; gameKeyFactory#kEY_NUM7; gameKeyFactory#kEY_NUM8; gameKeyFactory#kEY_NUM9; gameKeyFactory#kEY_POUND; gameKeyFactory#kEY_STAR; gameKeyFactory#lEFT; gameKeyFactory#lEVEL_DOWN; gameKeyFactory#lEVEL_UP; gameKeyFactory#nONE; gameKeyFactory#rIGHT; gameKeyFactory#uP |]) in ();
        let inputFactory : InputFactory.inputFactory ref = ref (((InputFactory.getInstance ()) :> InputFactory.inputFactory)) in ();
        let index : int ref = ref ((Array.length !gameKeyArray)) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore (!inputFactory#add ((!gameKeyArray.(!index)#getId ()), !gameKeyArray.(!index)))
        done
        end
    

    method isSubmission : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        try
        begin
        if ((Obj.repr (Obj.magic input)) == (Obj.repr gameKeyFactory#fIRE)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method isDelete : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        try
        begin
        if ((Obj.repr (Obj.magic input)) == (Obj.repr gameKeyFactory#gAME_D)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method isBackSpace : 'any1. 'any1 -> bool = fun (_input) ->
        begin
        false
        end [@@warning "-20"]
    

    method isUp : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        try
        begin
        if ((Obj.repr (Obj.magic input)) == (Obj.repr gameKeyFactory#uP)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method isDown : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        try
        begin
        if ((Obj.repr (Obj.magic input)) == (Obj.repr gameKeyFactory#dOWN)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method isLeft : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        try
        begin
        if ((Obj.repr (Obj.magic input)) == (Obj.repr gameKeyFactory#lEFT)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method isRight : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        try
        begin
        if ((Obj.repr (Obj.magic input)) == (Obj.repr gameKeyFactory#rIGHT)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method isEnter : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        try
        begin
        if ((Obj.repr (Obj.magic input)) == (Obj.repr gameKeyFactory#fIRE)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        gameKeyFactory <- ((GameKeyFactory.getInstance ()) :> GameKeyFactory.gameKeyFactory);
        ();
        ()
      end
  end
let () = java_register_constructor "J2MEKeyFactory" (fun arguments -> Obj.repr (new j2MEKeyFactory (Obj.obj arguments)))

let instance = (new j2MEKeyFactory ())
let get_instance () = instance
let () = java_register_static "J2MEKeyFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "J2MEKeyFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



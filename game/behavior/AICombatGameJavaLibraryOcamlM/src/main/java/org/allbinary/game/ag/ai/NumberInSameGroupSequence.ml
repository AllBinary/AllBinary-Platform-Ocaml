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
(* package org.allbinary.game.ag.ai *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)

class numberInSameGroupSequence () =
  object
    val mutable nUMBER_ON_SAME_TEAM_SEQUENCE_ZERO : int = (Obj.magic 0)
    method nUMBER_ON_SAME_TEAM_SEQUENCE_ZERO = nUMBER_ON_SAME_TEAM_SEQUENCE_ZERO
    method set_nUMBER_ON_SAME_TEAM_SEQUENCE_ZERO value' = nUMBER_ON_SAME_TEAM_SEQUENCE_ZERO <- value'
    val mutable nUMBER_ON_SAME_TEAM_SEQUENCE_ONE : int = (Obj.magic 0)
    method nUMBER_ON_SAME_TEAM_SEQUENCE_ONE = nUMBER_ON_SAME_TEAM_SEQUENCE_ONE
    method set_nUMBER_ON_SAME_TEAM_SEQUENCE_ONE value' = nUMBER_ON_SAME_TEAM_SEQUENCE_ONE <- value'
    val mutable nUMBER_ON_SAME_TEAM_SEQUENCE_TWO : int = (Obj.magic 0)
    method nUMBER_ON_SAME_TEAM_SEQUENCE_TWO = nUMBER_ON_SAME_TEAM_SEQUENCE_TWO
    method set_nUMBER_ON_SAME_TEAM_SEQUENCE_TWO value' = nUMBER_ON_SAME_TEAM_SEQUENCE_TWO <- value'
    val mutable nUMBER_ON_SAME_TEAM_SEQUENCE_THREE : int = (Obj.magic 0)
    method nUMBER_ON_SAME_TEAM_SEQUENCE_THREE = nUMBER_ON_SAME_TEAM_SEQUENCE_THREE
    method set_nUMBER_ON_SAME_TEAM_SEQUENCE_THREE value' = nUMBER_ON_SAME_TEAM_SEQUENCE_THREE <- value'
    val mutable nUMBER_ON_SAME_TEAM_SEQUENCE_FOUR : int = (Obj.magic 0)
    method nUMBER_ON_SAME_TEAM_SEQUENCE_FOUR = nUMBER_ON_SAME_TEAM_SEQUENCE_FOUR
    method set_nUMBER_ON_SAME_TEAM_SEQUENCE_FOUR value' = nUMBER_ON_SAME_TEAM_SEQUENCE_FOUR <- value'
    val mutable nUMBER_ON_SAME_TEAM_SEQUENCE_FIVE : int = (Obj.magic 0)
    method nUMBER_ON_SAME_TEAM_SEQUENCE_FIVE = nUMBER_ON_SAME_TEAM_SEQUENCE_FIVE
    method set_nUMBER_ON_SAME_TEAM_SEQUENCE_FIVE value' = nUMBER_ON_SAME_TEAM_SEQUENCE_FIVE <- value'
    val mutable nUMBER_ON_SAME_TEAM_SEQUENCE_SIX : int = (Obj.magic 0)
    method nUMBER_ON_SAME_TEAM_SEQUENCE_SIX = nUMBER_ON_SAME_TEAM_SEQUENCE_SIX
    method set_nUMBER_ON_SAME_TEAM_SEQUENCE_SIX value' = nUMBER_ON_SAME_TEAM_SEQUENCE_SIX <- value'
    val mutable nUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN : int = (Obj.magic 0)
    method nUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN = nUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN
    method set_nUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN value' = nUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN <- value'
    val mutable nUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT : int = (Obj.magic 0)
    method nUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT = nUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT
    method set_nUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT value' = nUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT <- value'
    val mutable nUMBER_ON_SAME_TEAM_SEQUENCE_NINE : int = (Obj.magic 0)
    method nUMBER_ON_SAME_TEAM_SEQUENCE_NINE = nUMBER_ON_SAME_TEAM_SEQUENCE_NINE
    method set_nUMBER_ON_SAME_TEAM_SEQUENCE_NINE value' = nUMBER_ON_SAME_TEAM_SEQUENCE_NINE <- value'
    val mutable nUMBER_ON_SAME_TEAM_SEQUENCE : int array = (Obj.magic 0)
    method nUMBER_ON_SAME_TEAM_SEQUENCE = nUMBER_ON_SAME_TEAM_SEQUENCE
    method set_nUMBER_ON_SAME_TEAM_SEQUENCE value' = nUMBER_ON_SAME_TEAM_SEQUENCE <- value'
    

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        let smallIntegerSingletonFactory : SmallIntegerSingletonFactory.smallIntegerSingletonFactory ref = ref (((SmallIntegerSingletonFactory.getInstance ()) :> SmallIntegerSingletonFactory.smallIntegerSingletonFactory)) in ();
        nUMBER_ON_SAME_TEAM_SEQUENCE_ZERO <- (!smallIntegerSingletonFactory#getAt (100));
        nUMBER_ON_SAME_TEAM_SEQUENCE_ONE <- (!smallIntegerSingletonFactory#getAt (101));
        nUMBER_ON_SAME_TEAM_SEQUENCE_TWO <- (!smallIntegerSingletonFactory#getAt (102));
        nUMBER_ON_SAME_TEAM_SEQUENCE_THREE <- (!smallIntegerSingletonFactory#getAt (103));
        nUMBER_ON_SAME_TEAM_SEQUENCE_FOUR <- (!smallIntegerSingletonFactory#getAt (104));
        nUMBER_ON_SAME_TEAM_SEQUENCE_FIVE <- (!smallIntegerSingletonFactory#getAt (105));
        nUMBER_ON_SAME_TEAM_SEQUENCE_SIX <- (!smallIntegerSingletonFactory#getAt (106));
        nUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN <- (!smallIntegerSingletonFactory#getAt (107));
        nUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT <- (!smallIntegerSingletonFactory#getAt (108));
        nUMBER_ON_SAME_TEAM_SEQUENCE_NINE <- (!smallIntegerSingletonFactory#getAt (109));
        nUMBER_ON_SAME_TEAM_SEQUENCE <- [| nUMBER_ON_SAME_TEAM_SEQUENCE_ZERO; nUMBER_ON_SAME_TEAM_SEQUENCE_ONE; nUMBER_ON_SAME_TEAM_SEQUENCE_THREE; nUMBER_ON_SAME_TEAM_SEQUENCE_FOUR; nUMBER_ON_SAME_TEAM_SEQUENCE_FIVE; nUMBER_ON_SAME_TEAM_SEQUENCE_SIX; nUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN; nUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT; nUMBER_ON_SAME_TEAM_SEQUENCE_NINE |]
      end
  end
let () = java_register_constructor "NumberInSameGroupSequence" (fun arguments -> Obj.repr (new numberInSameGroupSequence (Obj.obj arguments)))

let getInstance () =
        begin
        (new numberInSameGroupSequence ())
        end
let () = java_register_static "NumberInSameGroupSequence.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



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
(* package javax.microedition.lcdui *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class choiceGroupImageFactory () =
  object
    val mutable multiOff : int array = (Obj.magic 0)
    method multiOff = multiOff
    method set_multiOff value' = multiOff <- value'
    val mutable multiOn : int array = (Obj.magic 0)
    method multiOn = multiOn
    method set_multiOn value' = multiOn <- value'
    val mutable radioOff : int array = (Obj.magic 0)
    method radioOff = radioOff
    method set_radioOff value' = radioOff <- value'
    val mutable radioOn : int array = (Obj.magic 0)
    method radioOn = radioOn
    method set_radioOn value' = radioOn <- value'
    val mutable imgMultiOffO : Obj.t = Obj.repr 0
    method imgMultiOffO : 'r. 'r = Obj.magic imgMultiOffO
    method set_imgMultiOffO : 'v. 'v -> unit = fun value' -> imgMultiOffO <- Obj.repr value'
    val mutable imgMultiOnO : Obj.t = Obj.repr 0
    method imgMultiOnO : 'r. 'r = Obj.magic imgMultiOnO
    method set_imgMultiOnO : 'v. 'v -> unit = fun value' -> imgMultiOnO <- Obj.repr value'
    val mutable imgRadioOffO : Obj.t = Obj.repr 0
    method imgRadioOffO : 'r. 'r = Obj.magic imgRadioOffO
    method set_imgRadioOffO : 'v. 'v -> unit = fun value' -> imgRadioOffO <- Obj.repr value'
    val mutable imgRadioOnO : Obj.t = Obj.repr 0
    method imgRadioOnO : 'r. 'r = Obj.magic imgRadioOnO
    method set_imgRadioOnO : 'v. 'v -> unit = fun value' -> imgRadioOnO <- Obj.repr value'
    val mutable imgMultiOff : Obj.t = Obj.repr 0
    method imgMultiOff : 'r. 'r = Obj.magic imgMultiOff
    method set_imgMultiOff : 'v. 'v -> unit = fun value' -> imgMultiOff <- Obj.repr value'
    val mutable imgMultiOn : Obj.t = Obj.repr 0
    method imgMultiOn : 'r. 'r = Obj.magic imgMultiOn
    method set_imgMultiOn : 'v. 'v -> unit = fun value' -> imgMultiOn <- Obj.repr value'
    val mutable imgRadioOff : Obj.t = Obj.repr 0
    method imgRadioOff : 'r. 'r = Obj.magic imgRadioOff
    method set_imgRadioOff : 'v. 'v -> unit = fun value' -> imgRadioOff <- Obj.repr value'
    val mutable imgRadioOn : Obj.t = Obj.repr 0
    method imgRadioOn : 'r. 'r = Obj.magic imgRadioOn
    method set_imgRadioOn : 'v. 'v -> unit = fun value' -> imgRadioOn <- Obj.repr value'
    val mutable imageArray : Obj.t = Obj.repr 0
    method imageArray : 'r. 'r = Obj.magic imageArray
    method set_imageArray : 'v. 'v -> unit = fun value' -> imageArray <- Obj.repr value'
    

    method getImageArray : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic imageArray)))
        end
    

    method init (imageArray_arg) : unit =
        begin
        imgMultiOff <- Obj.repr (imageArray_arg.(0));
        (Obj.magic imageArray).(0) <- (Obj.magic imgMultiOff);
        imgMultiOn <- Obj.repr (imageArray_arg.(1));
        (Obj.magic imageArray).(1) <- (Obj.magic imgMultiOn);
        imgRadioOff <- Obj.repr (imageArray_arg.(2));
        (Obj.magic imageArray).(2) <- (Obj.magic imgRadioOff);
        imgRadioOn <- Obj.repr (imageArray_arg.(3));
        (Obj.magic imageArray).(3) <- (Obj.magic imgRadioOn)
        end

    initializer
      begin
        multiOff <- [| (-119); 80; 78; 71; 13; 10; 26; 10; 0; 0; 0; 13; 73; 72; 68; 82; 0; 0; 0; 10; 0; 0; 0; 11; 2; 3; 0; 0; 0; 59; 0; (-12); (-117); 0; 0; 0; 6; 80; 76; 84; 69; (-1); (-1); (-1); (-69); (-69); (-69); (-57); 75; (-33); (-8); 0; 0; 0; 30; 73; 68; 65; 84; 120; (-38); 99; 96; 96; 96; 96; 12; 101; (-8); (-51); (-32); (-64); 32; (-64); (-60); (-64); (-64); (-128); 11; 51; (-122); 50; (-4); 6; 0; 63; 116; 3; 1; 53; (-108); 39; (-26); 0; 0; 0; 0; 73; 69; 78; 68; (-82); 66; 96; (-126) |];
        multiOn <- [| (-119); 80; 78; 71; 13; 10; 26; 10; 0; 0; 0; 13; 73; 72; 68; 82; 0; 0; 0; 10; 0; 0; 0; 11; 2; 3; 0; 0; 0; 59; 0; (-12); (-117); 0; 0; 0; 12; 80; 76; 84; 69; (-1); (-1); (-1); (-69); (-69); (-69); 106; 106; 106; 2; 2; 2; 106; (-103); 14; (-47); 0; 0; 0; 53; 73; 68; 65; 84; 120; (-38); 99; 96; 96; 124; (-64); (-16); (-1); (-77); 3; (-45); 65; (-111); 15; 76; 12; 108; 12; 76; 12; (-4); 12; 76; 12; 18; 12; 76; (-68); 127; 24; (-104); 126; 45; 96; 96; (-7); (-11); (-109); (-127); (-23); (-65); 3; 3; (-29); 127; (-122); (-113); 0; 5; 37; 12; (-34); 1; (-99); (-83); 100; 0; 0; 0; 0; 73; 69; 78; 68; (-82); 66; 96; (-126) |];
        radioOff <- [| (-119); 80; 78; 71; 13; 10; 26; 10; 0; 0; 0; 13; 73; 72; 68; 82; 0; 0; 0; 11; 0; 0; 0; 11; 2; 3; 0; 0; 0; (-44); (-62); (-97); (-75); 0; 0; 0; 9; 80; 76; 84; 69; (-1); (-1); (-1); (-69); (-69); (-69); 106; 106; 106; (-44); 13; (-1); (-24); 0; 0; 0; 42; 73; 68; 65; 84; 120; (-38); 99; 96; 90; (-59); (-64); 32; (-63); 48; (-127); 65; (-127); 65; (-127); 41; (-127); (-31); 5; 19; 3; 3; 3; 50; 102; 80; 96; 80; 96; (-6); (-63); 80; (-64); (-64); (-76); (-118); 1; 0; 113; 24; 5; 61; 73; (-68); (-100); 98; 0; 0; 0; 0; 73; 69; 78; 68; (-82); 66; 96; (-126) |];
        radioOn <- [| (-119); 80; 78; 71; 13; 10; 26; 10; 0; 0; 0; 13; 73; 72; 68; 82; 0; 0; 0; 11; 0; 0; 0; 11; 2; 3; 0; 0; 0; (-44); (-62); (-97); (-75); 0; 0; 0; 12; 80; 76; 84; 69; (-1); (-1); (-1); (-69); (-69); (-69); 106; 106; 106; 2; 2; 2; 106; (-103); 14; (-47); 0; 0; 0; 50; 73; 68; 65; 84; 120; (-38); 5; (-63); 65; 13; 0; 32; 12; 4; (-63); (-19); (-11); (-117); 1; 18; 68; (-100); 10; 52; 19; 94; 72; 64; 17; 101; (-122); 44; (-44); (-29); 98; (-52); 89; 77; (-102); 40; 2; 85; (-95); (-73); (-63); (-104); (-63); 37; (-117); 15; (-40); 119; 10; 41; 78; 26; (-79); 59; 0; 0; 0; 0; 73; 69; 78; 68; (-82); 66; 96; (-126) |];
        imgMultiOffO <- (Obj.repr (Obj.magic (java_call_static "Image.createImage" (Obj.repr (multiOff, 0, (Array.length multiOff))))));
        imgMultiOnO <- (Obj.repr (Obj.magic (java_call_static "Image.createImage" (Obj.repr (multiOn, 0, (Array.length multiOn))))));
        imgRadioOffO <- (Obj.repr (Obj.magic (java_call_static "Image.createImage" (Obj.repr (radioOff, 0, (Array.length radioOff))))));
        imgRadioOnO <- (Obj.repr (Obj.magic (java_call_static "Image.createImage" (Obj.repr (radioOn, 0, (Array.length radioOn))))));
        imgMultiOff <- (Obj.repr (Obj.magic imgMultiOffO));
        imgMultiOn <- (Obj.repr (Obj.magic imgMultiOnO));
        imgRadioOff <- (Obj.repr (Obj.magic imgRadioOffO));
        imgRadioOn <- (Obj.repr (Obj.magic imgRadioOnO));
        imageArray <- (Obj.repr [| (Obj.magic imgMultiOff); (Obj.magic imgMultiOn); (Obj.magic imgRadioOff); (Obj.magic imgRadioOn) |]);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ChoiceGroupImageFactory" (fun arguments -> Obj.repr (new choiceGroupImageFactory (Obj.obj arguments)))

let instance = (new choiceGroupImageFactory ())
let get_instance () = instance
let () = java_register_static "ChoiceGroupImageFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ChoiceGroupImageFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



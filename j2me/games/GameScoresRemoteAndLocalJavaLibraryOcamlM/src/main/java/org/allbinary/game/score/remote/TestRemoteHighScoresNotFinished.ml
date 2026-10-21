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
(* package org.allbinary.game.score.remote *)

open Allbinary_java [@@warning "-33"]

let pATH : string = "G:\\mnt\\bc\\mydev\\work\\allbinary_src\\licensing\\data\\"
let get_pATH () = pATH
let () = java_register_static "TestRemoteHighScoresNotFinished.get_pATH" (fun _ -> Obj.repr (get_pATH ()))
class testRemoteHighScoresNotFinished () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "TestRemoteHighScoresNotFinished" (fun arguments -> Obj.repr (new testRemoteHighScoresNotFinished (Obj.obj arguments)))

let main ((_args : string array)) : unit =
        begin
        (new testRemoteHighScoresNotFinished ())
        end
let () = java_register_static "TestRemoteHighScoresNotFinished.main" (fun arguments -> Obj.repr (main (Obj.obj arguments)))



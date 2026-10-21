(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer.capital *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.ag.layer.hud.basic.NumberStringHud *)

class hudCapital ((moneyGraphic : NumberStringHud.numberStringHud)) =
  object
    inherit Capital.capital () as super
    val mutable capitalGraphic : NumberStringHud.numberStringHud = (Obj.magic 0)
    method capitalGraphic = capitalGraphic
    method set_capitalGraphic value' = capitalGraphic <- value'
    
    

    method removeMoney ((points : int)) : unit =
        begin
        ignore (super#removeMoney (points));
        ignore (capitalGraphic#reduce (points))
        end [@@warning "-7"]
    

    method getTotalMoney () : int =
        begin
        (capitalGraphic#get ())
        end [@@warning "-7"]
    

    method addMoney ((points : int)) : unit =
        begin
        ignore (super#addMoney (points));
        ignore (capitalGraphic#add (points))
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        capitalGraphic <- moneyGraphic
      end
  end
let () = java_register_constructor "HudCapital" (fun arguments -> Obj.repr (new hudCapital (Obj.obj arguments)))



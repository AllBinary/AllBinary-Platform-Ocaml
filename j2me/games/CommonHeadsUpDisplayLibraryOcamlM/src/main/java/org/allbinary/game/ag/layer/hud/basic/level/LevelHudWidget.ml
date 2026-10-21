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
(* package org.allbinary.game.ag.layer.hud.basic.level *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.graphics.hud.BasicHud *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.paint.PaintableInterface *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.math.PrimitiveLongUtil *)

class levelHudWidget ((maxlevel_arg : int), (location : int), (direction : int)) =
  object (self)
    inherit BasicHud.basicHud (location, direction, 2, (BasicColorFactory.getInstance ())#gREY) as super
    val mutable level : int = 0
    method level = level
    method set_level value' = level <- value'
    val mutable maxlevel : int = 0
    method maxlevel = maxlevel
    method set_maxlevel value' = maxlevel <- value'
    val mutable levelString : char array = (Obj.magic 0)
    method levelString = levelString
    method set_levelString value' = levelString <- value'
    val mutable levelNumberCharArray : char array = (Obj.magic 0)
    method levelNumberCharArray = levelNumberCharArray
    method set_levelNumberCharArray value' = levelNumberCharArray <- value'
    val mutable levelNumberTotalDigits : int = 0
    method levelNumberTotalDigits = levelNumberTotalDigits
    method set_levelNumberTotalDigits value' = levelNumberTotalDigits <- value'
    val mutable offset : int = 0
    method offset = offset
    method set_offset value' = offset <- value'
    val mutable primitiveLongUtil : PrimitiveLongUtil.primitiveLongUtil = (Obj.magic 0)
    method primitiveLongUtil = primitiveLongUtil
    method set_primitiveLongUtil value' = primitiveLongUtil <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        updateMaxWidth <- (((Obj.magic !font)#getSize ()) * 4);
        offset <- (((Obj.magic !font)#charsWidth (levelString, 0, (Array.length levelString))) + ((Obj.magic !font)#getSize ()));
        ignore (super#updateMeasurement ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method update () : unit =
        begin
        levelNumberCharArray <- (primitiveLongUtil#getCharArray (level));
        levelNumberTotalDigits <- (primitiveLongUtil#getCurrentTotalDigits ())
        end [@@warning "-7"]
    

    method setLevel ((level_arg : int)) : unit =
        begin
        level <- level_arg;
        (self#update ())
        end [@@warning "-7"]
    

    method nextLevel () : unit =
        begin
        level <- level + 1;
        (self#update ())
        end [@@warning "-7"]
    

    method previousLevel () : unit =
        begin
        level <- level - 1;
        if (level < 0) then begin
            level <- 0
        end;
        (self#update ())
        end [@@warning "-7"]
    

    method isComplete () : bool =
        try
        begin
        if (level <= maxlevel) then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            raise (Java_return (Obj.repr (true)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#paintDX ((Obj.magic graphics), levelString, 0, (Array.length levelString), levelNumberCharArray, 0, levelNumberTotalDigits, offset))
        end [@@warning "-7-20"]
    

    method paintThreed : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        ();
        levelNumberCharArray <- (NullUtil.getInstance ())#nULL_CHAR_ARRAY;
        levelNumberTotalDigits <- 0;
        offset <- 0;
        ();
        ();
        (* super(...) is the inherit clause *) ();
        primitiveLongUtil <- (PrimitiveLongUtil.createPowerOfTen (1000));
        let lEVEL : string ref = ref ("Lv ") in ();
        levelString <- (Array.init (String.length !lEVEL) (String.get !lEVEL));
        maxlevel <- maxlevel_arg;
        level <- maxlevel_arg;
        (self#update ());
        updateMaxHeight <- 14
      end
  end
let () = java_register_constructor "LevelHudWidget" (fun arguments -> Obj.repr (new levelHudWidget (Obj.obj arguments)))

let createHud ((maxlevel_arg : int), (location : int), (direction : int)) =
        begin
        (new levelHudWidget (maxlevel_arg, location, direction))
        end
let () = java_register_static "LevelHudWidget.createHud" (fun arguments -> Obj.repr (createHud (Obj.obj arguments)))



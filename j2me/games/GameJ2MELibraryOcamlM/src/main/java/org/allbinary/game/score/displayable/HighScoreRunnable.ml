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
(* package org.allbinary.game.score.displayable *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.J2MEUtil *)
(* import org.allbinary.logic.ABSystemWrapper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.thread.ARunnable *)

class highScoreRunnable (highScoresCanvas_arg) =
  object (self)
    inherit ARunnable.aRunnable ()
    val mutable highScoresCanvas : Obj.t = Obj.repr 0
    method highScoresCanvas : 'r. 'r = Obj.magic highScoresCanvas
    method set_highScoresCanvas : 'v. 'v -> unit = fun value' -> highScoresCanvas <- Obj.repr value'
    
    

    method run () : unit =
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        let highScoresCanvas_arg : Obj.t ref = ref ((Obj.repr (Obj.magic highScoresCanvas))) in ();
        (try
            let isHTML : bool ref = ref ((J2MEUtil.isHTML ())) in ();
            if (not !isHTML) then begin
                while (not (Obj.magic !highScoresCanvas_arg)#hasPainted) do
                    ()
                done;
                ignore ((Obj.magic !highScoresCanvas_arg)#set_hasPainted (false))
            end;
            let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            let systemWrapper : ABSystemWrapper.aBSystemWrapper ref = ref (((ABSystemWrapper.getInstance ()) :> ABSystemWrapper.aBSystemWrapper)) in ();
            let currentTimeMillis : int ref = ref ((!systemWrapper#currentTimeMillis ())) in ();
            ignore ((Obj.magic !logUtil)#putF ((java_string_of (Obj.repr ((!stringMaker#append ("HighScoresCanvas - Request repaint to be sure: "))#appendlong (!currentTimeMillis)))), (Obj.magic self), !commonStrings#rUN));
            ignore ((Obj.magic !highScoresCanvas_arg)#repaintBehavior#onChangeRepaint ((Obj.magic !highScoresCanvas_arg)));
            if (not !isHTML) then begin
                while (not (Obj.magic !highScoresCanvas_arg)#hasPainted) do
                    ()
                done
            end;
            ignore (!stringMaker#delete (0, (!stringMaker#length ())));
            ignore ((Obj.magic !logUtil)#putF ((java_string_of (Obj.repr ((!stringMaker#append ("HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: "))#appendlong (!currentTimeMillis)))), (Obj.magic self), !commonStrings#rUN));
            ignore ((Obj.magic !highScoresCanvas_arg)#executeUpdate ())
        with e -> begin
            ignore ((Obj.magic !logUtil)#put (!commonStrings#eXCEPTION, (Obj.magic self), !commonStrings#rUN, e))
        end)
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        highScoresCanvas <- Obj.repr (highScoresCanvas_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "HighScoreRunnable" (fun arguments -> Obj.repr (new highScoreRunnable (Obj.obj arguments)))



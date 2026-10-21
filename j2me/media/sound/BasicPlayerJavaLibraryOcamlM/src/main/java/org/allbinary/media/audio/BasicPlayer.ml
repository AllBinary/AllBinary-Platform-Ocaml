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
(* package org.allbinary.media.audio *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.media.Control *)
(* import javax.microedition.media.MediaException *)
(* import javax.microedition.media.Player *)
(* import javax.microedition.media.PlayerListener *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

let cONTROL_TYPE : string ref = ref ("ToneControl")
let get_cONTROL_TYPE () = !cONTROL_TYPE
let set_cONTROL_TYPE value' = cONTROL_TYPE := value'
let () = java_register_static "BasicPlayer.get_cONTROL_TYPE" (fun _ -> Obj.repr (get_cONTROL_TYPE ()))
class basicPlayer () =
  object (self)
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable listenersList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method listenersList = listenersList
    method set_listenersList value' = listenersList <- value'
    val mutable stateP : int = 0
    method stateP = stateP
    method set_stateP value' = stateP <- value'
    val mutable loopCountP : int = 0
    method loopCountP = loopCountP
    method set_loopCountP value' = loopCountP <- value'
    
    

    method getContentType () : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end
    

    method getControl : 'return. string -> 'return = fun ((_controlType : string)) ->
        begin
        (Obj.magic ((new NullControl.nullControl ())))
        end
    

    method getControls : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Array.make (0) (Obj.magic 0))))
        end
    

    method close () : unit =
        begin
        ()
        end
    

    method addPlayerListener : 'any1. 'any1 -> unit = fun (playerListener) ->
        let playerListener = Obj.repr playerListener in
        begin
        if (not (listenersList#contains ((Obj.magic playerListener)))) then begin
            ignore (listenersList#add ((Obj.magic playerListener)))
        end
        end [@@warning "-20"]
    

    method removePlayerListener : 'any1. 'any1 -> unit = fun (playerListener) ->
        let playerListener = Obj.repr playerListener in
        begin
        ignore (listenersList#remove ((Obj.magic playerListener)))
        end [@@warning "-20"]
    

    method getState () : int =
        begin
        stateP
        end
    

    method setState ((state : int)) : unit =
        begin
        stateP <- state
        end
    

    method getDuration () : int =
        begin
        0
        end
    

    method getMediaTime () : int =
        begin
        0
        end
    

    method deallocate () : unit =
        begin
        ()
        end
    

    method prefetch () : unit =
        begin
        ()
        end
    

    method realize () : unit =
        begin
        ()
        end
    

    method setLoopCount ((count : int)) : unit =
        begin
        loopCountP <- count
        end
    

    method getLoopCount () : int =
        begin
        loopCountP
        end
    

    method setMediaTime ((_now : int)) : int =
        begin
        0
        end
    

    method start () : unit =
        begin
        (self#setState ((Obj.magic (java_call_static "Player.get_sTARTED" (Obj.repr ())))))
        end
    

    method stop () : unit =
        begin
        (self#setState ((Obj.magic (java_call_static "Player.get_pREFETCHED" (Obj.repr ())))))
        end
    

    method setVolume ((_leftVolume : int), (_rightVolume : int)) : unit =
        begin
        ()
        end

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        listenersList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        stateP <- 0;
        loopCountP <- 0;
        ();
        (self#setLoopCount (0));
        (self#setState ((Obj.magic (java_call_static "Player.get_uNREALIZED" (Obj.repr ())))))
      end
  end
let () = java_register_constructor "BasicPlayer" (fun arguments -> Obj.repr (new basicPlayer (Obj.obj arguments)))



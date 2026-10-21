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
(* package org.allbinary.game.configuration.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.resource.ResourceLoadingLevel *)
(* import org.allbinary.game.resource.ResourceLoadingLevelFactory *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)

class gameInitializedEvent ((anyType : Obj.t)) =
  object
    inherit AllBinaryEventObject.allBinaryEventObject (anyType)
    val mutable resourceLoadingLevel : ResourceLoadingLevel.resourceLoadingLevel = (Obj.magic 0)
    method resourceLoadingLevel = resourceLoadingLevel
    method set_resourceLoadingLevel value' = resourceLoadingLevel <- value'
    val mutable level : int = 0
    method level = level
    method set_level value' = level <- value'
    
    

    method setLevel ((level_arg : int)) : unit =
        begin
        level <- level_arg;
        resourceLoadingLevel <- (ResourceLoadingLevelFactory.getInstance ())#lEVEL
        end [@@warning "-7"]
    

    method getLevel () : int =
        begin
        level
        end [@@warning "-7"]
    

    method setResourceLoadingLevel : 'any1. 'any1 -> unit = fun (resourceLoadingLevel_arg) ->
        let resourceLoadingLevel_arg = Obj.repr resourceLoadingLevel_arg in
        begin
        resourceLoadingLevel <- (Obj.magic resourceLoadingLevel_arg);
        level <- (resourceLoadingLevel#getLevel ())
        end [@@warning "-7-20"]
    

    method getResourceLoadingLevel () : ResourceLoadingLevel.resourceLoadingLevel =
        begin
        (resourceLoadingLevel :> ResourceLoadingLevel.resourceLoadingLevel)
        end [@@warning "-7"]

    initializer
      begin
        resourceLoadingLevel <- ((ResourceLoadingLevelFactory.getInstance ())#lEVEL :> ResourceLoadingLevel.resourceLoadingLevel);
        level <- 0;
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "GameInitializedEvent" (fun arguments -> Obj.repr (new gameInitializedEvent (Obj.obj arguments)))



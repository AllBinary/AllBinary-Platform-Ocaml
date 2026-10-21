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
(* package org.allbinary.game.resource *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class resourceLoadingLevelFactory () =
  object
    val mutable lOAD_EARLY : ResourceLoadingLevel.resourceLoadingLevel = (Obj.magic 0)
    method lOAD_EARLY = lOAD_EARLY
    method set_lOAD_EARLY value' = lOAD_EARLY <- value'
    val mutable lOAD_TOUCH : ResourceLoadingLevel.resourceLoadingLevel = (Obj.magic 0)
    method lOAD_TOUCH = lOAD_TOUCH
    method set_lOAD_TOUCH value' = lOAD_TOUCH <- value'
    val mutable lOAD_GAME : ResourceLoadingLevel.resourceLoadingLevel = (Obj.magic 0)
    method lOAD_GAME = lOAD_GAME
    method set_lOAD_GAME value' = lOAD_GAME <- value'
    val mutable lEVEL : ResourceLoadingLevel.resourceLoadingLevel = (Obj.magic 0)
    method lEVEL = lEVEL
    method set_lEVEL value' = lEVEL <- value'
    val mutable mAX_LEVEL : ResourceLoadingLevel.resourceLoadingLevel = (Obj.magic 0)
    method mAX_LEVEL = mAX_LEVEL
    method set_mAX_LEVEL value' = mAX_LEVEL <- value'
    val mutable lOAD_ALL : ResourceLoadingLevel.resourceLoadingLevel = (Obj.magic 0)
    method lOAD_ALL = lOAD_ALL
    method set_lOAD_ALL value' = lOAD_ALL <- value'
    val mutable rESOURCE_LOADING_LEVEL_ARRAY : ResourceLoadingLevel.resourceLoadingLevel array = (Obj.magic 0)
    method rESOURCE_LOADING_LEVEL_ARRAY = rESOURCE_LOADING_LEVEL_ARRAY
    method set_rESOURCE_LOADING_LEVEL_ARRAY value' = rESOURCE_LOADING_LEVEL_ARRAY <- value'
    

    method getLevelString ((level : int)) : string =
        try
        begin
        for index = 0 to (Array.length rESOURCE_LOADING_LEVEL_ARRAY) - 1 do
            if (level = (rESOURCE_LOADING_LEVEL_ARRAY.(index)#getLevel ())) then begin
                raise (Java_return (Obj.repr ((rESOURCE_LOADING_LEVEL_ARRAY.(index)#getName ()))))
            end
        done;
        (string_of_int (level))
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        lOAD_EARLY <- ((new ResourceLoadingLevel.resourceLoadingLevel ("Load Early", 2147483647)) :> ResourceLoadingLevel.resourceLoadingLevel);
        lOAD_TOUCH <- ((new ResourceLoadingLevel.resourceLoadingLevel ("Load Touch", (2147483647 - 1))) :> ResourceLoadingLevel.resourceLoadingLevel);
        lOAD_GAME <- ((new ResourceLoadingLevel.resourceLoadingLevel ("Load Game", (2147483647 - 2))) :> ResourceLoadingLevel.resourceLoadingLevel);
        lEVEL <- ((new ResourceLoadingLevel.resourceLoadingLevel ("Level", (2147483647 - 99))) :> ResourceLoadingLevel.resourceLoadingLevel);
        mAX_LEVEL <- ((new ResourceLoadingLevel.resourceLoadingLevel ("Max Level", (2147483647 - 100))) :> ResourceLoadingLevel.resourceLoadingLevel);
        lOAD_ALL <- ((new ResourceLoadingLevel.resourceLoadingLevel ("Load All", (-1))) :> ResourceLoadingLevel.resourceLoadingLevel);
        rESOURCE_LOADING_LEVEL_ARRAY <- [| lOAD_ALL; mAX_LEVEL; lEVEL; lOAD_GAME; lOAD_TOUCH; lOAD_EARLY |];
        ()
      end
  end
let () = java_register_constructor "ResourceLoadingLevelFactory" (fun arguments -> Obj.repr (new resourceLoadingLevelFactory (Obj.obj arguments)))

let instance = (new resourceLoadingLevelFactory ())
let get_instance () = instance
let () = java_register_static "ResourceLoadingLevelFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ResourceLoadingLevelFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



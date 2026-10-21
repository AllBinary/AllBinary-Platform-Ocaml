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
(* package org.allbinary.logic.control.contraints.display.browser *)

open Allbinary_java [@@warning "-33"]
(* import org.w3c.dom.Node *)

class displayInBrowserContraints (_node) =
  object
    val mutable frameable : bool = false
    method frameable = frameable
    method set_frameable value' = frameable <- value'
    val mutable mountable : bool = false
    method mountable = mountable
    method set_mountable value' = mountable <- value'
    val mutable quickFrameable : bool = false
    method quickFrameable = quickFrameable
    method set_quickFrameable value' = quickFrameable <- value'
    val mutable mountedLink : string = ""
    method mountedLink = mountedLink
    method set_mountedLink value' = mountedLink <- value'
    
    

    method isMountable () : bool =
        begin
        mountable
        end
    

    method setMountable ((mountable_arg : bool)) : unit =
        begin
        mountable <- mountable_arg
        end
    

    method isFrameable () : bool =
        begin
        frameable
        end
    

    method setFrameable ((frameable_arg : bool)) : unit =
        begin
        frameable <- frameable_arg
        end
    

    method isQuickFrameable () : bool =
        begin
        quickFrameable
        end
    

    method setQuickFrameable ((quickFrameable_arg : bool)) : unit =
        begin
        quickFrameable <- quickFrameable_arg
        end
    

    method getMountedLink () : string =
        begin
        mountedLink
        end
    

    method setMountedLink ((mountedLink_arg : string)) : unit =
        begin
        mountedLink <- mountedLink_arg
        end

    initializer
      begin
        frameable <- false;
        mountable <- false;
        quickFrameable <- false;
        mountedLink <- "";
        ();
        ()
      end
  end
let () = java_register_constructor "DisplayInBrowserContraints" (fun arguments -> Obj.repr (new displayInBrowserContraints (Obj.obj arguments)))



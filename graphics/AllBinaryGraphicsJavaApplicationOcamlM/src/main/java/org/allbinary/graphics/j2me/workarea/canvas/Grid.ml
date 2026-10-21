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
(* package org.allbinary.graphics.j2me.workarea.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.GPoint *)

class grid () =
  object
    val mutable grid : GPoint.gPoint = (Obj.magic 0)
    method grid = grid
    method set_grid value' = grid <- value'
    val mutable isGridOn : bool = false
    method isGridOn = isGridOn
    method set_isGridOn value' = isGridOn <- value'
    val mutable isGridPossible : bool = false
    method isGridPossible = isGridPossible
    method set_isGridPossible value' = isGridPossible <- value'
    val mutable zoom : int = 0
    method zoom = zoom
    method set_zoom value' = zoom <- value'
    val mutable isChanged : bool = false
    method isChanged = isChanged
    method set_isChanged value' = isChanged <- value'
    
    
    

    method isGridOn () : bool =
        begin
        isGridOn
        end
    

    method isGridPossible () : bool =
        begin
        isGridPossible
        end
    

    method getGrid () : GPoint.gPoint =
        begin
        (grid :> GPoint.gPoint)
        end
    

    method getZoom () : int =
        begin
        zoom
        end
    

    method showGrid ((value : bool)) : unit =
        begin
        isGridOn <- value
        end
    

    method setZoom ((zoom_arg : int)) : unit =
        let zoom_arg = ref zoom_arg in
        begin
        zoom <- !zoom_arg;
        if (zoom < 1) then begin
            zoom_arg := 1
        end;
        isChanged <- true
        end

    initializer
      begin
        ();
        isGridOn <- true;
        isGridPossible <- false;
        zoom <- 3;
        isChanged <- true;
        ();
        ()
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "Grid" (fun arguments -> Obj.repr (new grid (Obj.obj arguments)))



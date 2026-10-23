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
(* package org.allbinary.graphics.canvas.transition.progress *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.canvas.Processor *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.paint.NullPaintable *)
(* import org.allbinary.image.ImageCacheFactory *)

class lazyProgressCanvas ((title : string), (backgroundBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object (self)
    inherit ProgressCanvas.progressCanvas (title, backgroundBasicColor, foregroundBasicColor) as super
    
    

    method start () : unit =
        begin
        ignore (super#start ());
        (self#set_hasPainted) (false)
        end [@@warning "-7"]
    

    method end_ () : unit =
        begin
        (try
            ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, self, (self#commonStrings)#eND_METHOD_NAME));
            ignore (self#endActual ());
            (self#set_paintable) ((self#gAUGE_PAINTABLE));
            ignore ((ImageCacheFactory.getInstance ())#runTask ());
            ignore ((ImageCacheFactory.getInstance ())#progressEnded ())
        with e -> begin
            ignore ((self#logUtil)#putF ((self#commonStrings)#eXCEPTION, self, (self#commonStrings)#eND_METHOD_NAME))
        end)
        end [@@warning "-7"]
    

    method inGame () : unit =
        begin
        (self#set_inGameProcessor) ((Processor.getInstance ()))
        end [@@warning "-7"]
    

    method endFromInitialLazyLoadingComplete () : unit =
        begin
        ignore (super#endFromInitialLazyLoadingComplete ());
        (self#set_paintable) ((NullPaintable.getInstance ()))
        end [@@warning "-7"]
    

    method endIfPaintedSinceStart () : unit =
        begin
        if (((Obj.repr (self#paintable)) == (Obj.repr (self#gAUGE_PAINTABLE))) && (self#hasPainted)) then begin
            (self#endFromInitialLazyLoadingComplete ())
        end
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "LazyProgressCanvas" (fun arguments -> Obj.repr (new lazyProgressCanvas (Obj.obj arguments)))



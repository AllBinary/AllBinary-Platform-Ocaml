(* Generated Code Do Not Modify *)
(* package org.allbinary.media.graphics.geography.pathfinding *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.util.cache.BaseBasicArrayListCache *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListS *)

class basicGeographicMapExtractedPathCacheFactory () =
  object (self)
    inherit BaseBasicArrayListCache.baseBasicArrayListCache ()
    val mutable maxConcurrentPaths : int = 0
    method maxConcurrentPaths = maxConcurrentPaths
    method set_maxConcurrentPaths value' = maxConcurrentPaths <- value'
    val mutable maxPaths : int = 0
    method maxPaths = maxPaths
    method set_maxPaths value' = maxPaths <- value'
    
    

    method init ((maxConcurrentPaths_arg : int), (maxPaths_arg : int)) : unit =
        begin
        if (maxConcurrentPaths_arg <> maxConcurrentPaths) then begin
            for _index = maxConcurrentPaths_arg downto maxConcurrentPaths do
                ignore ((self#list)#add ((new BasicArrayListS.basicArrayListS (maxPaths_arg))))
            done;
            maxConcurrentPaths <- maxConcurrentPaths_arg
        end;
        maxPaths <- maxPaths_arg
        end [@@warning "-7"]
    

    method getPath () : BasicArrayList.basicArrayList =
        try
        begin
        if (((self#list)#size ()) > 0) then begin
            raise (Java_return (Obj.repr ((Obj.magic ((self#list)#removeAt (0))))))
        end else begin
            raise (Java_return (Obj.repr ((new BasicArrayListS.basicArrayListS (maxPaths)))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method release : 'any1. 'any1 -> unit = fun (list) ->
        let list = Obj.repr list in
        begin
        ignore ((Obj.magic list)#clear ());
        ignore ((self#list)#add ((Obj.magic list)))
        end [@@warning "-7-20"]

    initializer
      begin
        maxConcurrentPaths <- 0;
        maxPaths <- 0;
        ();
        ()
      end
  end
let () = java_register_constructor "BasicGeographicMapExtractedPathCacheFactory" (fun arguments -> Obj.repr (new basicGeographicMapExtractedPathCacheFactory (Obj.obj arguments)))

let instance = (new basicGeographicMapExtractedPathCacheFactory ())
let get_instance () = instance
let () = java_register_static "BasicGeographicMapExtractedPathCacheFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BasicGeographicMapExtractedPathCacheFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



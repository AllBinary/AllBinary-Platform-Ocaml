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
(* package org.allbinary.vector *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class pointsUtil () =
  object
    

    method adjustXY ((points : int array array array), (x : int), (y : int)) : int array array array =
        begin
        let size : int ref = ref ((Array.length points)) in ();
        let newPoints : int array array array ref = ref ((Array.init (!size) (fun _ -> Array.make_matrix (0) (0) 0))) in ();
        for index = 0 to !size - 1 do
            let size2 : int ref = ref ((Array.length points.(index))) in ();
            !newPoints.(index) <- (Array.make_matrix (!size2) (2) 0);
            for index2 = 0 to !size2 - 1 do
                if (points.(index).(index2).(0) != 1000) then begin
                    !newPoints.(index).(index2).(0) <- (points.(index).(index2).(0) + x);
                    !newPoints.(index).(index2).(1) <- (points.(index).(index2).(1) + y)
                end else begin
                    !newPoints.(index).(index2).(0) <- 1000;
                    !newPoints.(index).(index2).(1) <- 1000
                end
            done
        done;
        !newPoints
        end
    

    (* Java overload adjust(ArrayType, INT) is not converted: OCaml has one method per name *)
    

    method adjust ((points : int array array), (x : int), (y : int)) : int array array =
        begin
        let newPoints : int array array ref = ref ((Array.make_matrix ((Array.length points)) (2) 0)) in ();
        for index2 = 0 to (Array.length points) - 1 do
            if (points.(index2).(0) != 1000) then begin
                !newPoints.(index2).(0) <- (points.(index2).(0) + x);
                !newPoints.(index2).(1) <- (points.(index2).(1) + y)
            end else begin
                !newPoints.(index2).(0) <- 1000;
                !newPoints.(index2).(1) <- 1000
            end
        done;
        !newPoints
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "PointsUtil" (fun arguments -> Obj.repr (new pointsUtil (Obj.obj arguments)))

let instance = (new pointsUtil ())
let get_instance () = instance
let () = java_register_static "PointsUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (instance))
        end
let () = java_register_static "PointsUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



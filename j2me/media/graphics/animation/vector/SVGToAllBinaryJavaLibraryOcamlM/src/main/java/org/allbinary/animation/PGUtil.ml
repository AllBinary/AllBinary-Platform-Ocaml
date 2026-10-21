(* Generated Code Do Not Modify *)
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]

class pGUtil () =
  object
    

    method flattenCubicBezier ((x0 : int), (y0 : int), (x1 : int), (y1 : int), (x2 : int), (y2 : int), (x3 : int), (y3 : int), (outX : int array), (outY : int array), (count : int array), (maxPoints : int)) : unit =
        begin
        let fixedPoint : FixedPoint.fixedPoint ref = ref (((FixedPoint.getInstance ()) :> FixedPoint.fixedPoint)) in ();
        let steps : int ref = ref (10) in ();
        for i = 1 to !steps do
            let t : int ref = ref ((!fixedPoint#div ((!fixedPoint#toFixed ((float_of_int (i)))), (!fixedPoint#toFixed (!steps))))) in ();
            let mt : int ref = ref ((!fixedPoint#oNE - !t)) in ();
            let mt3 : int ref = ref ((!fixedPoint#mul ((!fixedPoint#mul (!mt, !mt)), !mt))) in ();
            let mt2t3 : int ref = ref ((3 * (!fixedPoint#mul ((!fixedPoint#mul (!mt, !mt)), !t)))) in ();
            let mtt23 : int ref = ref ((3 * (!fixedPoint#mul ((!fixedPoint#mul (!mt, !t)), !t)))) in ();
            let t3 : int ref = ref ((!fixedPoint#mul ((!fixedPoint#mul (!t, !t)), !t))) in ();
            let x : int ref = ref (((((!fixedPoint#mul (!mt3, x0)) + (!fixedPoint#mul (!mt2t3, x1))) + (!fixedPoint#mul (!mtt23, x2))) + (!fixedPoint#mul (!t3, x3)))) in ();
            let y : int ref = ref (((((!fixedPoint#mul (!mt3, y0)) + (!fixedPoint#mul (!mt2t3, y1))) + (!fixedPoint#mul (!mtt23, y2))) + (!fixedPoint#mul (!t3, y3)))) in ();
            if (count.(0) < maxPoints) then begin
                outX.(count.(0)) <- !x;
                outY.(count.(0)) <- !y;
                count.(0) <- count.(0) + 1
            end
        done
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "PGUtil" (fun arguments -> Obj.repr (new pGUtil (Obj.obj arguments)))

let instance = (new pGUtil ())
let get_instance () = instance
let () = java_register_static "PGUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PGUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



(* Generated Code Do Not Modify *)
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.StdUtil *)


let isCommand ((tok : string)) : bool =
        begin
        let c : char ref = ref ((String.get tok (0))) in ();
        ((java_string_index_of "MmLlVvCcZz" (Obj.repr (!c))) >= 0)
        end

let () = java_register_static "PathParser.isCommand" (fun arguments -> Obj.repr (isCommand (Obj.obj arguments)))
class pathParser () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "PathParser" (fun arguments -> Obj.repr (new pathParser (Obj.obj arguments)))

let rec tokenize ((d : string)) : string array =
        begin
        let tokens : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let sb : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "StringBuffer" (Obj.repr ()))))) in ();
        for i = 0 to (String.length d) - 1 do
            let c : char ref = ref ((String.get d (i))) in ();
            if (((((!c = ' ') || (!c = ',')) || (!c = '\t')) || (!c = '\n')) || (!c = '\r')) then begin
                if (((Obj.magic !sb)#length ()) > 0) then begin
                    ignore (!tokens#add ((java_string_of (Obj.repr (Obj.magic !sb)))));
                    ignore ((Obj.magic !sb)#setLength (0))
                end
            end else if ((((((((((!c = 'M') || (!c = 'm')) || (!c = 'L')) || (!c = 'l')) || (!c = 'V')) || (!c = 'v')) || (!c = 'C')) || (!c = 'c')) || (!c = 'Z')) || (!c = 'z')) then begin
                if (((Obj.magic !sb)#length ()) > 0) then begin
                    ignore (!tokens#add ((java_string_of (Obj.repr (Obj.magic !sb)))));
                    ignore ((Obj.magic !sb)#setLength (0))
                end;
                ignore (!tokens#add ((java_string_of (Obj.repr (!c)))))
            end else begin
                ignore ((Obj.magic !sb)#append (!c))
            end
        done;
        if (((Obj.magic !sb)#length ()) > 0) then begin
            ignore (!tokens#add ((java_string_of (Obj.repr (Obj.magic !sb)))))
        end;
        let res : string array ref = ref ((Array.make ((!tokens#size ())) (Obj.magic 0))) in ();
        ignore (!tokens#toArrayType (!res));
        !res
        end

and parsePath ((d : string), (outX : int array), (outY : int array), (maxPoints : int)) : int =
        begin
        let tokens : string array ref = ref ((tokenize (d))) in ();
        let count : int array ref = ref ([| 0 |]) in ();
        let fixedPoint : FixedPoint.fixedPoint ref = ref (((FixedPoint.getInstance ()) :> FixedPoint.fixedPoint)) in ();
        let curX : int ref = ref (0) in ();
        let curY : int ref = ref (0) in ();
        let startX : int ref = ref (0) in ();
        let startY : int ref = ref (0) in ();
        let idx : int ref = ref (0) in ();
        while (!idx < (Array.length !tokens)) do
            let tok : string ref = ref (!tokens.((let value = !idx in idx := !idx + 1; value))) in ();
            let cmd : char ref = ref ((String.get !tok (0))) in ();
            if ((!cmd = 'M') || (!cmd = 'm')) then begin
                let x : int ref = ref ((!fixedPoint#toFixed ((float_of_string (!tokens.((let value = !idx in idx := !idx + 1; value))))))) in ();
                let y : int ref = ref ((!fixedPoint#toFixed ((float_of_string (!tokens.((let value = !idx in idx := !idx + 1; value))))))) in ();
                if (!cmd = 'm') then begin
                    x := (!x + !curX);
                    y := (!y + !curY)
                end;
                curX := !x;
                curY := !y;
                startX := !x;
                startY := !y;
                outX.(!count.(0)) <- !curX;
                outY.(!count.(0)) <- !curY;
                !count.(0) <- !count.(0) + 1
            end else if ((!cmd = 'L') || (!cmd = 'l')) then begin
                let x : int ref = ref ((!fixedPoint#toFixed ((float_of_string (!tokens.((let value = !idx in idx := !idx + 1; value))))))) in ();
                let y : int ref = ref ((!fixedPoint#toFixed ((float_of_string (!tokens.((let value = !idx in idx := !idx + 1; value))))))) in ();
                if (!cmd = 'l') then begin
                    x := (!x + !curX);
                    y := (!y + !curY)
                end;
                curX := !x;
                curY := !y;
                outX.(!count.(0)) <- !curX;
                outY.(!count.(0)) <- !curY;
                !count.(0) <- !count.(0) + 1
            end else if ((!cmd = 'V') || (!cmd = 'v')) then begin
                let y : int ref = ref ((!fixedPoint#toFixed ((float_of_string (!tokens.((let value = !idx in idx := !idx + 1; value))))))) in ();
                if (!cmd = 'v') then begin
                    y := (!y + !curY)
                end;
                curY := !y;
                outX.(!count.(0)) <- !curX;
                outY.(!count.(0)) <- !curY;
                !count.(0) <- !count.(0) + 1
            end else if ((!cmd = 'C') || (!cmd = 'c')) then begin
                let x1 : int ref = ref ((!fixedPoint#toFixed ((float_of_string (!tokens.((let value = !idx in idx := !idx + 1; value))))))) in ();
                let y1 : int ref = ref ((!fixedPoint#toFixed ((float_of_string (!tokens.((let value = !idx in idx := !idx + 1; value))))))) in ();
                let x2 : int ref = ref ((!fixedPoint#toFixed ((float_of_string (!tokens.((let value = !idx in idx := !idx + 1; value))))))) in ();
                let y2 : int ref = ref ((!fixedPoint#toFixed ((float_of_string (!tokens.((let value = !idx in idx := !idx + 1; value))))))) in ();
                let x3 : int ref = ref ((!fixedPoint#toFixed ((float_of_string (!tokens.((let value = !idx in idx := !idx + 1; value))))))) in ();
                let y3 : int ref = ref ((!fixedPoint#toFixed ((float_of_string (!tokens.((let value = !idx in idx := !idx + 1; value))))))) in ();
                if (!cmd = 'c') then begin
                    x1 := (!x1 + !curX);
                    y1 := (!y1 + !curY);
                    x2 := (!x2 + !curX);
                    y2 := (!y2 + !curY);
                    x3 := (!x3 + !curX);
                    y3 := (!y3 + !curY)
                end;
                ignore ((PGUtil.getInstance ())#flattenCubicBezier (!curX, !curY, !x1, !y1, !x2, !y2, !x3, !y3, outX, outY, !count, maxPoints));
                curX := !x3;
                curY := !y3
            end else if ((!cmd = 'Z') || (!cmd = 'z')) then begin
                curX := !startX;
                curY := !startY;
                outX.(!count.(0)) <- !curX;
                outY.(!count.(0)) <- !curY;
                !count.(0) <- !count.(0) + 1
            end;
            while ((!idx < (Array.length !tokens)) && (not (isCommand (!tokens.(!idx))))) do
                if ((((!cmd = 'M') || (!cmd = 'm')) || (!cmd = 'L')) || (!cmd = 'l')) then begin
                    let x : int ref = ref ((!fixedPoint#toFixed ((float_of_string (!tokens.((let value = !idx in idx := !idx + 1; value))))))) in ();
                    let y : int ref = ref ((!fixedPoint#toFixed ((float_of_string (!tokens.((let value = !idx in idx := !idx + 1; value))))))) in ();
                    if ((!cmd = 'm') || (!cmd = 'l')) then begin
                        x := (!x + !curX);
                        y := (!y + !curY)
                    end;
                    curX := !x;
                    curY := !y;
                    outX.(!count.(0)) <- !curX;
                    outY.(!count.(0)) <- !curY;
                    !count.(0) <- !count.(0) + 1
                end else if ((!cmd = 'V') || (!cmd = 'v')) then begin
                    let y : int ref = ref ((!fixedPoint#toFixed ((float_of_string (!tokens.((let value = !idx in idx := !idx + 1; value))))))) in ();
                    if (!cmd = 'v') then begin
                        y := (!y + !curY)
                    end;
                    curY := !y;
                    outX.(!count.(0)) <- !curX;
                    outY.(!count.(0)) <- !curY;
                    !count.(0) <- !count.(0) + 1
                end
            done
        done;
        !count.(0)
        end
let () = java_register_static "PathParser.tokenize" (fun arguments -> Obj.repr (tokenize (Obj.obj arguments)))
let () = java_register_static "PathParser.parsePath" (fun arguments -> Obj.repr (parsePath (Obj.obj arguments)))



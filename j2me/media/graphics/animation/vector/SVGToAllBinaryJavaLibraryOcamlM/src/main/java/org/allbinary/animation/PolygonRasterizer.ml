(* Generated Code Do Not Modify *)
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class polygonRasterizer () =
  object
    

    method getPixelBuffer ((svgPath : string), (pathX : int array), (pathY : int array), (pixelBuffer : int array), (width : int), (height : int)) : int array =
        begin
        let pointCount : int ref = ref ((PathParser.parsePath (svgPath, pathX, pathY, (Array.length pathX)))) in ();
        for i = 0 to (Array.length pixelBuffer) - 1 do
            pixelBuffer.(i) <- 0xFFFFFFFF
        done;
        ignore ((Obj.magic (java_call_static "PolygonRasterizer.getInstance" (Obj.repr ())))#fillPolygon (pathX, pathY, !pointCount, pixelBuffer, width, height, 0xFFFF00FF));
        pixelBuffer
        end
    

    method fillPolygon ((polyX : int array), (polyY : int array), (numPoints : int), (buffer : int array), (width : int), (height : int), (colorRGB : int)) : unit =
        begin
        if (numPoints < 3) then begin
            ()
        end;
        let fixedPoint : FixedPoint.fixedPoint ref = ref (((FixedPoint.getInstance ()) :> FixedPoint.fixedPoint)) in ();
        let x : int array ref = ref ((Array.make (numPoints) 0)) in ();
        let y : int array ref = ref ((Array.make (numPoints) 0)) in ();
        let minY : int ref = ref (height) in ();
        let maxY : int ref = ref (0) in ();
        for i = 0 to numPoints - 1 do
            !x.(i) <- (!fixedPoint#toInt (polyX.(i)));
            !y.(i) <- (!fixedPoint#toInt (polyY.(i)));
            if (!y.(i) < !minY) then begin
                minY := !y.(i)
            end;
            if (!y.(i) > !maxY) then begin
                maxY := !y.(i)
            end
        done;
        if (!minY < 0) then begin
            minY := 0
        end;
        if (!maxY >= height) then begin
            maxY := (height - 1)
        end;
        let scanlineX : int array ref = ref ((Array.make (numPoints) 0)) in ();
        for scanY = !minY to !maxY do
            let intersectCount : int ref = ref (0) in ();
            for i = 0 to numPoints - 1 do
                let next : int ref = ref ((((i + 1)) mod numPoints)) in ();
                let x1 : int ref = ref (!x.(i)) in ();
                let y1 : int ref = ref (!y.(i)) in ();
                let x2 : int ref = ref (!x.(!next)) in ();
                let y2 : int ref = ref (!y.(!next)) in ();
                if ((((!y1 < scanY) && (!y2 >= scanY))) || (((!y2 < scanY) && (!y1 >= scanY)))) then begin
                    if (!y2 <> !y1) then begin
                        let interX : int ref = ref ((!x1 + ((((scanY - !y1)) * ((!x2 - !x1))) / ((!y2 - !y1))))) in ();
                        !scanlineX.((let value = !intersectCount in intersectCount := !intersectCount + 1; value)) <- !interX
                    end
                end
            done;
            for i = 0 to (!intersectCount - 1) - 1 do
                for j = (i + 1) to !intersectCount - 1 do
                    if (!scanlineX.(i) > !scanlineX.(j)) then begin
                        let temp : int ref = ref (!scanlineX.(i)) in ();
                        !scanlineX.(i) <- !scanlineX.(j);
                        !scanlineX.(j) <- !temp
                    end
                done
            done;
            let i : int ref = ref (0) in ();
            while (i < !intersectCount) do
                if ((i + 1) >= !intersectCount) then begin
                    raise Java_break
                end;
                let startX : int ref = ref (!scanlineX.(i)) in ();
                let endX : int ref = ref (!scanlineX.((i + 1))) in ();
                if (!startX < 0) then begin
                    startX := 0
                end;
                if (!endX >= width) then begin
                    endX := (width - 1)
                end;
                let rowOffset : int ref = ref ((scanY * width)) in ();
                for pixelX = !startX to !endX do
                    buffer.((!rowOffset + pixelX)) <- colorRGB
                done;
                i <- (i + 2)
            done
        done
        end
    

    method main ((_args : string array)) : unit =
        begin
        let width : int ref = ref (100) in ();
        let height : int ref = ref (100) in ();
        let pathX : int array ref = ref ((Array.make (200) 0)) in ();
        let pathY : int array ref = ref ((Array.make (200) 0)) in ();
        let pixelBuffer : int array ref = ref ((Array.make ((!width * !height)) 0)) in ();
        let svgPath : string ref = ref ("M 32.139812,81.554575 14.450128,74.294372 V 50.000034 25.705697 l 17.73231,-7.268329 C 41.935209,14.439788 49.953112,11.168898 50,11.168723 c 0.04689,-1.74e-4 8.064791,3.270238 17.817562,7.267583 l 17.73231,7.267899 V 50 74.295795 l -17.73231,7.2679 c -9.752771,3.997344 -17.789855,7.264116 -17.860188,7.259492 -0.07033,-0.0046 -8.088235,-3.275499 -17.817562,-7.268612 z") in ();
        ignore ((Obj.magic (java_call_static "PolygonRasterizer.getInstance" (Obj.repr ())))#getPixelBuffer (!svgPath, !pathX, !pathY, !pixelBuffer, !width, !height))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "PolygonRasterizer" (fun arguments -> Obj.repr (new polygonRasterizer (Obj.obj arguments)))

let instance = (new polygonRasterizer ())
let get_instance () = instance
let () = java_register_static "PolygonRasterizer.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PolygonRasterizer.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))



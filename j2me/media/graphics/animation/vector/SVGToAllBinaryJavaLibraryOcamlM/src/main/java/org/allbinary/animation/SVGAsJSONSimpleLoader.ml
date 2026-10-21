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
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Enumeration *)
(* import org.allbinary.graphics.GraphicsStrings *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.math.PositionStrings *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.json.me.JSONArray *)
(* import org.json.me.JSONException *)
(* import org.json.me.JSONObject *)

class sVGAsJSONSimpleLoader () =
  object (self)
    val mutable graphicsStrings : GraphicsStrings.graphicsStrings = (Obj.magic 0)
    method graphicsStrings = graphicsStrings
    method set_graphicsStrings value' = graphicsStrings <- value'
    val mutable shapeTypeFactory : ShapeTypeFactory.shapeTypeFactory = (Obj.magic 0)
    method shapeTypeFactory = shapeTypeFactory
    method set_shapeTypeFactory value' = shapeTypeFactory <- value'
    val mutable kEY_SVG : string = ""
    method kEY_SVG = kEY_SVG
    method set_kEY_SVG value' = kEY_SVG <- value'
    val mutable kEY_X1 : string = ""
    method kEY_X1 = kEY_X1
    method set_kEY_X1 value' = kEY_X1 <- value'
    val mutable kEY_Y1 : string = ""
    method kEY_Y1 = kEY_Y1
    method set_kEY_Y1 value' = kEY_Y1 <- value'
    val mutable kEY_X2 : string = ""
    method kEY_X2 = kEY_X2
    method set_kEY_X2 value' = kEY_X2 <- value'
    val mutable kEY_Y2 : string = ""
    method kEY_Y2 = kEY_Y2
    method set_kEY_Y2 value' = kEY_Y2 <- value'
    val mutable kEY_CX : string = ""
    method kEY_CX = kEY_CX
    method set_kEY_CX value' = kEY_CX <- value'
    val mutable kEY_CY : string = ""
    method kEY_CY = kEY_CY
    method set_kEY_CY value' = kEY_CY <- value'
    val mutable kEY_R : string = ""
    method kEY_R = kEY_R
    method set_kEY_R value' = kEY_R <- value'
    val mutable kEY_X : string = ""
    method kEY_X = kEY_X
    method set_kEY_X value' = kEY_X <- value'
    val mutable kEY_Y : string = ""
    method kEY_Y = kEY_Y
    method set_kEY_Y value' = kEY_Y <- value'
    val mutable eRROR_PARSE_SVG_JSON : string = ""
    method eRROR_PARSE_SVG_JSON = eRROR_PARSE_SVG_JSON
    method set_eRROR_PARSE_SVG_JSON value' = eRROR_PARSE_SVG_JSON <- value'
    val mutable eRROR_MISSING_KEY_PREFIX : string = ""
    method eRROR_MISSING_KEY_PREFIX = eRROR_MISSING_KEY_PREFIX
    method set_eRROR_MISSING_KEY_PREFIX value' = eRROR_MISSING_KEY_PREFIX <- value'
    val mutable eRROR_INVALID_NUMBER_PREFIX : string = ""
    method eRROR_INVALID_NUMBER_PREFIX = eRROR_INVALID_NUMBER_PREFIX
    method set_eRROR_INVALID_NUMBER_PREFIX value' = eRROR_INVALID_NUMBER_PREFIX <- value'
    val mutable eRROR_EXPECTED_OBJECT_PREFIX : string = ""
    method eRROR_EXPECTED_OBJECT_PREFIX = eRROR_EXPECTED_OBJECT_PREFIX
    method set_eRROR_EXPECTED_OBJECT_PREFIX value' = eRROR_EXPECTED_OBJECT_PREFIX <- value'
    val mutable eMPTY_POINTS : int array array = (Obj.magic 0)
    method eMPTY_POINTS = eMPTY_POINTS
    method set_eMPTY_POINTS value' = eMPTY_POINTS <- value'
    val mutable sHAPE_SEPARATOR : int array = (Obj.magic 0)
    method sHAPE_SEPARATOR = sHAPE_SEPARATOR
    method set_sHAPE_SEPARATOR value' = sHAPE_SEPARATOR <- value'
    val mutable cIRCLE_SEGMENTS : int = 0
    method cIRCLE_SEGMENTS = cIRCLE_SEGMENTS
    method set_cIRCLE_SEGMENTS value' = cIRCLE_SEGMENTS <- value'
    

    method load ((svgAsJson : string)) : int array array =
        try
        begin
        if (svgAsJson = (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr (eMPTY_POINTS)))
        end;
        (try
            let root : Obj.t ref = ref ((Obj.repr (new JSONObject.jSONObject (svgAsJson)))) in ();
            let svgValue : Obj.t ref = ref ((Obj.repr ((Obj.magic !root)#opt (kEY_SVG)))) in ();
            let svg : Obj.t ref = ref ((Obj.repr (if (!svgValue == (Obj.magic 0)) then (Obj.magic !root) else (self#asObject (!svgValue, kEY_SVG))))) in ();
            let pointVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            let keys : java_enumeration ref = ref ((((Obj.magic !svg)#keys ()) :> java_enumeration)) in ();
            while (!keys#hasMoreElements ()) do
                let key : string ref = ref ((Obj.magic (!keys#nextElement ()))) in ();
                let value : Obj.t ref = ref ((Obj.repr ((Obj.magic !svg)#opt (!key)))) in ();
                if (shapeTypeFactory#kEY_LINE#equals (!key)) then begin
                    (self#addShapes (!pointVector, !value, shapeTypeFactory#lINE))
                end else if (shapeTypeFactory#equals (!key)) then begin
                    (self#addShapes (!pointVector, !value, shapeTypeFactory#cIRCLE))
                end else if ((shapeTypeFactory#kEY_RECT#equals (!key)) || (shapeTypeFactory#kEY_RECTANGLE#equals (!key))) then begin
                    (self#addShapes (!pointVector, !value, shapeTypeFactory#rECTANGLE))
                end
            done;
            (self#toPoints (!pointVector))
        with e -> begin
            raise (Failure (eRROR_PARSE_SVG_JSON, e))
        end)
        end
        with Java_return value -> Obj.obj value
    

    method addShapes : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (pointVector, value, shapeType) ->
        let pointVector = Obj.repr pointVector in
        let value = Obj.repr value in
        let shapeType = Obj.repr shapeType in
        begin
        if (java_instanceof (Obj.repr value) "JSONArray") then begin
            let array : Obj.t ref = ref ((Obj.repr (Obj.magic value))) in ();
            let size : int ref = ref (((Obj.magic !array)#length ())) in ();
            for index = 0 to !size - 1 do
                (self#addShape ((Obj.magic pointVector), ((Obj.magic !array)#opt (index)), (Obj.magic shapeType)))
            done
        end else begin
            (self#addShape ((Obj.magic pointVector), value, (Obj.magic shapeType)))
        end
        end [@@warning "-20"]
    

    method addShape : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (pointVector, value, shapeType) ->
        let pointVector = Obj.repr pointVector in
        let value = Obj.repr value in
        let shapeType = Obj.repr shapeType in
        begin
        let shape : Obj.t ref = ref ((Obj.repr (self#asObject (value, ((Obj.magic shapeType)#getName ()))))) in ();
        if ((Obj.repr (Obj.magic shapeType)) == (Obj.repr shapeTypeFactory#lINE)) then begin
            (self#addLine ((Obj.magic pointVector), (Obj.magic !shape)))
        end else if ((Obj.repr (Obj.magic shapeType)) == (Obj.repr shapeTypeFactory#cIRCLE)) then begin
            (self#addCircle ((Obj.magic pointVector), (Obj.magic !shape)))
        end else begin
            (self#addRectangle ((Obj.magic pointVector), (Obj.magic !shape)))
        end
        end [@@warning "-20"]
    

    method addLine : 'any1 'any2. 'any1 * 'any2 -> unit = fun (pointVector, line) ->
        let pointVector = Obj.repr pointVector in
        let line = Obj.repr line in
        begin
        (self#addPoint ((Obj.magic pointVector), (self#readInt ((Obj.magic line), kEY_X1)), (self#readInt ((Obj.magic line), kEY_Y1))));
        (self#addPoint ((Obj.magic pointVector), (self#readInt ((Obj.magic line), kEY_X2)), (self#readInt ((Obj.magic line), kEY_Y2))));
        (self#addSeparator ((Obj.magic pointVector)))
        end [@@warning "-20"]
    

    method addCircle : 'any1 'any2. 'any1 * 'any2 -> unit = fun (pointVector, circle) ->
        let pointVector = Obj.repr pointVector in
        let circle = Obj.repr circle in
        begin
        let cx : int ref = ref ((self#readInt ((Obj.magic circle), kEY_CX))) in ();
        let cy : int ref = ref ((self#readInt ((Obj.magic circle), kEY_CY))) in ();
        let radius : int ref = ref ((self#readInt ((Obj.magic circle), kEY_R))) in ();
        for index = 0 to cIRCLE_SEGMENTS do
            let angle : float ref = ref ((((((Obj.magic (java_call_static "Math.get_pI" (Obj.repr ()))) *. 2.0) * index)) / cIRCLE_SEGMENTS)) in ();
            let x : int ref = ref ((java_to_int (Obj.repr ((Float.to_int (Float.round ((!cx + (((Float.cos (!angle)) * !radius)))))))))) in ();
            let y : int ref = ref ((java_to_int (Obj.repr ((Float.to_int (Float.round ((!cy + (((Float.sin (!angle)) * !radius)))))))))) in ();
            (self#addPoint ((Obj.magic pointVector), !x, !y))
        done;
        (self#addSeparator ((Obj.magic pointVector)))
        end [@@warning "-20"]
    

    method addRectangle : 'any1 'any2. 'any1 * 'any2 -> unit = fun (pointVector, rectangle) ->
        let pointVector = Obj.repr pointVector in
        let rectangle = Obj.repr rectangle in
        begin
        let x : int ref = ref ((self#readInt ((Obj.magic rectangle), kEY_X, 0))) in ();
        let y : int ref = ref ((self#readInt ((Obj.magic rectangle), kEY_Y, 0))) in ();
        let width : int ref = ref ((self#readInt ((Obj.magic rectangle), graphicsStrings#wIDTH))) in ();
        let height : int ref = ref ((self#readInt ((Obj.magic rectangle), graphicsStrings#hEIGHT))) in ();
        (self#addPoint ((Obj.magic pointVector), !x, !y));
        (self#addPoint ((Obj.magic pointVector), (!x + !width), !y));
        (self#addPoint ((Obj.magic pointVector), (!x + !width), (!y + !height)));
        (self#addPoint ((Obj.magic pointVector), !x, (!y + !height)));
        (self#addPoint ((Obj.magic pointVector), !x, !y));
        (self#addSeparator ((Obj.magic pointVector)))
        end [@@warning "-20"]
    

    method addPoint : 'any1. 'any1 * int * int -> unit = fun (pointVector, (x : int), (y : int)) ->
        let pointVector = Obj.repr pointVector in
        begin
        ignore ((Obj.magic pointVector)#add ([| x; y |]))
        end [@@warning "-20"]
    

    method addSeparator : 'any1. 'any1 -> unit = fun (pointVector) ->
        let pointVector = Obj.repr pointVector in
        begin
        ignore ((Obj.magic pointVector)#add ([| sHAPE_SEPARATOR.(0); sHAPE_SEPARATOR.(1) |]))
        end [@@warning "-20"]
    

    method readInt : 'any1. 'any1 * string -> int = fun (anyType, (key : string)) ->
        let anyType = Obj.repr anyType in
        begin
        let value : Obj.t ref = ref ((Obj.repr ((Obj.magic anyType)#get (key)))) in ();
        if (!value == (Obj.magic 0)) then begin
            raise (Failure ((eRROR_MISSING_KEY_PREFIX ^ key)))
        end;
        (self#toInt (!value, key))
        end [@@warning "-20"]
    

    (* Java overload readInt(JSONObject, String, INT) is not converted: OCaml has one method per name *)
    

    method toInt : 'any1. 'any1 * string -> int = fun (value, (key : string)) ->
        let value = Obj.repr value in
        try
        begin
        if (java_instanceof (Obj.repr value) "Number") then begin
            raise (Java_return (Obj.repr ((java_to_int (Obj.repr ((Float.to_int (Float.round ((((Obj.magic value))#doubleValue ()))))))))))
        end;
        if (java_instanceof (Obj.repr value) "String") then begin
            raise (Java_return (Obj.repr ((java_to_int (Obj.repr ((Float.to_int (Float.round ((float_of_string ((Obj.magic value))))))))))))
        end;
        raise (Failure ((eRROR_INVALID_NUMBER_PREFIX ^ key)))
        end
        with Java_return value -> Obj.obj value
    

    method asObject : 'any1 'return. 'any1 * string -> 'return = fun (value, (name : string)) ->
        let value = Obj.repr value in
        try
        begin
        if (java_instanceof (Obj.repr value) "JSONObject") then begin
            raise (Java_return (Obj.repr ((Obj.magic value))))
        end;
        raise (Failure ((eRROR_EXPECTED_OBJECT_PREFIX ^ name)))
        end
        with Java_return value -> Obj.obj value
    

    method toPoints : 'any1. 'any1 -> int array array = fun (pointVector) ->
        let pointVector = Obj.repr pointVector in
        try
        begin
        if (((Obj.magic pointVector)#size ()) = 0) then begin
            raise (Java_return (Obj.repr (eMPTY_POINTS)))
        end;
        let points : int array array ref = ref ((Array.make_matrix (((Obj.magic pointVector)#size ())) (2) 0)) in ();
        for index = 0 to ((Obj.magic pointVector)#size ()) - 1 do
            let point : int array ref = ref ((Obj.magic ((Obj.magic pointVector)#get (index)))) in ();
            !points.(index) <- !point
        done;
        !points
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        graphicsStrings <- ((GraphicsStrings.getInstance ()) :> GraphicsStrings.graphicsStrings);
        shapeTypeFactory <- ((ShapeTypeFactory.getInstance ()) :> ShapeTypeFactory.shapeTypeFactory);
        kEY_SVG <- "svg";
        kEY_X1 <- "x1";
        kEY_Y1 <- "y1";
        kEY_X2 <- "x2";
        kEY_Y2 <- "y2";
        kEY_CX <- "cx";
        kEY_CY <- "cy";
        kEY_R <- "r";
        kEY_X <- (PositionStrings.getInstance ())#x;
        kEY_Y <- (PositionStrings.getInstance ())#y;
        eRROR_PARSE_SVG_JSON <- "Unable to parse SVG JSON";
        eRROR_MISSING_KEY_PREFIX <- "Missing key: ";
        eRROR_INVALID_NUMBER_PREFIX <- "Invalid number for key: ";
        eRROR_EXPECTED_OBJECT_PREFIX <- "Expected object for: ";
        eMPTY_POINTS <- (PrimitiveIntUtil.getTwoDimensionalArrayInstance ());
        sHAPE_SEPARATOR <- [| 1000; 1000 |];
        cIRCLE_SEGMENTS <- 16;
        ()
      end
  end
let () = java_register_constructor "SVGAsJSONSimpleLoader" (fun arguments -> Obj.repr (new sVGAsJSONSimpleLoader (Obj.obj arguments)))

let instance = (new sVGAsJSONSimpleLoader ())
let get_instance () = instance
let () = java_register_static "SVGAsJSONSimpleLoader.get_instance" (fun _ -> Obj.repr (get_instance ()))

let rec getInstance () =
        begin
        instance
        end

and main ((_args : string array)) : unit =
        begin
        let svgAsJson : string ref = ref (((((((((("{\"svg\": {\n" ^ "    \"rect\": {\n") ^ "        \"width\": 20,\n") ^ "        \"fill\": \"#008c00\",\n") ^ "        \"height\": 20\n") ^ "    },\n") ^ "    \"xmlns\": \"http://www.w3.org/2000/svg\",\n") ^ "    \"width\": 20,\n") ^ "    \"height\": 20\n") ^ "}}\n")) in ();
        let points : int array array ref = ref (((getInstance ())#load (!svgAsJson))) in ();
        let stringBuilder : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let size : int ref = ref ((Array.length !points)) in ();
        for index = 0 to !size - 1 do
            let size2 : int ref = ref ((Array.length !points.(index))) in ();
            for index2 = 0 to !size2 - 1 do
                ignore (!stringBuilder#appendint ((java_to_int (Obj.repr (!points.(index).(index2))))));
                ignore (!stringBuilder#append ((CommonSeps.getInstance ())#cOMMA))
            done
        done;
        (print_endline (java_string_of (Obj.repr ((java_string_of (Obj.repr !stringBuilder))))))
        end
let () = java_register_static "SVGAsJSONSimpleLoader.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "SVGAsJSONSimpleLoader.main" (fun arguments -> Obj.repr (main (Obj.obj arguments)))



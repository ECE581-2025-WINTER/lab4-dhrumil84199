proc calculate_area_of_rectangle {X1 Y1 X2 Y2} {
    if { $X1 >= $X2 || $Y1 >= $Y2 } {
        puts "Error: Invalid rectangle coordinates. X2, Y2 must be greater than X1, Y1."
        return -1
    }
    # Computing width and height
    set width [expr {$X2 - $X1}]
    set height [expr {$Y2 - $Y1}]
    set area [expr {$width * $height}]
    # Output result
    puts "Rectangle Area: $area"
  return $area
}


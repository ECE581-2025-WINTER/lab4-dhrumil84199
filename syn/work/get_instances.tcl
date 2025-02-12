proc count_instances_by_ref_name {} {

set instances [get_cells -filter "is_hierarchical==false"]
set ref_names {}
foreach_in_collection inst $instances {
lappend ref_names [get_attribute $inst ref_name]
}
set unique_ref_names [lsort -unique $ref_names]
foreach ref_name $unique_ref_names {
set count 0
foreach_in_collection inst $instances {
	if {[get_attribute $inst ref_name] == $ref_name} {
	incr count
}
}
puts "$ref_name: $count"
}
}


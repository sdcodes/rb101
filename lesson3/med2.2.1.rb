def fun_with_ids
  a_outer = 42 #85
  b_outer = "forty two" #6489960
  c_outer = [42] #6489940
  d_outer = c_outer[0] #85

  a_outer_id = a_outer.object_id
  b_outer_id = b_outer.object_id
  c_outer_id = c_outer.object_id
  d_outer_id = d_outer.object_id

*
  an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)

*
*
end


def an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)
*
  a_outer = 22 #45
  b_outer = "thirty three" #648920
  c_outer = [44] #6489180
  d_outer = c_outer[0] #89
  
  *

  a_inner = a_outer
  b_inner = b_outer
  c_inner = c_outer
  d_inner = c_inner[0]

  a_inner_id = a_inner.object_id
  b_inner_id = b_inner.object_id
  c_inner_id = c_inner.object_id
  d_inner_id = d_inner.object_id
*
  
end

fun_with_ids
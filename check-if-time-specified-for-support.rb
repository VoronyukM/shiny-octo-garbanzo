if (@issue.tracker_id == 3 && @issue.status_id == 3)

time_now_utc = Time.new.utc
is_fresh_time_entry = false
time_entries.each do |time_entry|
  if (time_now_utc - time_entry.updated_on) < 10.0
  # less than 10 s
    is_fresh_time_entry = true
  end
end

#raise WorkflowError, "!!! 1) " + @issue.to_yaml

if not is_fresh_time_entry
 raise WorkflowError, 'Spent time was not specified. It is necessary when the tracker is "Support" and the status is "Solved"' 
end


 #raise WorkflowError, "!!! 1) " + @issue.spent_hours.to_s + " 2)" + time_entries.to_yaml + "3) " + ss 
    
   
#raise WorkflowError, "!!! 1) " + fields.to_s + "!!! 1a) " + "!!! 2) " + " available fields \n" + @issue.available_custom_fields.to_s + "!!! 3) " + @issue.custom_field_values.to_s + "!!! 4) " + @issue.available_custom_fields.each_with_index.to_s 

end

check_courses2<-function() {
  #find courses directory and user directory for swirl
  course_dir<-system.file("Courses", package="swirl")
  user_dir<-system.file("user_data", package ="swirl")
  # delete any old version of UoEPsych
  if ("Y2_Psychology_RMS1" %in% list.files(course_dir)==TRUE){
    course_path <- system.file("Courses/Y2_Psychology_RMS1",package="swirl")
    invisible(unlink(course_path, recursive = TRUE, force = TRUE))
  #any user history?
    if (file.exists(user_dir)) {
      user_list<-list.files(user_dir)
  #remove history for each user in turn, keeping their user_dir.
      for (user in user_list){
        user_path<-paste(user_dir,user, sep="/")
        invisible(unlink(list.files(user_path, full.names = TRUE), recursive = TRUE))
      }
    }
  }
}


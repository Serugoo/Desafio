class Course < ActiveRecord::Base
  belongs_to :institution
  
  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
  
  def average
    courseStudentList = Student.where("course_id = ?", id)
    if courseStudentList.size > 0
      result = averageStd (courseStudentList)
    end
  end
 
  def averageStd (students)
    sum = 0
    for student in students
      sum += scoreStd(student)
    end
    result = sum/students.size  
  end
  
  def scoreStd(student)
    result = ScoreStudent.where('student_id = ?', student.id)[0].score
  end
end

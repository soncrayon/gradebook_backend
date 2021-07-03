class ClassSessionSerializer < ActiveModel::Serializer
  attributes :id, :teacher, :level, :course, :period, :section, :teacher, :students

  def teacher
    {first_name: self.object.teacher.first_name,
    last_name: self.object.teacher.last_name}
  end

  def level 
    {year: self.object.level.year,
    exam: self.object.level.exam}
  end

  def course 
    {name: self.object.course.name,
    description: self.object.course.description,
    course_number: self.object.course.course_number}
  end

  def period 
    {number: self.object.period.number,
    start: self.object.period.start_time,
    end: self.object.period.end_time}
  end

  def section 
    {name: self.object.section.name,
    description: self.object.section.description,
    emblem: self.object.section.emblem,
    quote: self.object.section.quote,
    section_lead: self.object.section.section_lead}
  end

  def students 
    self.object.students.map {|student|
      {first_name: student.first_name,
      last_name: student.last_name}
    }
  end

end

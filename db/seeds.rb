# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# data creation flow
# create levels and teachers first
# then create sections and periods
# then courses
# then students
# assign students to sections
# assign courses to periods
# assign courses to students
# create assignments
# scores

Level.create([
    {year: 1, exam: "Year One Final Exam"},
    {year: 2, exam: "Year Two Final Exam"},
    {year: 3, exam: "Elementary Wizarding Levels (EWL)"},
    {year: 4, exam: "Year Four Final Exam"},
    {year: 5, exam: "Ordinary Wizarding Levels (OWLs)"},
    {year: 6, exam: "Year Six Final Exam"},
    {year: 7, exam: "Advanced Wizarding Levels (AWLs)"}
])

Competency.create([
    {description: "Become acclimated to the school", level: Level.find_by(year: 1)},
    {description: "Get introduction to the magical world", level: Level.find_by(year: 1)},
    {description: "Learn fundamental aspects of elementary magic", level: Level.find_by(year: 1)},
    {description: "Develop good study habits and approach to study of magic", level: Level.find_by(year: 1)},
    {description: "Master knowledge of school resources and culture", level: Level.find_by(year: 2)},
    {description: "Solidify basic knowledge of magical world", level: Level.find_by(year: 2)},
    {description: "Further develop skills in elementary magic", level: Level.find_by(year: 2)},
    {description: "Begin to become resource for year one students for mentoring, classwork, and knowledge of magical world", level: Level.find_by(year: 2)},
    {description: "Demonstrate readiness to make transition to middle classes", level: Level.find_by(year: 2)},
    {description: "Master elementary magic", level:Level.find_by(year: 3)},
    {description: "Demonstrate at least an intermediate understanding of the magical world and comfort with the same", level:Level.find_by(year: 3)},
    {description: "Prepare and make satisfactory progress toward sitting for EWLs", level:Level.find_by(year: 3)},
    {description: "Serve as resource for students in year one and two", level:Level.find_by(year: 3)},
    {description: "Demonstrate capacity for the continued study of magic", level:Level.find_by(year: 3)},
    {description: "Identify areas of potential magical concentration or expertise",level: Level.find_by(year: 4)},
    {description: "Develop good understanding of magical history and institutions",  level: Level.find_by(year: 4)},
    {description: "Develop more advanced knowledge of defensive magic", level: Level.find_by(year: 4)},
    {description: "Serve as resource for students in lower years", level: Level.find_by(year: 4)},
    {description: "Demonstrate readiness to make transition to upper classes", level: Level.find_by(year: 4)},
    {description: "Pursue area of concentration of expertise", level: Level.find_by(year: 5)},
    {description: "Demonstrate mastery of elementary and intermediate magic", level: Level.find_by(year: 5)},
    {description: "Begin to develop broader skills in advanced magic",  level: Level.find_by(year: 5)},
    {description: "Demonstrate satisfactory progress towards sitting for OWLs", level: Level.find_by(year: 5)},
    {description: "Serve as resource for students in lower years", level: Level.find_by(year: 5)},
    {description: "Demonstrate readiness to study advanced magic", level: Level.find_by(year: 5)},
    {description: "Continue to pursue area of concentration of expertise", level: Level.find_by(year: 6)},
    {description: "Identify pathways for career after graduation", level: Level.find_by(year: 6)},
    {description: "Demonstrate capacity to acquire skills and knowledge independently of course of instruction", level: Level.find_by(year: 6)},
    {description: "Demonstrate adequate knowledge of some more advanced magical concepts", level: Level.find_by(year: 6)},
    {description: "Serve as resource for students in lower years", level: Level.find_by(year: 6)},
    {description: "Begin to develop peer relationship with recent graduates or more junior instructors", level: Level.find_by(year: 6)},
    {description:  "Continue to pursue area of concentration of expertise", level: Level.find_by(year: 7)},
    {description: "Develop satisfactory plan for post graduation", level: Level.find_by(year: 7)},
    {description: "Master capacity to acquire skills and knowledge independently of course of instruction", level: Level.find_by(year: 7)},
    {description: "Serve as resource for students in lower years", level: Level.find_by(year: 7)},
    {description: "Develop collegial relationship with professors and school administration", level: Level.find_by(year: 7)},
    {description: "Demonstrate mastery of some more advanced magical concepts", level: Level.find_by(year: 7)},
    {description: "Demonstrate satisfactory progress towards sitting for AWLs", level: Level.find_by(year: 7)},
    {description: "Demonstrate, from holistic viewpoint, skills as a wizard meeting standards for a Hogwarts graduate", level: Level.find_by(year: 7)}
])

28.times {

    Teacher.create([
        first_name: Faker::Movies::HarryPotter.character.split(' ')[0], 
        last_name: Faker::Movies::HarryPotter.character.split(' ')[1]
    ])

}

Section.create([

   {
        name: "Gryffindor",
        description: "values bravery, daring, nerve, and chivalry. Its emblematic animal is the lion and its colours are scarlet and gold",
        emblem: "LION",
        quote: "Their daring, nerve and chivalry set Gryffindors apart.",
        section_lead: Teacher.first.first_name + " " + Teacher.first.last_name
    },

    {
        name: "Ravenclaw",
        description: "values intelligence, knowledge, curiosity, creativity and wit. Its emblematic animal is the eagle, and its colours are blue and bronze",
        emblem: "EAGLE",
        quote: "Wit beyond measure is man's greatest treasure.",
        section_lead: Teacher.second.first_name + " " + Teacher.second.last_name
    },

    {
        name: "Hufflepuff",
        description: "values hard work, dedication, patience, loyalty, and fair play. Its emblematic animal is the badger, and Yellow and Black are its colours",
        emblem: "BADGER",
        quote: "Those patient Hufflepuffs are true and unafraid of toil.",
        section_lead: Teacher.third.first_name + " " + Teacher.third.last_name
    },

    {
        name: "Slytherin",
        description: "values ambition, leadership, self-preservation, cunning and resourcefulness. Its emblematic animal is the serpent, and its colours are emerald green and silver.",
        emblem: "SNAKE",
        quote: "Slytherin will help you on your way to greatness.",
        section_lead: Teacher.last.first_name + " " + Teacher.last.last_name
    },

])

Period.create([
    {
        number: 1,
        start_time: "09:00",
        end_time: "10:30"
    },

    {
        number: 2,
        start_time: "10:35",
        end_time: "12:05"
    },

    {
        number: 3,
        start_time: "13:40",
        end_time: "15:10"
    },

    {
        number: 4,
        start_time: "15:15",
        end_time: "16:45"
    },
])

Course.create([

    {
        name: "Transfiguration",
        description: "Art of transforming one type of object, substance, or entity into another",
        course_number: "101",
    },

    {
        name: "Potions",
        description: "Mixing substances to magical effect",
        course_number: "102",
    },

    {
        name: "Flying",
        description: "Basic flight via broomstick",
        course_number: "103",
    },

    {
        name: "Charms",
        description: "Rudimentary spells having light effect, common to every witch and wizard",
        course_number: "104",
    },


    {
        name: "Defense Against the Dark Arts I (DADA I)",
        description: "Introductory to intermediate spells for defending against unfriendly or dark magic; study of dark magic",
        course_number: "201A",
    },

    {
        name: "Myths of the Magical Realm (Magmyt)",
        description: "Introduction to magical literature and global lore",
        course_number: "202",
    },


    {
        name: "Herbology",
        description: "Study of magical plants and their, as well as ordinary plants', magical applications",
        course_number: "203",
    },


    {
        name: "Magical Travel",
        description: "Study of broader methods of magical travel other than broomstick",
        course_number: "204",
    },

    {
        name: "Elementary Wizarding Levels (EWLs)",
        description: "Prepatory course devoted to Elementary Wizarding Levels",
        course_number: "301P",
    },

    {
        name: "Ancient Runes",
        description: "Study of ancient artifacts and buildings for insight into the deeper nature of magic and its origins",
        course_number: "302",
    },

    {
        name: "Magical Creatures",
        description: "Study of magical creatures and their relationship to witches and wizards",
        course_number: "303",
    },

    {
        name: "Divination",
        description: "Art of magical introspection to glean truths about the world, one's community, and oneself",
        course_number: "304",
    },

    {
        name: "Defense Against the Dark Arts II (DADA II)",
        description: "Intermediate to advanced spells for defending against unfriendly or dark magic; study of dark magic",
        course_number: "401B",
    },

    {
        name: "History of Magic",
        description: "Study of magic's evolution and key witches and wizards throughout history, including Hogwart's history",
        course_number: "402",
    },

    {
        name: "Magical Government",
        description: "Survey of various global governmental organizations, both international and national; special emphasis on UK Ministry of Magic as oldest institution",
        course_number: "403",
    },

    {
        name: "Earth (Elemental) Magic",
        description: "Working magic through the elements--air, fire, water, and earth; special study of voodoo",
        course_number: "404",
    },

    {
        name: "Ordinary Wizarding Levels (OWLs)",
        description: "Prepatory course devoted to Ordinary Wizarding Levels",
        course_number: "501P",
    },

    {
        name: "Wandlore",
        description: "Study of wand composition and traits; study of other objects for holding and channeling magic",
        course_number: "502",
    },

    {
        name: "Magical Languages",
        description: "Languages and scripts used in exercising, studying, and creating magic",
        course_number: "503",
    },

    {
        name: "Ancient Magic",
        description: "Study of magic from antiquity",
        course_number: "504",
    },


    {
        name: "Animus",
        description: "Working magic without a wand or other magical conduit",
        course_number: "601",
    },

    {
        name: "Cooperative Magic",
        description: "Spells uniquely to be performed by more than one witch or wizard",
        course_number: "602",
    },

    {
        name: "International Magic",
        description: "Survey course of magic from different magical cultures; class agrees on selection",
        course_number: "603",
    },

    {
        name: "Magical Maladies (Magmal)",
        description: "Survey course of common illnesses and conditions with magical causes; focus on curative spells and potions for magical and ordinary maladies",
        course_number: "604",
    },

    {
        name: "Advanced Wizarding Levels (AWLs) I",
        description: "Preparatory course for Advanced Wizarding Levels--written portion",
        course_number: "701W",
    },

    {
        name: "Advanced Wizarding Levels (AWLs) II",
        description: "Preparatory course for Advanced Wizarding Levels--practicum portion",
        course_number: "702P",
    },

    {
        name: "Pre-graduate Colloquium",
        description: "Special topics in magic; class decides on areas of exploration",
        course_number: "703C",
    },

    {
        name: "Pre-graduate Thesis",
        description: "Supervisory section for researching and drafting capstone thesis",
        course_number: "704T",
    },

])

Section.all.each { |section|

        Level.all.each { |level|

            15.times {

                Student.create([
                    first_name: Faker::Name.first_name, 
                    last_name: Faker::Name.last_name,
                    level: level,
                    section: section
                ])

            }

        }

}


Period.all.each { |period| 

    Course.all.each {|course| 

        section_table = {

            1 => { 1 => 1, 2 => 2, 3 => 3, 4 => 4 }, 
      
            2 => { 1 => 4, 2 => 1, 3 => 2, 4 => 3 },
      
            3 => { 1 => 3, 2 => 4, 3 => 1, 4 => 2 },
      
            4 => { 1 => 2, 2 => 3, 3 => 4, 4 => 1 }
      
        }
         
        section_id = section_table[course.course_number[2].to_i][period.number]

        class_session = ClassSession.create(
            teacher: Teacher.find_by(id: course.id),
            course: course,
            level: Level.find_by(year: course.course_number[0]),
            period: period,
            section: Section.find_by(id: section_id)   
        ) 
        class_session.students << class_session.section.students.where(level: class_session.level)

    }
              
}
  


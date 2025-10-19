students = [
  {
    student_id: 'CS2021001',
    name: 'Alex Rivera',
    major: 'Computer Science',
    gpa: 3.85,
    courses: [
      { name: 'Data Structures', grade: 'A', credits: 3 },
      { name: 'Algorithms', grade: 'B+', credits: 4 },
      { name: 'Database Systems', grade: 'A-', credits: 3 }
    ]
  },
  {
    student_id: 'CS2021002',
    name: 'Emma Thompson',
    major: 'Software Engineering',
    gpa: 3.92,
    courses: [
      { name: 'Web Development', grade: 'A', credits: 3 },
      { name: 'Mobile Apps', grade: 'A', credits: 4 }
    ]
  },
  {
    student_id: 'CS2021003',
    name: 'Maria Garcia',
    major: 'Mathematics',
    gpa: 3.9,
    courses: [
      { name: 'Calculus', grade: 'A', credits: 4 },
      { name: 'Linear Algebra', grade: 'A-', credits: 3 },
      { name: 'Statistics', grade: 'B+', credits: 3 }
    ]
  },

  {
    student_id: 'CS2021004',
    name: 'Sophia Turner',
    major: 'Biology',
    gpa: 3.6,
    courses: [
      { name: 'Cell Biology', grade: 'A', credits: 4 },
      { name: 'Genetics', grade: 'B+', credits: 3 },
      { name: 'Ecology', grade: 'A-', credits: 3 }
    ]
  },
  {
    student_id: 'CS2021005',
    name: 'Daniel Kim',
    major: 'Physics',
    gpa: 3.8,
    courses: [
      { name: 'Classical Mechanics', grade: 'A', credits: 4 },
      { name: 'Quantum Mechanics', grade: 'B+', credits: 3 },
      { name: 'Thermodynamics', grade: 'A-', credits: 3 }
    ]
  }
]

students_2 = students.to_a
p students_2
puts 'First value: '
p students_2[0]

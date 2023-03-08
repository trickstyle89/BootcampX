const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'BootcampX'
});

pool.query(`
SELECT students.id as student_id, students.name as name, cohorts.name as cohort
FROM students
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE '%${process.argv[2]}%'
LIMIT ${process.argv[3] || 5};
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
  })
});


/* 
$ node teachers.js JUL02
connected
JUL02: Cheyanne Powlowski
JUL02: Georgiana Fahey
JUL02: Helmer Rodriguez
JUL02: Jadyn Bosco
JUL02: Roberto Towne
JUL02: Rosalyn Raynor
JUL02: Talon Gottlieb
JUL02: Waylon Boehm
*/
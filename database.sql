drop database srap;

create database srap;
use srap;

	show tables;
    
    desc students;
    desc clubs;
    desc achievements;
    desc roles;
    
	drop table students;
    drop table achievements;
    drop table roles;
    drop table clubs;
    
    truncate  students;
    select * from students ;
    select * from clubs;
	select * from achievements;
	select * from roles;

INSERT INTO clubs (ccode, cname, cdesc, cadvantages, copportunities, clink, ccontact) VALUES
('AICTE', 'All India Council for Technical Education', 
'The All India Council for Technical Education (AICTE) is the national-level council for technical education under the Department of Higher Education. It aims to promote quality education and develop technical skills across the country. AICTE works towards ensuring the availability of quality faculty and infrastructure in technical institutions, along with the promotion of research and innovation.', 
'Joining AICTE provides students with numerous advantages, including access to quality technical education, industry collaborations, and various skill development programs. AICTE also conducts workshops and seminars to enhance the knowledge base of students, helping them to excel in their careers.', 
'Opportunities available through AICTE include internships, scholarships for higher studies, and job placements in reputed companies. AICTE also facilitates tie-ups with industries for student projects and training, ensuring that students are industry-ready upon graduation.', 
'https://aicte-india.org', 
'011-12345678'),

('COEP_cell', 'College of Engineering Pune - Student Cell', 
'The College of Engineering Pune (COEP) student cell is an initiative that allows students to engage in various extracurricular activities, including cultural events, technical competitions, and community service projects. It serves as a platform for students to develop leadership and teamwork skills while pursuing their academic interests.', 
'Being part of the COEP student cell offers numerous advantages, such as networking opportunities with alumni, skill development workshops, and exposure to real-world projects. Students can also enhance their organizational and communication skills by participating in various events.', 
'The COEP student cell opens doors to numerous opportunities, including participation in national and international competitions, internships with leading firms, and collaboration with other educational institutions. Students can also take part in organizing events that attract industry professionals.', 
'https://coep.org.in', 
'020-12345678'),

('CSOI', 'Computer Society of India', 
'The Computer Society of India (CSOI) is a leading professional association that aims to promote the study and application of computer science. It organizes conferences, workshops, and seminars to enhance the knowledge and skills of its members. CSOI is dedicated to the growth of computer professionals in India.', 
'Membership in CSOI provides various benefits, including access to research publications, opportunities to attend industry conferences, and networking with professionals in the field. Members can also participate in exclusive training programs that enhance their technical skills.', 
'CSOI offers opportunities for internships with tech companies, participation in hackathons, and collaboration on innovative projects. Members also get the chance to contribute to community service initiatives focused on promoting technology education.', 
'https://csi-india.org', 
'022-98765432'),

('GDSC', 'Google Developer Student Clubs', 
'Google Developer Student Clubs (GDSC) is a community-driven program that provides students with the resources and guidance to learn about development and technology. It focuses on enhancing students’ skills through workshops, hackathons, and project-based learning.', 
'Being part of GDSC offers students hands-on experience with the latest technologies, mentorship from industry professionals, and opportunities to work on real-world projects. Students can also collaborate with peers to develop innovative solutions to local problems.', 
'Opportunities through GDSC include internships with Google and partner companies, participation in Google-hosted events, and access to exclusive learning resources and tools. Members can also network with tech enthusiasts and build a strong professional network.', 
'https://gdsc.community.dev', 
'040-56789012'),

('IEEE_CS', 'IEEE Computer Society', 
'The IEEE Computer Society is a professional association dedicated to advancing the theory, practice, and application of computer and information science and technology. It offers its members numerous resources, including journals, conferences, and standards.', 
'Membership provides advantages like access to cutting-edge research publications, networking with global professionals, and discounts on conference fees. Members can also participate in various educational programs and workshops tailored to their interests.', 
'Opportunities include attending international conferences, participating in competitions, and internships at leading tech companies. The society also encourages collaboration on research projects that contribute to technological advancements.',  
'https://computer.org', 
'011-34567890'),

('IETE', 'Institution of Electronics and Telecommunication Engineers', 
'IETE is one of the leading professional societies in India for electronics and telecommunication engineers. It focuses on the development of the profession through education, training, and providing a platform for interaction among its members.', 
'Being a member of IETE comes with benefits such as access to technical publications, participation in seminars, and networking with experts in the field. Members can also enhance their skills through various technical programs and certifications.', 
'Opportunities available through IETE include internships, participation in industry conferences, and collaboration on research projects. Members can also get involved in community outreach programs that promote STEM education.', 
'https://iete.org', 
'022-12345678'),

('IIC', 'Institutional Innovation Cell', 
'IIC is a Government of India initiative that aims to promote innovation and entrepreneurship among students. It provides a platform for students to develop their ideas into viable products through mentorship, funding, and industry collaborations.', 
'Joining IIC offers advantages such as access to funding opportunities, workshops on entrepreneurship, and guidance from experienced mentors. Students can also participate in innovation challenges that encourage creative problem-solving.', 
'Opportunities through IIC include internships with startups, participation in innovation programs, and collaboration with other educational institutions. Members can also showcase their innovations at national-level competitions.', 
'https://iic.gov.in', 
'011-65432123'),

('IOT_Cell', 'Internet of Things Cell', 
'IOT Cell focuses on the emerging technologies of the Internet of Things (IoT). It aims to create awareness and enhance the technical skills of students in IoT applications through workshops, projects, and research.', 
'Membership in IOT Cell provides various advantages, including hands-on experience with IoT devices, access to exclusive workshops, and networking with industry experts. Members can also collaborate on innovative IoT projects.', 
'Opportunities available through IOT Cell include internships with tech companies, participation in IoT competitions, and collaboration with academic institutions for research projects. Members can also gain exposure to real-world applications of IoT technology.', 
'https://iotcell.org', 
'022-98765432'),

('ISTE', 'Indian Society for Technical Education', 
'ISTE is an organization that aims to provide quality education in engineering and technology. It works towards enhancing the teaching and learning process through various training programs and workshops for educators and students alike.', 
'Joining ISTE offers benefits such as access to educational resources, participation in national seminars, and networking opportunities with fellow educators and professionals in the field. Members can also engage in various professional development programs.', 
'Opportunities available through ISTE include internships, collaborative research projects, and participation in conferences. Members can also contribute to community development initiatives that promote technical education.', 
'https://iste.org.in', 
'040-12345678'),

('NSS', 'National Service Scheme', 
'NSS is a government-sponsored program that aims to develop a sense of social responsibility among students through community service and outreach programs. It encourages students to engage in various social initiatives and volunteer their time for community development.', 
'Being a member of NSS provides various advantages, including hands-on experience in social work, the development of leadership skills, and the opportunity to make a positive impact in the community. Members can also participate in national integration camps.', 
'Opportunities through NSS include internships with NGOs, participation in community service projects, and collaboration with government initiatives for social welfare. Members can also earn certificates that enhance their profiles for future job opportunities.', 
'https://nss.gov.in', 
'011-23456789'),

('S4DS', 'Students for Data Science', 
'S4DS is a student-led initiative aimed at promoting data science education and practical applications among students. It conducts workshops, hackathons, and seminars to build a strong foundation in data science and analytics.', 
'Membership in S4DS provides numerous advantages, including access to industry insights, networking opportunities, and hands-on experience with data science tools. Members can also collaborate on real-world data projects that enhance their skills.', 
'Opportunities through S4DS include internships with data-driven companies, participation in data science competitions, and collaboration with academic institutions for research projects. Members can also present their findings at national-level conferences.', 
'https://s4ds.org', 
'022-87654321'),

('SC', 'Student Council', 
'The Student Council is an elected body representing the student community at the institution. It aims to foster leadership skills among students by involving them in decision-making processes and organizing various events and activities on campus.', 
'Joining the Student Council provides students with advantages such as leadership experience, teamwork skills, and the opportunity to organize large-scale events. Members can also represent their peers and voice their concerns to the administration.', 
'Opportunities available through the Student Council include internships with campus organizations, participation in leadership training programs, and collaboration with faculty on various initiatives. Members can also gain valuable networking contacts for future careers.', 
'https://studentcouncil.org', 
'011-11223344');

INSERT INTO achievements (ccode, cachiv1, cachiv2, cachiv3, cachiv4) VALUES
('AICTE', 'Organized a national conference on technical education.', 'Launched a scholarship program for underprivileged students.', 'Collaborated with industries for skill development workshops.', 'Implemented a mentorship program for new engineering students.'),
('COEP_cell', 'Successfully conducted the annual cultural fest with over 500 participants.', 'Launched a tech symposium featuring prominent speakers from the industry.', 'Initiated a community service project that benefitted 300 local families.', 'Organized hackathons that attracted over 200 teams nationwide.'),
('CSOI', 'Held a coding competition with over 1,000 participants nationwide.', 'Published a research paper in an international journal.', 'Hosted workshops on emerging technologies with industry experts.', 'Won the best student chapter award from the national body.'),
('GDSC', 'Developed a mobile application that reached 10,000 downloads.', 'Organized a series of tech talks featuring successful entrepreneurs.', 'Won the national hackathon conducted by Google.', 'Launched a community project addressing local issues through technology.'),
('IEEE_CS', 'Hosted an international conference on advancements in computer science.', 'Published several research papers in reputed journals.', 'Organized workshops on AI and machine learning.', 'Collaborated with tech companies for internship placements.'),
('IETE', 'Conducted a technical workshop on electronics for over 200 students.', 'Initiated a mentorship program with alumni.', 'Won the best student chapter award for three consecutive years.', 'Organized a national-level technical fest attracting 1,000 participants.'),
('IIC', 'Supported over 100 startups through funding and mentorship.', 'Conducted an innovation challenge with 500 participants.', 'Launched a startup incubation program.', 'Organized workshops on entrepreneurship and innovation.'),
('IOT_Cell', 'Developed an IoT-based project that won a national award.', 'Conducted workshops on smart city solutions.', 'Collaborated with local government on an IoT initiative.', 'Published research in leading journals on IoT applications.'),
('ISTE', 'Organized faculty development programs to enhance teaching skills.', 'Initiated a workshop series on emerging technologies for students.', 'Launched an educational initiative benefiting underprivileged schools.', 'Won awards for excellence in teaching methodologies.'),
('NSS', 'Conducted a tree plantation drive that planted 5,000 trees.', 'Organized health camps that served over 2,000 people.', 'Participated in national service initiatives across the country.', 'Launched awareness campaigns on social issues.'),
('S4DS', 'Conducted data science bootcamps for over 300 students.', 'Developed data analytics projects that benefited local businesses.', 'Collaborated with universities for research projects.', 'Organized data science competitions with national participation.'),
('SC', 'Successfully organized the annual sports meet with record participation.', 'Launched initiatives to improve student welfare and representation.', 'Collaborated with administration on policy changes for student benefits.', 'Initiated a mentorship program for first-year students.');

INSERT INTO roles (ccode, crole1, crole2, crole3, crole4) VALUES
('AICTE', 'Anil Sharma', 'Priya Verma', 'Ravi Kumar', 'Sneha Patel'),
('COEP_cell', 'Aditi Joshi', 'Karan Singh', 'Meera Agarwal', 'Vikram Bansal'),
('CSOI', 'Rahul Mehta', 'Nisha Desai', 'Gaurav Rai', 'Ritika Jain'),
('GDSC', 'Siddharth Kapoor', 'Neha Gupta', 'Ajay Yadav', 'Pooja Reddy'),
('IEEE_CS', 'Ashok Choudhary', 'Poonam Sethi', 'Vikas Nair', 'Aishwarya Rao'),
('IETE', 'Deepak Mishra', 'Simran Kaur', 'Tarun Sharma', 'Geeta Menon'),
('IIC', 'Rohit Sharma', 'Isha Roy', 'Akshay Patil', 'Divya Verma'),
('IOT_Cell', 'Manish Bhargav', 'Riya Singh', 'Kunal Prasad', 'Sonal Gupta'),
('ISTE', 'Pranav Joshi', 'Kriti Sharma', 'Harsh Agarwal', 'Divya Bhatt'),
('NSS', 'Vivek Sharma', 'Anjali Mehta', 'Rohini Deshmukh', 'Suraj Joshi'),
('S4DS', 'Nitin Kumar', 'Kajal Patil', 'Ramesh Tiwari', 'Sapna Chaudhary'),
('SC', 'Sunil Yadav', 'Preeti Sharma', 'Shivam Singh', 'Nandita Rao');



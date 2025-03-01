package com.pbl.srap.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pbl.srap.model.Student;
import com.pbl.srap.repository.StudentRepository;

@Service
public class StudentService {

    @Autowired
    private StudentRepository studentRepository;

    public Student saveStudent(Student student) {
        return studentRepository.save(student);
    }

    public Student findByEmail(String email) {
        return studentRepository.findByEmail(email);
    }

    public Student findByEmailAndPassword(String email, String password) {
        return studentRepository.findByEmailAndPassword(email, password);
    }

    public boolean isAlreadyMemberOfClub(String cclub) {
        return studentRepository.existsByCclub(cclub);
    }

    public boolean checkCredentials(String email, String password) {
        Student student = studentRepository.findByEmail(email);
        return student != null && student.getPassword().equals(password);
    }

    public Student getStudentById(Long id) {
        return studentRepository.findById(id).orElse(null);
    }


}

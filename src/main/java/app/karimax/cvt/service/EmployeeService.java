package app.karimax.cvt.service;

import java.util.List;

import app.karimax.cvt.model.Employee;



public interface EmployeeService {
Employee saveEmployee(Employee employee);

List<Employee> getAllEmployees();

Employee getEmplyeeById(long id);

Employee updateEmployee(Employee employee,long id);

void deleteEmployee(long id);

List<Employee> findByEmail(String email);


String findAdultUserByEmail(String name);
}

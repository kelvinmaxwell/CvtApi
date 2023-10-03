package app.karimax.cvt.Serviceimpl;

import java.util.List;
import java.util.Optional;


import org.springframework.stereotype.Service;

import app.karimax.cvt.exception.ResourceNotFoundException;
import app.karimax.cvt.model.Employee;
import app.karimax.cvt.repository.EmployeeRepository;
import app.karimax.cvt.service.EmployeeService;



@Service
public class EmployeeServiceImpl implements EmployeeService {

	private EmployeeRepository employeeRepository;
	public EmployeeServiceImpl(EmployeeRepository employeeREpository) {
		super();
		this.employeeRepository = employeeREpository;
	}
	@Override
	public Employee saveEmployee(Employee employee) {
		// TODO Auto-generated method stub
		return employeeRepository.save(employee);
	}
	@Override
	public List<Employee> getAllEmployees() {
		// TODO Auto-generated method stub
		return employeeRepository.findAll();
	}
	@Override
	public Employee getEmplyeeById(long id) {
		// TODO Auto-generated method stub
	Optional<Employee>	employee=employeeRepository.findById(id);
	if(employee.isPresent()) {
	return employee.get();
	
	}
	else {
		throw new ResourceNotFoundException("Employee","Id",id);
	}
	}
	@Override
	public Employee updateEmployee(Employee employee, long id) {
		 //check emp exists
	    Employee existingemployee=employeeRepository.findById(id).orElseThrow(
	    		()->new ResourceNotFoundException("Employee","Id",id));
	    existingemployee.setFirstName(employee.getFirstName());
	    existingemployee.setLastName(employee.getLastName());
	    existingemployee.setEmail(employee.getEmail());
	    employeeRepository.save(existingemployee);
	    return existingemployee;
		
	}
	@Override
	public void deleteEmployee(long id) {
//		Check weatherCheck exists
		employeeRepository.findById(id).orElseThrow(
	    		()->new ResourceNotFoundException("Employee","Id",id));
		
		
		employeeRepository.deleteById(id);
		
		
	}
	@Override
	public List<Employee> findByEmail(String email) {
		
		List<Employee>	employee=employeeRepository.findByEmail(email);
		if(!employee.isEmpty()) {
		return employee;
		
		}
		else {
			throw new ResourceNotFoundException("Employee","name",email);
		}
	}
	@Override
	public String findAdultUserByEmail(String name) {
		String employee=employeeRepository.findAdultUserByEmail(name);
		if(employee!=null) {
		return employee;
		
		}
		else {
			throw new ResourceNotFoundException("Employee","name",name);
		}
	}

}

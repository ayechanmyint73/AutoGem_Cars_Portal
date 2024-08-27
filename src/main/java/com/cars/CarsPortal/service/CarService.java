package com.cars.CarsPortal.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cars.CarsPortal.controller.CarController;
import com.cars.CarsPortal.dao.Car;
import com.cars.CarsPortal.repository.CarRepository;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class CarService {

	private static final Logger logger = LoggerFactory.getLogger(CarController.class);

    @Autowired
    private CarRepository carRepository;

    //Constructor
	public CarService(CarRepository car_repo) {
		// TODO Auto-generated constructor stub
		this.carRepository=car_repo;
	}



	public List<Car> getAllCars() {
		System.out.println("In get call car service");
        return carRepository.findAll();
    }
    
    //used for both update and Save Car
    public void saveCar(Car car) {
       carRepository.save(car);
    }
    
	public Car get(Long id) {
		return carRepository.findById(id).get();
	}

	
	public void delete(Long id) {
		carRepository.deleteById(id);
	}
	
	public List<Car> search(String keyword) {
		return carRepository.search(keyword);
	}
}

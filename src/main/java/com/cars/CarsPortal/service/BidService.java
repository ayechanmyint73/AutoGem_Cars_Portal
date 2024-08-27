package com.cars.CarsPortal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cars.CarsPortal.dao.Car;
import com.cars.CarsPortal.dao.CarBidding;
import com.cars.CarsPortal.repository.BidRepository;

@Service
@Transactional
public class BidService {

	@Autowired
	BidRepository repo;

	@Autowired
    private BidRepository bidRepository;

	public CarBidding save(CarBidding carBiding) {		
        return repo.save(carBiding);	
	}

	public List<CarBidding> listAll() {
		return (List<CarBidding>) repo.findAll();
	}

	public List<CarBidding> listBidInfo(Car car) {
		return (List<CarBidding>) repo.findByCarid(car);
	}
}

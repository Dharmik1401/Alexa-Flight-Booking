package com.project.service;
import java.util.List;

/*import java.util.List;
*/
import com.project.model.ManageCityVO;

public interface ManageCityService {
	
	void saveCity(ManageCityVO manageCityVO);

	List<ManageCityVO> search();

	List<ManageCityVO> findById(int id);
	
}

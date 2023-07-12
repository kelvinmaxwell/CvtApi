package app.karimax.cvt;

import app.karimax.cvt.model.Mechanic;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor

public class  getFileExtension {
	
	String fileName;
	
	public getFileExtension(String fileName) {
		super();
		this.fileName = fileName;
	}
	
	public String getextension() {
	
	
    if (fileName == null) {
      return null;
    }
    String[] fileNameParts = fileName.split("\\.");

    return fileNameParts[fileNameParts.length - 1];
    
	}

	
  }
  
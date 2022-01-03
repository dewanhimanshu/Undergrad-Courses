package beans;
import java.io.Serializable;
import java.util.regex.Pattern;
public class Student implements Serializable{
   
	//beans properties
	String firstName;
    String lastName;
    String subjects[];
    String emailAddr;
    String gender;
    
    //validation properties
    boolean firstNameValid = false;
    boolean lastNameValid = false;
    boolean emailAddrValid = false;
    boolean CSSelected = false;
    boolean phySelected = false;
    boolean mathsSelected = false;
    boolean isMale = false;
    boolean isFemale = false;
    
    boolean isGenderValid = false;
    
    
    public boolean getIsGenderValid() {
    	return isGenderValid;
    }
    
    
    public String getGender()
    {
    	return gender;
    }
    
    public void setGender(String gender) {
    	if(gender.equals("male"))
    		isMale = true;
    	else
    		isFemale = true;
    	
    	isGenderValid = true;
    	
    	this.gender = gender;
    }
    public boolean getIsMale() {
    	return isMale;
    }
    public boolean getIsFemale() {
    	return isFemale;
    }
    

    /**
	 * @return the firstNameValid
	 */
	public boolean getFirstNameValid() {
		return firstNameValid;
	}

	/**
	 * @return the lastNameValid
	 */
	public boolean getLastNameValid() {
		return lastNameValid;
	}

	/**
	 * @return the emailAddrValid
	 */
	public boolean getEmailAddrValid() {
		return emailAddrValid;
	}

	/**
	 * @return the cSSelected
	 */
	public boolean getCSSelected() {
		return CSSelected;
	}

	/**
	 * @return the phySelected
	 */
	public boolean getPhySelected() {
		return phySelected;
	}

	/**
	 * @return the mathsSelected
	 */
	public boolean getMathsSelected() {
		return mathsSelected;
	}



	public String getEmailAddr() {
		return emailAddr;
	}

	public void setEmailAddr(String emailAddr) {
	

		  String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\."+ 
	                "[a-zA-Z0-9_+&*-]+)*@" + 
	                "(?:[a-zA-Z0-9-]+\\.)+[a-z" + 
	                "A-Z]{2,7}$"; 
	                  
	        Pattern pat = Pattern.compile(emailRegex); 
	        if(!pat.matcher(emailAddr).matches()){
	        	emailAddrValid  = false;

	        }
	        else {
	
	        	emailAddrValid = true;
	        }
	

			
			
			
			
			
		
		this.emailAddr = emailAddr;
	}

	public Student(){

    }

    public String[] getSubjects() {
    	
		return subjects;
	}

	public void setSubjects(String[] subjects) {
		
		for(int i=0;i<subjects.length;i++) {
			
			if(subjects[i].contentEquals("CS")) {
				System.out.println("Selected");
				CSSelected = true;
			}
					
			else if(subjects[i].contentEquals("phy")) {
				phySelected = true;
			}
				
			else if(subjects[i].contentEquals("maths")) {
				mathsSelected = true;
			}
				
				
			
		}
		
		this.subjects = subjects;
	}

	public void setFirstName(String firstName){
		if(!firstName.isEmpty())
		firstNameValid = true;
		
        this.firstName = firstName;
    }

    public String getFirstName(){
        return firstName;
    }

    public void setLastName(String lastName){
    	if(!lastName.isEmpty())
    	lastNameValid = true;
    	
        this.lastName = lastName;
    }

    public String getLastName(){
        return lastName;
    }
}
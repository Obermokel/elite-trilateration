package borg.ed.trilateration;

import java.io.Serializable;
import java.util.Date;

public class UnknownSystem implements Serializable {

	private static final long serialVersionUID = -3642655875568174824L;

	private int id = 0;
	private long id64 = 0;
	private String name = null;
	private EstimatedCoord estimatedCoordinates = null;
	private Date date = null;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public long getId64() {
		return id64;
	}

	public void setId64(long id64) {
		this.id64 = id64;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public EstimatedCoord getEstimatedCoordinates() {
		return estimatedCoordinates;
	}

	public void setEstimatedCoordinates(EstimatedCoord estimatedCoordinates) {
		this.estimatedCoordinates = estimatedCoordinates;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}

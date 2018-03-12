package borg.ed.trilateration;

import borg.ed.universe.data.Coord;

public class EstimatedCoord extends Coord {

	private static final long serialVersionUID = 4509707502823869422L;

	private float precision = 0;

	public float getPrecision() {
		return precision;
	}

	public void setPrecision(float precision) {
		this.precision = precision;
	}

}

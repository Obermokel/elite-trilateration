package borg.ed.trilateration;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

import org.apache.commons.io.FileUtils;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import borg.ed.universe.data.Coord;
import borg.ed.universe.util.GsonCoord;

public class AhkGenerator {

	public static final String MY_SYSTEM = "3 Geminorum";
	public static final Coord MY_COORD = new Coord(1996.31f, 587.56f, -14027.53f);

	private static final Gson GSON = new GsonBuilder()
			//.registerTypeAdapter(ZonedDateTime.class, new GsonZonedDateTime())
			.setDateFormat("yyyy-MM-dd HH:mm:ss").registerTypeAdapter(Coord.class, new GsonCoord()).create();

	public static void main(String[] args) throws Exception {
		// Download JSON
		int nUnknown = 0;
		int nEstimated = 0;

		File file = new File("C:\\Users\\boris\\Google Drive\\Elite Dangerous", "systemsWithoutCoordinates.json");
		List<String> lines = FileUtils.readLines(file, "UTF-8");
		List<UnknownSystem> unknownSystems = new ArrayList<UnknownSystem>();
		for (String line : lines) {
			if (line.trim().startsWith("{") && line.endsWith("},")) {
				nUnknown++;
				UnknownSystem us = GSON.fromJson(line.substring(0, line.length() - 1), UnknownSystem.class);
				if (us.getEstimatedCoordinates() != null) {
					nEstimated++;
					System.out.println(String.format(Locale.US, "%-50s at approx %,.0f Ly", us.getName(), us.getEstimatedCoordinates().distanceTo(MY_COORD)));
					unknownSystems.add(us);
				}
			}
		}

		String unknownSystemsString = "UnknownSystems := {\n";
		Iterator<UnknownSystem> it = unknownSystems.iterator();
		while (it.hasNext()) {
			UnknownSystem us = it.next();
			unknownSystemsString += "    \"" + us.getName() + "\" : " + (int) us.getEstimatedCoordinates().distanceTo(MY_COORD) + "";
			if (it.hasNext()) {
				unknownSystemsString += ",";
			}
			unknownSystemsString += "\n";
		}
		unknownSystemsString += "}";
		System.out.println(String.format(Locale.US, "%,d of %,d are already estimated", nEstimated, nUnknown));

		System.out.println(unknownSystemsString);
	}

}

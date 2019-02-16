/*
 * generated by Xtext 2.14.0
 */
package fr.unice.polytech.idm.xtext.formatting2

import com.google.inject.Inject
import fr.unice.polytech.idm.xtext.services.SmartHomeDSLGrammarAccess
import org.eclipse.xtext.formatting2.AbstractFormatter2
import org.eclipse.xtext.formatting2.IFormattableDocument
import smartHome.Location
import smartHome.SmartHome

class SmartHomeDSLFormatter extends AbstractFormatter2 {
	
	@Inject extension SmartHomeDSLGrammarAccess

	def dispatch void format(SmartHome smartHome, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		for (sensorType : smartHome.sensorTypes) {
			sensorType.format
		}
		for (location : smartHome.locations) {
			location.format
		}
		for (rule : smartHome.rules) {
			rule.format
		}
	}

	def dispatch void format(Location location, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		for (sensor : location.sensors) {
			sensor.format
		}
	}
	
	// TODO: implement for Rule
}

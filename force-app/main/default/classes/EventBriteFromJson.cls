//public class EventBriteFromJson{
	public class EventBriteFromJson {

	public class Subcategories {
		public String id {get;set;} 
		public String resource_uri {get;set;} 
		public String name {get;set;} 
		public Parent_category parent_category {get;set;} 

		public Subcategories(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'id') {
							id = parser.getText();
						} else if (text == 'resource_uri') {
							resource_uri = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'parent_category') {
							parent_category = new Parent_category(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Subcategories consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Category {
		public String id {get;set;} 
		public String resource_uri {get;set;} 
		public String name {get;set;} 
		public String name_localized {get;set;} 
		public String short_name {get;set;} 
		public String short_name_localized {get;set;} 
		public List<Subcategories> subcategories {get;set;} 

		public Category(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'id') {
							id = parser.getText();
						} else if (text == 'resource_uri') {
							resource_uri = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'name_localized') {
							name_localized = parser.getText();
						} else if (text == 'short_name') {
							short_name = parser.getText();
						} else if (text == 'short_name_localized') {
							short_name_localized = parser.getText();
						} else if (text == 'subcategories') {
							subcategories = arrayOfSubcategories(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Category consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public String id {get;set;} 
	public Name name {get;set;} 
	public Name description {get;set;} 
	public Start start {get;set;} 
	public Start end_Z {get;set;} // in json: end
	public String url {get;set;} 
	public String vanity_url {get;set;} 
	public String created {get;set;} 
	public String changed {get;set;} 
	public String published {get;set;} 
	public String status {get;set;} 
	public String currency_Z {get;set;} // in json: currency
	public Boolean online_event {get;set;} 
	public String organization_id {get;set;} 
	public String organizer_id {get;set;} 
	public Organizer organizer {get;set;} 
	public Object logo_id {get;set;} 
	public Logo logo {get;set;} 
	public Venue venue {get;set;} 
	public Object format_id {get;set;} 
	public Format format {get;set;} 
	public Category category {get;set;} 
	public Subcategory subcategory {get;set;} 
	public Music_properties music_properties {get;set;} 
	public Bookmark_info bookmark_info {get;set;} 
	public Ticket_availability ticket_availability {get;set;} 
	public Boolean listed {get;set;} 
	public Boolean shareable {get;set;} 
	public Boolean invite_only {get;set;} 
	public Boolean show_remaining {get;set;} 
	public String password {get;set;} 
	public Integer capacity {get;set;} 
	public Boolean capacity_is_custom {get;set;} 
	public String tx_time_limit {get;set;} 
	public Boolean hide_start_date {get;set;} 
	public Boolean hide_end_date {get;set;} 
	public String locale {get;set;} 
	public Boolean is_locked {get;set;} 
	public String privacy_setting {get;set;} 
	public Boolean is_externally_ticketed {get;set;} 
	public External_ticketing external_ticketing {get;set;} 
	public Boolean is_series {get;set;} 
	public Boolean is_series_parent {get;set;} 
	public String series_id {get;set;} 
	public Boolean is_reserved_seating {get;set;} 
	public Boolean show_pick_a_seat {get;set;} 
	public Boolean show_seatmap_thumbnail {get;set;} 
	public Boolean show_colors_in_seatmap_thumbnail {get;set;} 
	public Boolean is_free {get;set;} 
	public String source {get;set;} 
	public String version {get;set;} 
	public String resource_uri {get;set;} 
	public Event_sales_status event_sales_status {get;set;} 
	public Checkout_settings checkout_settings {get;set;} 

	public EventBriteFromJson(JSONParser parser) {
		while (parser.nextToken() != System.JSONToken.END_OBJECT) {
			if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
				String text = parser.getText();
				if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
					if (text == 'id') {
						id = parser.getText();
					} else if (text == 'name') {
						name = new Name(parser);
					} else if (text == 'description') {
						description = new Name(parser);
					} else if (text == 'start') {
						start = new Start(parser);
					} else if (text == 'end') {
						end_Z = new Start(parser);
					} else if (text == 'url') {
						url = parser.getText();
					} else if (text == 'vanity_url') {
						vanity_url = parser.getText();
					} else if (text == 'created') {
						created = parser.getText();
					} else if (text == 'changed') {
						changed = parser.getText();
					} else if (text == 'published') {
						published = parser.getText();
					} else if (text == 'status') {
						status = parser.getText();
					} else if (text == 'currency') {
						currency_Z = parser.getText();
					} else if (text == 'online_event') {
						online_event = parser.getBooleanValue();
					} else if (text == 'organization_id') {
						organization_id = parser.getText();
					} else if (text == 'organizer_id') {
						organizer_id = parser.getText();
					} else if (text == 'organizer') {
						organizer = new Organizer(parser);
					} else if (text == 'logo_id') {
						logo_id = parser.readValueAs(Object.class);
					} else if (text == 'logo') {
						logo = new Logo(parser);
					} else if (text == 'venue') {
						venue = new Venue(parser);
					} else if (text == 'format_id') {
						format_id = parser.readValueAs(Object.class);
					} else if (text == 'format') {
						format = new Format(parser);
					} else if (text == 'category') {
						category = new Category(parser);
					} else if (text == 'subcategory') {
						subcategory = new Subcategory(parser);
					} else if (text == 'music_properties') {
						music_properties = new Music_properties(parser);
					} else if (text == 'bookmark_info') {
						bookmark_info = new Bookmark_info(parser);
					} else if (text == 'ticket_availability') {
						ticket_availability = new Ticket_availability(parser);
					} else if (text == 'listed') {
						listed = parser.getBooleanValue();
					} else if (text == 'shareable') {
						shareable = parser.getBooleanValue();
					} else if (text == 'invite_only') {
						invite_only = parser.getBooleanValue();
					} else if (text == 'show_remaining') {
						show_remaining = parser.getBooleanValue();
					} else if (text == 'password') {
						password = parser.getText();
					} else if (text == 'capacity') {
						capacity = parser.getIntegerValue();
					} else if (text == 'capacity_is_custom') {
						capacity_is_custom = parser.getBooleanValue();
					} else if (text == 'tx_time_limit') {
						tx_time_limit = parser.getText();
					} else if (text == 'hide_start_date') {
						hide_start_date = parser.getBooleanValue();
					} else if (text == 'hide_end_date') {
						hide_end_date = parser.getBooleanValue();
					} else if (text == 'locale') {
						locale = parser.getText();
					} else if (text == 'is_locked') {
						is_locked = parser.getBooleanValue();
					} else if (text == 'privacy_setting') {
						privacy_setting = parser.getText();
					} else if (text == 'is_externally_ticketed') {
						is_externally_ticketed = parser.getBooleanValue();
					} else if (text == 'external_ticketing') {
						external_ticketing = new External_ticketing(parser);
					} else if (text == 'is_series') {
						is_series = parser.getBooleanValue();
					} else if (text == 'is_series_parent') {
						is_series_parent = parser.getBooleanValue();
					} else if (text == 'series_id') {
						series_id = parser.getText();
					} else if (text == 'is_reserved_seating') {
						is_reserved_seating = parser.getBooleanValue();
					} else if (text == 'show_pick_a_seat') {
						show_pick_a_seat = parser.getBooleanValue();
					} else if (text == 'show_seatmap_thumbnail') {
						show_seatmap_thumbnail = parser.getBooleanValue();
					} else if (text == 'show_colors_in_seatmap_thumbnail') {
						show_colors_in_seatmap_thumbnail = parser.getBooleanValue();
					} else if (text == 'is_free') {
						is_free = parser.getBooleanValue();
					} else if (text == 'source') {
						source = parser.getText();
					} else if (text == 'version') {
						version = parser.getText();
					} else if (text == 'resource_uri') {
						resource_uri = parser.getText();
					} else if (text == 'event_sales_status') {
						event_sales_status = new Event_sales_status(parser);
					} else if (text == 'checkout_settings') {
						checkout_settings = new Checkout_settings(parser);
					} else {
						System.debug(LoggingLevel.WARN, 'JSON2Apex consuming unrecognized property: '+text);
						consumeObject(parser);
					}
				}
			}
		}
	}
	
	public class Organizer {
		public String name {get;set;} 
		public Name description {get;set;} 
		public Name long_description {get;set;} 
		public Object logo_id {get;set;} 
		public Logo logo {get;set;} 
		public String resource_uri {get;set;} 
		public String id {get;set;} 
		public String url {get;set;} 
		public Integer num_past_events {get;set;} 
		public Integer num_future_events {get;set;} 
		public String twitter {get;set;} 
		public String facebook {get;set;} 

		public Organizer(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'name') {
							name = parser.getText();
						} else if (text == 'description') {
							description = new Name(parser);
						} else if (text == 'long_description') {
							long_description = new Name(parser);
						} else if (text == 'logo_id') {
							logo_id = parser.readValueAs(Object.class);
						} else if (text == 'logo') {
							logo = new Logo(parser);
						} else if (text == 'resource_uri') {
							resource_uri = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'url') {
							url = parser.getText();
						} else if (text == 'num_past_events') {
							num_past_events = parser.getIntegerValue();
						} else if (text == 'num_future_events') {
							num_future_events = parser.getIntegerValue();
						} else if (text == 'twitter') {
							twitter = parser.getText();
						} else if (text == 'facebook') {
							facebook = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Organizer consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Address {
		public Object address_1 {get;set;} 
		public Object address_2 {get;set;} 
		public Object city {get;set;} 
		public Object region {get;set;} 
		public Object postal_code {get;set;} 
		public Object country {get;set;} 
		public Object latitude {get;set;} 
		public Object longitude {get;set;} 

		public Address(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'address_1') {
							address_1 = parser.readValueAs(Object.class);
						} else if (text == 'address_2') {
							address_2 = parser.readValueAs(Object.class);
						} else if (text == 'city') {
							city = parser.readValueAs(Object.class);
						} else if (text == 'region') {
							region = parser.readValueAs(Object.class);
						} else if (text == 'postal_code') {
							postal_code = parser.readValueAs(Object.class);
						} else if (text == 'country') {
							country = parser.readValueAs(Object.class);
						} else if (text == 'latitude') {
							latitude = parser.readValueAs(Object.class);
						} else if (text == 'longitude') {
							longitude = parser.readValueAs(Object.class);
						} else {
							System.debug(LoggingLevel.WARN, 'Address consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Venue {
		public String name {get;set;} 
		public Object age_restriction {get;set;} 
		public Integer capacity {get;set;} 
		public Address address {get;set;} 
		public String resource_uri {get;set;} 
		public String id {get;set;} 
		public String latitude {get;set;} 
		public String longitude {get;set;} 

		public Venue(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'name') {
							name = parser.getText();
						} else if (text == 'age_restriction') {
							age_restriction = parser.readValueAs(Object.class);
						} else if (text == 'capacity') {
							capacity = parser.getIntegerValue();
						} else if (text == 'address') {
							address = new Address(parser);
						} else if (text == 'resource_uri') {
							resource_uri = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'latitude') {
							latitude = parser.getText();
						} else if (text == 'longitude') {
							longitude = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Venue consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Start {
		public String timezone {get;set;} 
		public String utc {get;set;} 
		public String local {get;set;} 

		public Start(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'timezone') {
							timezone = parser.getText();
						} else if (text == 'utc') {
							utc = parser.getText();
						} else if (text == 'local') {
							local = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Start consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Offline_settings {
		public String payment_method {get;set;} 
		public String instructions {get;set;} 

		public Offline_settings(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'payment_method') {
							payment_method = parser.getText();
						} else if (text == 'instructions') {
							instructions = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Offline_settings consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Music_properties {
		public Object age_restriction {get;set;} 
		public Object presented_by {get;set;} 
		public String door_time {get;set;} 

		public Music_properties(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'age_restriction') {
							age_restriction = parser.readValueAs(Object.class);
						} else if (text == 'presented_by') {
							presented_by = parser.readValueAs(Object.class);
						} else if (text == 'door_time') {
							door_time = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Music_properties consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Minimum_ticket_price {
		public String currency_Z {get;set;} // in json: currency
		public Integer value {get;set;} 
		public String major_value {get;set;} 
		public String display {get;set;} 

		public Minimum_ticket_price(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'currency') {
							currency_Z = parser.getText();
						} else if (text == 'value') {
							value = parser.getIntegerValue();
						} else if (text == 'major_value') {
							major_value = parser.getText();
						} else if (text == 'display') {
							display = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Minimum_ticket_price consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Ticket_availability {
		public Boolean has_available_tickets {get;set;} 
		public Minimum_ticket_price minimum_ticket_price {get;set;} 
		public Minimum_ticket_price maximum_ticket_price {get;set;} 
		public Boolean is_sold_out {get;set;} 
		public Start start_sales_date {get;set;} 
		public Boolean waitlist_available {get;set;} 

		public Ticket_availability(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'has_available_tickets') {
							has_available_tickets = parser.getBooleanValue();
						} else if (text == 'minimum_ticket_price') {
							minimum_ticket_price = new Minimum_ticket_price(parser);
						} else if (text == 'maximum_ticket_price') {
							maximum_ticket_price = new Minimum_ticket_price(parser);
						} else if (text == 'is_sold_out') {
							is_sold_out = parser.getBooleanValue();
						} else if (text == 'start_sales_date') {
							start_sales_date = new Start(parser);
						} else if (text == 'waitlist_available') {
							waitlist_available = parser.getBooleanValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Ticket_availability consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Event_sales_status {
		public String sales_status {get;set;} 
		public Start start_sales_date {get;set;} 

		public Event_sales_status(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'sales_status') {
							sales_status = parser.getText();
						} else if (text == 'start_sales_date') {
							start_sales_date = new Start(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Event_sales_status consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Parent_category {

		public Parent_category(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						{
							System.debug(LoggingLevel.WARN, 'Parent_category consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Name {
		public String text {get;set;} 
		public String html {get;set;} 

		public Name(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'text') {
							text = parser.getText();
						} else if (text == 'html') {
							html = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Name consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Logo {
		public String id {get;set;} 
		public String url {get;set;} 
		public Crop_mask crop_mask {get;set;} 
		public Original original {get;set;} 
		public String aspect_ratio {get;set;} 
		public String edge_color {get;set;} 
		public Boolean edge_color_set {get;set;} 

		public Logo(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'id') {
							id = parser.getText();
						} else if (text == 'url') {
							url = parser.getText();
						} else if (text == 'crop_mask') {
							crop_mask = new Crop_mask(parser);
						} else if (text == 'original') {
							original = new Original(parser);
						} else if (text == 'aspect_ratio') {
							aspect_ratio = parser.getText();
						} else if (text == 'edge_color') {
							edge_color = parser.getText();
						} else if (text == 'edge_color_set') {
							edge_color_set = parser.getBooleanValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Logo consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Parent_category_Z {
		public String id {get;set;} 
		public String resource_uri {get;set;} 
		public String name {get;set;} 
		public String name_localized {get;set;} 
		public String short_name {get;set;} 
		public String short_name_localized {get;set;} 
		public List<Parent_category> subcategories {get;set;} 

		public Parent_category_Z(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'id') {
							id = parser.getText();
						} else if (text == 'resource_uri') {
							resource_uri = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'name_localized') {
							name_localized = parser.getText();
						} else if (text == 'short_name') {
							short_name = parser.getText();
						} else if (text == 'short_name_localized') {
							short_name_localized = parser.getText();
						} else if (text == 'subcategories') {
							subcategories = arrayOfParent_category(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Parent_category_Z consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Checkout_settings {
		public String created {get;set;} 
		public String changed {get;set;} 
		public String country_code {get;set;} 
		public String currency_code {get;set;} 
		public String checkout_method {get;set;} 
		public List<Offline_settings> offline_settings {get;set;} 
		public String user_instrument_vault_id {get;set;} 

		public Checkout_settings(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'created') {
							created = parser.getText();
						} else if (text == 'changed') {
							changed = parser.getText();
						} else if (text == 'country_code') {
							country_code = parser.getText();
						} else if (text == 'currency_code') {
							currency_code = parser.getText();
						} else if (text == 'checkout_method') {
							checkout_method = parser.getText();
						} else if (text == 'offline_settings') {
							offline_settings = arrayOfOffline_settings(parser);
						} else if (text == 'user_instrument_vault_id') {
							user_instrument_vault_id = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Checkout_settings consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Top_left {
		public Integer y {get;set;} 
		public Integer x {get;set;} 

		public Top_left(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'y') {
							y = parser.getIntegerValue();
						} else if (text == 'x') {
							x = parser.getIntegerValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Top_left consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Format {
		public String id {get;set;} 
		public String name {get;set;} 
		public String name_localized {get;set;} 
		public String short_name {get;set;} 
		public String short_name_localized {get;set;} 
		public String resource_uri {get;set;} 

		public Format(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'id') {
							id = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'name_localized') {
							name_localized = parser.getText();
						} else if (text == 'short_name') {
							short_name = parser.getText();
						} else if (text == 'short_name_localized') {
							short_name_localized = parser.getText();
						} else if (text == 'resource_uri') {
							resource_uri = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Format consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Crop_mask {
		public Top_left top_left {get;set;} 
		public Integer width {get;set;} 
		public Integer height {get;set;} 

		public Crop_mask(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'top_left') {
							top_left = new Top_left(parser);
						} else if (text == 'width') {
							width = parser.getIntegerValue();
						} else if (text == 'height') {
							height = parser.getIntegerValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Crop_mask consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Subcategory {
		public String id {get;set;} 
		public String resource_uri {get;set;} 
		public String name {get;set;} 
		public Parent_category_Z parent_category {get;set;} 

		public Subcategory(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'id') {
							id = parser.getText();
						} else if (text == 'resource_uri') {
							resource_uri = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'parent_category') {
							parent_category = new Parent_category_Z(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Subcategory consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class External_ticketing {
		public String external_url {get;set;} 
		public String ticketing_provider_name {get;set;} 
		public Boolean is_free {get;set;} 
		public Minimum_ticket_price minimum_ticket_price {get;set;} 
		public Minimum_ticket_price maximum_ticket_price {get;set;} 
		public String sales_start {get;set;} 
		public String sales_end {get;set;} 

		public External_ticketing(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'external_url') {
							external_url = parser.getText();
						} else if (text == 'ticketing_provider_name') {
							ticketing_provider_name = parser.getText();
						} else if (text == 'is_free') {
							is_free = parser.getBooleanValue();
						} else if (text == 'minimum_ticket_price') {
							minimum_ticket_price = new Minimum_ticket_price(parser);
						} else if (text == 'maximum_ticket_price') {
							maximum_ticket_price = new Minimum_ticket_price(parser);
						} else if (text == 'sales_start') {
							sales_start = parser.getText();
						} else if (text == 'sales_end') {
							sales_end = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'External_ticketing consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Original {
		public String url {get;set;} 
		public Integer width {get;set;} 
		public Integer height {get;set;} 

		public Original(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'url') {
							url = parser.getText();
						} else if (text == 'width') {
							width = parser.getIntegerValue();
						} else if (text == 'height') {
							height = parser.getIntegerValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Original consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Bookmark_info {
		public Boolean bookmarked {get;set;} 

		public Bookmark_info(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'bookmarked') {
							bookmarked = parser.getBooleanValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Bookmark_info consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	
	public static EventBriteFromJson parse(String json) {
		System.JSONParser parser = System.JSON.createParser(json);
		return new EventBriteFromJson(parser);
	}
	
	public static void consumeObject(System.JSONParser parser) {
		Integer depth = 0;
		do {
			System.JSONToken curr = parser.getCurrentToken();
			if (curr == System.JSONToken.START_OBJECT || 
				curr == System.JSONToken.START_ARRAY) {
				depth++;
			} else if (curr == System.JSONToken.END_OBJECT ||
				curr == System.JSONToken.END_ARRAY) {
				depth--;
			}
		} while (depth > 0 && parser.nextToken() != null);
	}
	







    private static List<Offline_settings> arrayOfOffline_settings(System.JSONParser p) {
        List<Offline_settings> res = new List<Offline_settings>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new Offline_settings(p));
        }
        return res;
    }
    private static List<Parent_category> arrayOfParent_category(System.JSONParser p) {
        List<Parent_category> res = new List<Parent_category>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new Parent_category(p));
        }
        return res;
    }
    private static List<Subcategories> arrayOfSubcategories(System.JSONParser p) {
        List<Subcategories> res = new List<Subcategories>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new Subcategories(p));
        }
        return res;
    }
}
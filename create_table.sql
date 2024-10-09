create database airbnb_reviews;
use airbnb_reviews;

#creates table reviews
#couldn't allow listing_id to be the primary key so I created review_id

create table reviews(
review_id bigint AUTO_INCREMENT PRIMARY KEY,
listing_id bigint,
reviews_per_month double,
total_num_reviews bigint,
num_reviews_ltm int,
num_reviews_l30d int,
rating_score float,
accuracy_score float,
cleanliness_score float,
checkin_score float,
communication_score float,
location_score float,
value_score float,
FOREIGN KEY (listing_id) REFERENCES listings(listing_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

#creates table hosts
create table hosts(
host_id bigint PRIMARY KEY,
host_name varchar(100),
host_since date,
host_location varchar(225),	
host_response_time enum("within a day", "within a few hours", "within an hour", "a few days or more"),
host_response_rate float,
host_acceptance_rate float,
host_is_superhost boolean,
host_neighbourhood varchar(225),
host_listings_count int,
host_total_listings_count int,
host_has_profile_pic boolean,
host_identity_verified boolean
);

#creates table listings
create table listings(
listing_id bigint PRIMARY KEY,
host_id bigint,
neighbourhood varchar(245),	
property_type varchar(245),
room_type varchar(245),
num_can_accommodate varchar(245),
num_bathrooms int,
num_bedrooms int,
num_beds int,
price float,
minimum_nights int,
maximum_nights int,
has_availability boolean,
instant_bookable boolean
);

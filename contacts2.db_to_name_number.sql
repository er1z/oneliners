-- used in android contacts storage
select display_name, p.normalized_number from raw_contacts r join phone_lookup p on p.raw_contact_id=r._id group by r._id order by display_name

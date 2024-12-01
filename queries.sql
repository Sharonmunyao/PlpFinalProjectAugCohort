--Get Good Farming Practices for a Specific Crop
SELECT fp.practice_description 
FROM farm_practices fp
JOIN crops c ON fp.crop_id = c.crop_id
WHERE c.crop_name = 'Corn';

--Get Pests and Diseases for a Specific Crop
SELECT pest_name, symptoms, treatment_methods
FROM pest_disease_management
JOIN crops c ON pest_disease_management.crop_id = c.crop_id
WHERE c.crop_name = 'Wheat';

--Get Resources for a Specific Crop
SELECT resource_name, usage_instructions
FROM farm_resources
WHERE recommended_crops LIKE '%Corn%';

--Get Localized Weather and Soil Data for a Farmer’s Location
SELECT average_temperature, average_rainfall, soil_type
FROM weather_soil_data
WHERE location = 'Kenya';

--Submit Feedback from a Farmer
INSERT INTO farmer_feedback (farmer_id, feedback_text, date_submitted)
VALUES (1, 'How do I prevent blight on my tomato plants?', NOW());


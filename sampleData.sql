INSERT INTO farmers (name, contact_info, location, feedback)
VALUES
('John Doe', 'john.doe@example.com', '123 Farm Rd, Springfield', 'Great service, I love the advice on soil management!'),
('Jane Smith', 'jane.smith@example.com', '456 Green Valley, Elmswood', 'Excellent crop rotation tips. Highly recommend!'),
('Michael Brown', 'michael.brown@example.com', '789 Oak St, Rivertown', 'I found the pest management advice very helpful for my tomato crops.');


INSERT INTO crops (crop_name, optimal_soil_type, planting_season, harvest_season, irrigation_requirements, fertilizer_type, pest_management)
VALUES
('Corn', 'Loamy', 'Spring', 'Autumn', 'Regular watering, deep irrigation', 'NPK (Nitrogen, Phosphorus, Potassium)', 'Control corn borer and aphids using pesticide and beneficial insects'),
('Tomatoes', 'Sandy loam', 'Spring', 'Summer', 'Needs frequent watering, prefers well-drained soil', 'Compost or organic fertilizers', 'Prevent tomato blight using fungicides and crop rotation'),
('Wheat', 'Clayey', 'Winter', 'Spring', 'Minimal irrigation', 'Organic compost', 'Control wheat rust using fungicides and resistant varieties'),
('Carrots', 'Sandy soil', 'Spring', 'Autumn', 'Moderate irrigation', 'Organic fertilizers', 'Control carrot flies with organic pesticides and crop rotation');


INSERT INTO farm_practices (crop_id, practice_description, practice_type, recommended_tools)
VALUES
(1, 'Crop rotation with legumes to improve soil nitrogen and prevent pests.', 'Crop Rotation', 'Plow, Harrow, Seed Drills'),
(2, 'Use mulching to conserve soil moisture and reduce weeds.', 'Water Management', 'Mulching materials, Watering cans'),
(3, 'Apply organic compost before planting for soil fertility.', 'Soil Management', 'Compost spreader, Tractor'),
(4, 'Thinning of seedlings is crucial for better root development.', 'Seedling Care', 'Hoe, Rake');


INSERT INTO weather_soil_data (location, soil_type, average_temperature, average_rainfall, optimal_temperature_range, optimal_rainfall_range)
VALUES
('Springfield', 'Loamy', 25.50, 120.0, '18-30°C', '100-200mm'),
('Elmswood', 'Sandy loam', 22.00, 150.0, '20-30°C', '80-180mm'),
('Rivertown', 'Clayey', 18.00, 180.0, '15-25°C', '150-250mm');


INSERT INTO pest_disease_management (crop_id, pest_name, symptoms, treatment_methods)
VALUES
(1, 'Corn Borer', 'Wilting, holes in leaves, yellowing leaves', 'Apply insecticide and practice crop rotation'),
(2, 'Tomato Blight', 'Brown spots, wilting, yellowing of leaves', 'Remove affected plants, apply copper-based fungicides'),
(3, 'Wheat Rust', 'Red-brown pustules on leaves', 'Use resistant varieties, apply fungicides during early infection'),
(4, 'Carrot Fly', 'Stunted growth, distorted roots', 'Use floating row covers, apply neem oil');


INSERT INTO farm_resources (resource_type, resource_name, usage_instructions, recommended_crops)
VALUES
('Tool', 'Tractor', 'Used for plowing, tilling, and planting.', 'Corn, Wheat, Carrots'),
('Irrigation', 'Drip Irrigation System', 'Install along rows of crops for efficient water delivery.', 'Tomatoes, Carrots, Wheat'),
('Fertilizer', 'Organic Compost', 'Apply to soil before planting, reapply annually.', 'Corn, Wheat, Tomatoes, Carrots'),
('Pest Control', 'Neem Oil', 'Apply to leaves to prevent pests like aphids and flies.', 'Tomatoes, Carrots');


INSERT INTO farmer_feedback (farmer_id, feedback_text, response_text, date_submitted)
VALUES
(1, 'The advice on irrigation practices really helped increase my corn yield.', 'Thank you for your feedback! We’re glad to know our tips helped.', '2024-05-15 09:15:00'),
(2, 'The crop rotation and soil testing tips worked wonders for my tomatoes.', 'We’re happy to hear that! Keep up the great work.', '2024-05-16 11:30:00'),
(3, 'I need more help with pest management for my wheat crops.', 'We recommend a new fungicide for wheat rust. We will send you more info soon!', '2024-05-17 14:45:00');

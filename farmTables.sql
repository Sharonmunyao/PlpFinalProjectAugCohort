CREATE TABLE farmers (
    farmer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    contact_info VARCHAR(150),
    location VARCHAR(150),
    feedback TEXT
);

CREATE TABLE crops (
    crop_id INT AUTO_INCREMENT PRIMARY KEY,
    crop_name VARCHAR(100),
    optimal_soil_type VARCHAR(100),
    planting_season VARCHAR(100),
    harvest_season VARCHAR(100),
    irrigation_requirements VARCHAR(50),
    fertilizer_type VARCHAR(100),
    pest_management TEXT
);

CREATE TABLE farm_practices (
    practice_id INT AUTO_INCREMENT PRIMARY KEY,
    crop_id INT,
    practice_description TEXT,
    practice_type VARCHAR(100),
    recommended_tools TEXT,
    FOREIGN KEY (crop_id) REFERENCES crops(crop_id)
);

CREATE TABLE weather_soil_data (
    weather_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(150),
    soil_type VARCHAR(100),
    average_temperature DECIMAL(5,2),
    average_rainfall DECIMAL(5,2),
    optimal_temperature_range VARCHAR(50),
    optimal_rainfall_range VARCHAR(50)
);

CREATE TABLE pest_disease_management (
    pest_id INT AUTO_INCREMENT PRIMARY KEY,
    crop_id INT,
    pest_name VARCHAR(100),
    symptoms TEXT,
    treatment_methods TEXT,
    FOREIGN KEY (crop_id) REFERENCES crops(crop_id)
);

CREATE TABLE farm_resources (
    resource_id INT AUTO_INCREMENT PRIMARY KEY,
    resource_type VARCHAR(100),
    resource_name VARCHAR(100),
    usage_instructions TEXT,
    recommended_crops TEXT
);

CREATE TABLE farmer_feedback (
    feedback_id INT AUTO_INCREMENT PRIMARY KEY,
    farmer_id INT,
    feedback_text TEXT,
    response_text TEXT,
    date_submitted DATETIME,
    FOREIGN KEY (farmer_id) REFERENCES farmers(farmer_id)
);


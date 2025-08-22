-- Create the database
USE pythonlogin;
-- Create the table
CREATE TABLE flower_info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    flower_name VARCHAR(100),
    scientific_name VARCHAR(150),
    interesting_fact TEXT,
    sowing_period TEXT,
    soil_type TEXT,
    pests_to_avoid TEXT,
    pesticides TEXT,
    care varchar(6),
    harvesting_period TEXT,
    state_where_grown TEXT,
    indout varchar(7),
    region varchar(7)
);

-- Insert flower data
INSERT INTO flower_info (flower_name, scientific_name, interesting_fact, sowing_period, soil_type, pests_to_avoid, pesticides, additional_care, harvesting_period, state_where_grown) VALUES
('Hibiscus', 'Hibiscus rosa-sinensis', 'Flowers of many hibiscus species have been used in traditional medicine', 'Start of the monsoon season, usually June or July', 'Well-drained, slightly acidic, rich in organic matter; sandy loam ideal', 'Aphids, mealybugs, spider mites, whiteflies', 'Neem oil, insecticidal soap, imidacloprid, acetamiprid', 'Medium', '15–20 days after blooming', NULL, "Outdoor", "Both"),
('Marigold', 'Tagetes', 'Repels pests like aphids and attracts ladybugs', 'Mid-June to mid-July, mid-September to mid-October, and Jan–Feb', 'Well-drained, fertile, slightly acidic to neutral; sandy loam, pH 7.0–7.5', 'Aphids, thrips, leafhoppers, spider mites, caterpillars', 'Chemical and organic pesticides', 'Easy', 'About 2.5 months after transplanting', NULL, "Outdoor", "Both"),
('Rose', 'Rosa', 'One of the oldest flowers', 'Sept–Oct (plains); Oct–Nov or Feb–Mar (hills)', 'Well-drained, sandy loam, rich in organic matter; pH 6.0–7.5', 'Aphids, spider mites, thrips, beetles, caterpillars, rose slugs', 'Chemical and organic pesticides', 'Hard', 'When petals begin to unfold', NULL, "Outdoor", "Both"),
('Lantana', 'Lantana camara', 'Changes flower color as it matures', 'Throughout year if moisture available', 'Well-draining, neutral to slightly acidic (pH 6.0–7.5)', 'Lace bug, aphids, whiteflies, mealybugs, scale insects', 'Fluroxypyr, aminopyralid, aminocyclopyrachlor', 'Easy', 'Late spring to first frost', NULL, "Outdoor", "South"),
('Periwinkle', 'Vinca', 'Medicinal and thrives in low-light', 'September to February', 'Sandy loam or loam; slightly acidic to neutral pH (6.0–7.5)', 'Aphids, spider mites, mealybugs, scale insects', 'Insecticides or beneficial insects', 'Medium', 'Around 12 months after sowing', NULL, "Both", "Both"),
('Dahlia', 'Dahlia pinnata', 'Mexico\'s national flower, used by Aztecs', 'Feb–Mar (summer blooms), June–July (winter), later in hills', 'Well-draining, slightly acidic to neutral (pH 6.0–7.0)', 'Aphids, spider mites, slugs, snails, earwigs, caterpillars', 'Insecticidal soap, horticultural oil, neem oil', 'Hard', '60–75 days after planting', NULL, "Outdoor","North"),
('Orchids', 'Orchidaceae', 'Can grow on trees, rocks, or underground', 'Monsoon (June–Sept) and spring (Mar–Apr)', 'Bark mix with coconut husk, charcoal, perlite, moss', 'Mealybugs, aphids, scale, thrips, spider mites', 'Neem oil', 'Hard', 'When fully open and mature', NULL, "Indoor","South"),
('Neelakurinji', 'Strobilanthes kunthiana', 'Blooms every 12 years', 'August to October', 'Well-drained, acidic (pH 5.5–6.5)', 'Aphids, spider mites, whiteflies', 'Neem oil, insecticidal soap', 'Medium', 'Not harvested', 'Western Ghats', "Outdoor","South"),
('Lotus', 'Nelumbo nucifera', 'Can regenerate from ancient seeds', 'Late March to early May', 'Loam and clay soil', 'Aphids, spider mites, leafhoppers, snails', 'Tembotrione, Acephate', 'Medium', 'June to September', NULL, "Outdoor","Both"),
('Bougainvillea', 'Bougainvillea', 'True flowers small; colorful bracts', 'Spring and early summer', 'Well-draining, slightly acidic (pH 5.5–6.5), sandy/loamy', 'Aphids, whiteflies, mealybugs, scale, mites, loopers', 'Insecticidal soap, neem oil', 'Easy', 'No specific period', NULL, "Outdoor","South"),
('Sunflower', 'Helianthus', 'Follow the sun, edible seeds, up to 30 ft tall', 'June to November', 'Well-drained, fertile, black soil (Regur)', 'Sunflower moth, stem weevil, caterpillars', 'Emamectin benzoate, imidacloprid, pyriproxyfen', 'Medium', '90–125 days after planting', NULL, "Outdoor","Both");


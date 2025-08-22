-- Step 1: Create the database
CREATE DATABASE IF NOT EXISTS csc;
USE pythonlogin;
drop table flowers;
-- Step 2: Create the table
CREATE TABLE flowers (
    flower_name VARCHAR(100),
    scientific_name VARCHAR(100),
    interesting_fact TEXT,
    sowing_period VARCHAR(150),
    soil_type TEXT,
    pests_to_avoid TEXT,
    pesticides TEXT,
    additional_care ENUM('easy', 'medium', 'hard'),
    harvesting_period VARCHAR(150),
    indoor_outdoor ENUM('Indoor', 'Outdoor', 'Both'),
    region ENUM('North', 'South', 'Both')
);

-- Step 3: Insert data
INSERT INTO flowers VALUES
('Hibiscus', 'Hibiscus rosa-sinensis', 'Used in traditional medicine', 'June–July', 'Well-drained, slightly acidic sandy loam rich in organic matter', 'Aphids, mealybugs, spider mites, whiteflies', 'Neem oil, insecticidal soap, imidacloprid, acetamiprid', 'medium', '15–20 days after blooming', 'Outdoor', 'Both'),

('Marigold', 'Tagetes', 'Repels pests and attracts ladybugs', 'June–July, Sep–Oct, Jan–Feb', 'Well-drained, fertile, sandy loam (pH 7.0–7.5)', 'Aphids, thrips, leafhoppers, spider mites, caterpillars', 'Chemical + organic', 'easy', '~2.5 months after transplanting', 'Outdoor', 'Both'),

('Rose', 'Rosa', 'One of the oldest flowers', 'Sep–Oct (plains), Oct–Nov / Feb–Mar (hills)', 'Well-drained, sandy loam rich in organic matter (pH 6.0–7.5)', 'Aphids, mites, thrips, beetles, caterpillars, rose slugs', 'Chemical + organic', 'hard', 'When petals begin to unfold', 'Both', 'Both'),

('Lantana', 'Lantana camara', 'Changes color as it matures', 'Year-round (with moisture)', 'Well-draining soil, pH 6.0–7.5', 'Lace bug, aphids, whiteflies, mealybugs, scale insects', 'Herbicides: fluroxypyr, aminopyralid, aminocyclopyrachlor', 'easy', 'Late spring to first frost', 'Outdoor', 'South'),

('Periwinkle', 'Vinca', 'Medicinal; thrives in low light', 'Sep–Feb', 'Sandy loam or loam (pH 6.0–7.5)', 'Aphids, mites, mealybugs, scale insects', 'Insecticides, beneficial insects', 'medium', '~12 months after sowing', 'Indoor', 'Both'),

('Dahlia', 'Dahlia pinnata', 'Mexico’s national flower', 'Feb–Mar, June–July (monsoon), early spring (hills)', 'Well-draining, slightly acidic to neutral (pH 6.0–7.0)', 'Aphids, mites, slugs, snails, earwigs, caterpillars', 'Insecticidal soap, horticultural oil, neem oil', 'hard', '60–75 days after planting', 'Outdoor', 'Both'),

('Orchids', 'Orchidaceae', 'Epiphytic/lithophytic/underground growth', 'June–Sep, Mar–Apr', 'Bark, coconut husk, charcoal, perlite, moss mix', 'Mealybugs, aphids, scale, thrips, mites', 'Neem oil', 'hard', 'When fully open and mature', 'Indoor', 'Both'),

('Neelakurinji', 'Strobilanthes kunthiana', 'Blooms every 12 years', 'Aug–Oct', 'Acidic, well-drained (pH 5.5–6.5)', 'Aphids, mites, whiteflies', 'Neem oil, insecticidal soaps', 'medium', 'Not harvested', 'Outdoor', 'South'),

('Lotus', 'Nelumbo nucifera', 'Can regenerate from ancient seeds', 'Mar–May', 'Loam + clay soil', 'Aphids, mites, leafhoppers, snails', 'Tembotrione herbicide, Acephate insecticide', 'medium', 'June–September', 'Outdoor', 'North'),

('Bougainvillea', 'Bougainvillea', 'Colorful bracts, small white true flowers', 'Spring–early summer', 'Sandy or loamy, slightly acidic (pH 5.5–6.5)', 'Aphids, whiteflies, mealybugs, scale, mites', 'Neem oil, insecticidal soap', 'easy', 'No specific period', 'Outdoor', 'Both'),

('Oleander', 'Nerium oleander', 'Toxic but attractive flowering shrub', 'Spring or fall', 'Sandy, loamy, tolerates poor soils', 'Aphids, mealybugs, scale, oleander caterpillar', 'Deltamethrin, cyhalothrin, acetamiprid', 'easy', 'Late summer or early fall', 'Outdoor', 'Both'),

('Purslane', 'Portulaca oleracea', 'Edible succulent, high in omega-3', 'Mar–Aug', 'Sandy/loamy, rich organic (pH 6.0–7.0)', 'Sawfly, leafminer weevil', 'Dithiopyr, pendimethalin, benefin + trifluralin', 'easy', '6–8 weeks after sowing', 'Both', 'South'),

('Sunflower', 'Helianthus', 'Follows the sun, edible seeds', 'June–Nov', 'Fertile, well-drained; prefers black soil', 'Moths, stem weevil, caterpillars', 'Emamectin, imidacloprid, pyriproxyfen', 'medium', '90–125 days after planting', 'Outdoor', 'North'),

('Champak', 'Magnolia champaca', 'Used in perfumes; fragrant yellow blooms', 'Apr–Jun', 'Sandy or loamy, slightly acidic to neutral (pH 6–7)', 'Aphids, mites, scale, mealybugs', 'Neem oil, insecticidal soap', 'medium', 'May–Oct', 'Outdoor', 'South'),

('Waterlilies', 'Nymphaeaceae', 'Float on water; shelter aquatic life', 'Late spring–late summer', 'Clay soil', 'Aphids, beetles, China mark moths', '2,4-D, Endothall, Triclopyr, Glyphosate', 'easy', 'Spring through fall', 'Outdoor', 'Both'),

('Zinnia', 'Zinnia elegans', 'Bright, long-blooming, attracts butterflies', 'After frost – late spring', 'Fertile, well-drained (pH 5.5–7.5)', 'Aphids, mites, whiteflies, earwigs', 'Neem oil, insecticidal soap', 'easy', 'Early summer to first frost', 'Outdoor', 'Both'),

('Balsam', 'Impatiens', 'Explosive seed dispersal, medicinal use', 'Mar–Jun', 'Loamy, well-drained, rich in organic matter', 'Aphids, mites, whiteflies', 'Imidacloprid, systemic products', 'medium', 'Jun–Sep', 'Both', 'Both'),

('Chrysanthemum', 'Chrysanthemum indicum', 'Cultivated in China over 3,000 years ago', 'Jun–Jul, Sep', 'Sandy loam, slightly acidic (pH 6.5–7.0)', 'Aphids, mites, thrips, leaf miners', 'Parathion, Quinalphos, Endosulfan, Thionazin', 'easy', 'Late Oct–late Nov', 'Outdoor', 'North'),

('Desert Rose', 'Adenium obesum', 'Long-lasting pink/red trumpet flowers', 'Early spring–mid-summer', 'Succulent mix or 50% sand/perlite blend', 'Mites, mealybugs, scale', 'Neem oil', 'easy', 'Late summer or early fall', 'Indoor', 'South'),

('Cosmos', 'Cosmos bipinnatus', 'Attracts butterflies and hummingbirds', 'Feb–Jun', 'Well-drained, tolerates various soil types', 'Aphids, thrips, mites', 'NPK fertilizer', 'easy', 'When buds just open (morning)', 'Outdoor', 'North'),

('Tulip', 'Tulipa gesneriana', 'Tulip Mania in 17th century Netherlands', 'Nov–Dec (plains), Oct–Dec (hills), Feb (high hills)', 'Light sandy loam, slightly acidic to neutral (pH 6.0–7.0)', 'Aphids, flies, slugs, snails, bulb mites', 'Pyrethroids, imidacloprid', 'medium', 'Apr–May', 'Outdoor', 'North');

select flower_name, region, indoor_outdoor, additional_care from flowers;
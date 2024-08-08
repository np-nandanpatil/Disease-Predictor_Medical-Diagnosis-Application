CREATE DATABASE DiseasePredictor;

USE DiseasePredictor;

-- Table to store symptoms
CREATE TABLE Symptoms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Table to store diseases
CREATE TABLE Diseases (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT
);

-- Table to map diseases to symptoms
CREATE TABLE DiseaseSymptoms (
    disease_id INT,
    symptom_id INT,
    FOREIGN KEY (disease_id) REFERENCES Diseases(id),
    FOREIGN KEY (symptom_id) REFERENCES Symptoms(id)
);

-- Insert symptoms
INSERT INTO Symptoms (name) VALUES
('Fever'),
('Cough'),
('Fatigue'),
('Headache'),
('Sore Throat'),
('Runny Nose'),
('Chest Pain'),
('Shortness of Breath'),
('Dizziness'),
('Nausea'),
('Vomiting'),
('Diarrhea'),
('Abdominal Pain'),
('Loss of Appetite'),
('Weight Loss'),
('Sweating'),
('Chills'),
('Joint Pain'),
('Muscle Pain'),
('Rash'),
('Chest Tightness'),
('Wheezing'),
('Itching'),
('Swelling'),
('Blurry Vision'),
('Dry Mouth'),
('Confusion'),
('Tremors'),
('Seizures'),
('Memory Loss'),
('Urinary Incontinence'),
('Blood in Urine'),
('Frequent Urination'),
('Increased Thirst'),
('Unexplained Bruising'),
('Bleeding Gums'),
('Hair Loss'),
('Dry Skin'),
('Swollen Lymph Nodes'),
('Ear Pain'),
('Numbness'),
('Cold Hands or Feet'),
('Yellowing of Skin (Jaundice)'),
('Bluish Lips or Fingernails'),
('Palpitations'),
('Loss of Smell'),
('Loss of Taste');


-- Add diseases to the Diseases table
INSERT INTO Diseases (name, description) VALUES
('Common Cold', 'A viral infection of your nose and throat.'),
('Influenza', 'A viral infection that attacks your respiratory system.'),
('COVID-19', 'A contagious disease caused by the SARS-CoV-2 virus.'),
('Gastroenteritis', 'An intestinal infection marked by diarrhea, cramps, nausea, vomiting, and fever.'),
('Migraine', 'A type of headache that can cause severe throbbing pain or a pulsing sensation.'),
('Bronchitis', 'Inflammation of the lining of your bronchial tubes.'),
('Pneumonia', 'Infection that inflames air sacs in one or both lungs.'),
('Asthma', 'A condition in which your airways narrow and swell.'),
('Tuberculosis', 'A potentially serious infectious disease that mainly affects the lungs.'),
('Sinusitis', 'A condition in which the cavities around the nasal passages become inflamed.'),
('Hypertension', 'A condition in which the force of the blood against the artery walls is too high.'),
('Diabetes', 'A group of diseases that result in too much sugar in the blood.'),
('Heart Disease', 'A range of conditions that affect your heart.'),
('Kidney Disease', 'A condition in which the kidneys lose the ability to remove waste and balance fluids.'),
('Anemia', 'A condition in which you lack enough healthy red blood cells to carry adequate oxygen to your body.'),
('Hepatitis', 'Inflammation of the liver.'),
('Stroke', 'A condition where blood supply to part of your brain is interrupted or reduced.'),
('Liver Cirrhosis', 'Chronic liver damage from a variety of causes leading to scarring and liver failure.'),
('Lupus', 'An autoimmune disease where the body attacks its own tissues.'),
('Rheumatoid Arthritis', 'A chronic inflammatory disorder affecting many joints, including those in the hands and feet.'),
('Multiple Sclerosis', 'A disease in which the immune system eats away at the protective covering of nerves.'),
('Parkinson\'s Disease', 'A disorder of the central nervous system that affects movement, often including tremors.'),
('Alzheimer\'s Disease', 'A progressive disease that destroys memory and other important mental functions.'),
('Epilepsy', 'A disorder in which nerve cell activity in the brain is disturbed, causing seizures.'),
('Chronic Obstructive Pulmonary Disease (COPD)', 'A group of lung diseases that block airflow and make it difficult to breathe.'),
('Gout', 'A form of arthritis characterized by severe pain, redness, and tenderness in joints.'),
('Psoriasis', 'A condition in which skin cells build up and form scales and itchy, dry patches.'),
('Celiac Disease', 'An immune reaction to eating gluten, a protein found in wheat, barley, and rye.'),
('Irritable Bowel Syndrome (IBS)', 'A common disorder that affects the large intestine.'),
('Crohn\'s Disease', 'A chronic inflammatory bowel disease that affects the lining of the digestive tract.'),
('Ulcerative Colitis', 'A chronic, inflammatory bowel disease that causes inflammation in the digestive tract.'),
('Gallstones', 'Hardened deposits within the fluid in the gallbladder, a small organ under the liver.'),
('Peptic Ulcer Disease', 'Sores that develop on the lining of the stomach, small intestine, or esophagus.'),
('Pancreatitis', 'Inflammation of the pancreas.'),
('Thyroiditis', 'Inflammation of the thyroid gland.'),
('Hyperthyroidism', 'The overproduction of a hormone by the butterfly-shaped gland in the neck (thyroid).'),
('Hypothyroidism', 'A condition in which the thyroid gland doesn\'t produce enough hormones.'),
('Lung Cancer', 'A cancer that begins in the lungs and most often occurs in people who smoke.'),
('Breast Cancer', 'A cancer that forms in the cells of the breasts.'),
('Prostate Cancer', 'A cancer in a man\'s prostate, a small walnut-sized gland that produces seminal fluid.'),
('Colorectal Cancer', 'Cancer of the colon or rectum, located at the digestive tract\'s lower end.'),
('Skin Cancer', 'The abnormal growth of skin cells, most often develops on skin exposed to the sun.'),
('Leukemia', 'A cancer of blood-forming tissues, hindering the body\'s ability to fight infection.'),
('Lymphoma', 'Cancer of the lymphatic system.'),
('Melanoma', 'The most serious type of skin cancer.'),
('Osteoarthritis', 'A type of arthritis that occurs when flexible tissue at the ends of bones wears down.'),
('Osteoporosis', 'A condition in which bones become weak and brittle.'),
('Acid Reflux', 'A condition in which stomach acid frequently flows back into the esophagus.'),
('GERD (Gastroesophageal Reflux Disease)', 'A digestive disorder that affects the ring of muscle between your esophagus and your stomach.'),
('Diverticulitis', 'An inflammation or infection in one or more small pouches in the digestive tract.'),
('Hemorrhoids', 'Swollen and inflamed veins in the rectum and anus that cause discomfort and bleeding.'),
('Chronic Fatigue Syndrome', 'A condition characterized by extreme fatigue that can\'t be explained by any underlying medical condition.'),
('Fibromyalgia', 'A disorder characterized by widespread musculoskeletal pain accompanied by fatigue, sleep, memory, and mood issues.'),
('Endometriosis', 'A disorder in which tissue that normally lines the uterus grows outside the uterus.'),
('Polycystic Ovary Syndrome (PCOS)', 'A hormonal disorder causing enlarged ovaries with small cysts on the outer edges.'),
('Menopause', 'The time that marks the end of your menstrual cycles.'),
('Hyperlipidemia', 'An abnormally high concentration of fats or lipids in the blood.'),
('Peripheral Artery Disease (PAD)', 'A common circulatory problem in which narrowed arteries reduce blood flow to your limbs.'),
('Atherosclerosis', 'A disease in which plaque builds up inside your arteries.'),
('Deep Vein Thrombosis (DVT)', 'A condition where a blood clot forms in a deep vein, usually in the leg.'),
('Varicose Veins', 'Gnarled, enlarged veins, most commonly appearing in the legs and feet.'),
('Hemophilia', 'A disorder in which blood doesn\'t clot normally.'),
('Sickle Cell Anemia', 'A group of inherited red blood cell disorders.'),
('Thalassemia', 'A blood disorder involving less than normal amounts of an oxygen-carrying protein.'),
('Hemochromatosis', 'A condition in which too much iron builds up in your body.'),
('Vitamin D Deficiency', 'A condition resulting from inadequate intake or absorption of vitamin D.'),
('Scurvy', 'A disease resulting from a lack of vitamin C.'),
('Rickets', 'A condition that results in weak or soft bones in children due to prolonged vitamin D deficiency.'),
('Anorexia Nervosa', 'An eating disorder causing people to obsess about weight and what they eat.'),
('Bulimia Nervosa', 'A serious eating disorder marked by binging, followed by methods to avoid weight gain.'),
('Anxiety Disorder', 'A mental health disorder characterized by feelings of worry, anxiety, or fear that are strong enough to interfere with one\'s daily activities.'),
('Depression', 'A mood disorder causing a persistent feeling of sadness and loss of interest.'),
('Bipolar Disorder', 'A mental health condition that causes extreme mood swings that include emotional highs and lows.'),
('Schizophrenia', 'A serious mental disorder in which people interpret reality abnormally.'),
('Obsessive-Compulsive Disorder (OCD)', 'A disorder in which people have recurring, unwanted thoughts, ideas or sensations that make them feel driven to do something repetitively.'),
('Post-Traumatic Stress Disorder (PTSD)', 'A mental health condition that\'s triggered by a terrifying event.'),
('Attention Deficit Hyperactivity Disorder (ADHD)', 'A chronic condition including attention difficulty, hyperactivity, and impulsiveness.'),
('Autism Spectrum Disorder (ASD)', 'A developmental disorder that affects communication and behavior.'),
('Tourette Syndrome', 'A disorder that involves repetitive movements or unwanted sounds (tics) that can\'t be easily controlled.'),
('Chronic Sinusitis', 'A condition in which the cavities around the nasal passages become inflamed for at least 12 weeks.'),
('Epstein-Barr Virus (EBV)', 'A virus of the herpes family, and one of the most common human viruses.'),
('Mononucleosis', 'An infection with the Epstein-Barr virus.'),
('Meningitis', 'An inflammation of the fluid and membranes (meninges) surrounding your brain and spinal cord.'),
('Encephalitis', 'Inflammation of the brain, often due to infection.'),
('Zika Virus', 'A mosquito-borne viral infection that usually causes mild symptoms but can cause congenital abnormalities in infants.'),
('Dengue Fever', 'A mosquito-borne viral infection causing flu-like symptoms.'),
('Malaria', 'A disease caused by a plasmodium parasite, transmitted by the bite of infected mosquitoes.'),
('Lyme Disease', 'A tick-borne illness caused by the bacterium Borrelia burgdorferi.'),
('Rocky Mountain Spotted Fever', 'A bacterial disease spread by ticks.'),
('Ebola Virus Disease', 'A rare but deadly disease caused by infection with a virus of the genus Ebolavirus.'),
('Marburg Virus Disease', 'A hemorrhagic fever virus of the Filoviridae family of viruses and a member of the genus Marburgvirus.'),
('Yellow Fever', 'A viral infection spread by a particular species of mosquito.'),
('Hantavirus', 'A family of viruses spread mainly by rodents and can cause varied disease syndromes in people worldwide.'),
('Rabies', 'A deadly virus spread to people from the saliva of infected animals.'),
('Tetanus', 'A serious bacterial infection that causes painful muscle spasms and can lead to death.'),
('Botulism', 'A rare poisoning caused by toxins produced by Clostridium botulinum bacteria.');



-- Map diseases to symptoms
INSERT INTO DiseaseSymptoms (disease_id, symptom_id) VALUES
(1, 1), (1, 3), (1, 7), (1, 10), (1, 14), -- Common Cold
(2, 1), (2, 2), (2, 3), (2, 7), (2, 13), (2, 18), -- Influenza
(3, 1), (3, 2), (3, 3), (3, 7), (3, 10), (3, 15), -- COVID-19
(4, 6), (4, 10), (4, 12), (4, 19), -- Gastroenteritis
(5, 9), (5, 11), (5, 17), -- Migraine
(6, 1), (6, 7), (6, 8), -- Bronchitis
(7, 1), (7, 2), (7, 7), (7, 8), (7, 13), -- Pneumonia
(8, 2), (8, 7), (8, 8), (8, 20), -- Asthma
(9, 1), (9, 7), (9, 8), (9, 20), -- Tuberculosis
(10, 5), (10, 6), (10, 14), (10, 25), -- Sinusitis
(11, 7), (11, 8), (11, 9), -- Hypertension
(12, 1), (12, 14), (12, 15), (12, 16), (12, 19), -- Diabetes
(13, 1), (13, 7), (13, 8), (13, 9), (13, 26), -- Heart Disease
(14, 12), (14, 13), (14, 17), (14, 18), -- Kidney Disease
(15, 1), (15, 9), (15, 16), (15, 22), -- Anemia
(16, 5), (16, 14), (16, 19), (16, 27), -- Hepatitis
(17, 6), (17, 11), (17, 12), (17, 17), (17, 18), -- Stroke
(18, 12), (18, 16), (18, 19), (18, 21), -- Liver Cirrhosis
(19, 13), (19, 20), (19, 23), (19, 24), -- Lupus
(20, 1), (20, 9), (20, 11), (20, 14), (20, 18), -- Rheumatoid Arthritis
(21, 1), (21, 9), (21, 22), (21, 26), -- Multiple Sclerosis
(22, 11), (22, 23), (22, 27), -- Parkinson's Disease
(23, 9), (23, 22), (23, 28), (23, 29), -- Alzheimer's Disease
(24, 18), (24, 23), (24, 30), -- Epilepsy
(25, 1), (25, 7), (25, 8), (25, 19), (25, 20), -- COPD
(26, 11), (26, 16), (26, 17), (26, 22), -- Gout
(27, 7), (27, 9), (27, 24), -- Psoriasis
(28, 6), (28, 12), (28, 13), (28, 16), (28, 17), -- Celiac Disease
(29, 6), (29, 10), (29, 12), (29, 19), -- IBS
(30, 6), (30, 10), (30, 12), (30, 19), (30, 20), -- Crohn's Disease
(31, 6), (31, 10), (31, 12), (31, 19), -- Ulcerative Colitis
(32, 16), (32, 19), (32, 20), -- Gallstones
(33, 10), (33, 12), (33, 13), (33, 16), -- Peptic Ulcer Disease
(34, 10), (34, 12), (34, 14), (34, 16), -- Pancreatitis
(35, 14), (35, 16), (35, 19), (35, 25), -- Thyroiditis
(36, 14), (36, 16), (36, 19), (36, 25), (36, 28), -- Hyperthyroidism
(37, 16), (37, 18), (37, 19), (37, 27), -- Hypothyroidism
(38, 1), (38, 2), (38, 7), (38, 8), (38, 26), -- Lung Cancer
(39, 1), (39, 14), (39, 26), (39, 27), (39, 28), -- Breast Cancer
(40, 12), (40, 17), (40, 18), (40, 26), -- Prostate Cancer
(41, 10), (41, 12), (41, 14), (41, 16), (41, 27), -- Colorectal Cancer
(42, 7), (42, 14), (42, 25), (42, 26), (42, 27), -- Skin Cancer
(43, 12), (43, 17), (43, 18), (43, 19), -- Leukemia
(44, 13), (44, 20), (44, 23), -- Lymphoma
(45, 14), (45, 19), (45, 25), (45, 27), -- Melanoma
(46, 11), (46, 14), (46, 17), (46, 25), -- Osteoarthritis
(47, 9), (47, 14), (47, 26), (47, 27), -- Osteoporosis
(48, 10), (48, 12), (48, 16), -- Acid Reflux
(49, 10), (49, 12), (49, 16), (49, 17), -- GERD
(50, 6), (50, 10), (50, 12), (50, 19), -- Diverticulitis
(51, 16), (51, 18), (51, 19), (51, 25), -- Hemorrhoids
(52, 7), (52, 13), (52, 20), (52, 27), -- Chronic Fatigue Syndrome
(53, 9), (53, 13), (53, 17), (53, 22), (53, 25), -- Fibromyalgia
(54, 13), (54, 18), (54, 27), (54, 30), -- Endometriosis
(55, 14), (55, 17), (55, 18), (55, 19), -- PCOS
(56, 18), (56, 19), (56, 22), (56, 26), -- Menopause
(57, 14), (57, 16), (57, 17), (57, 19), -- Hyperlipidemia
(58, 7), (58, 13), (58, 17), (58, 20), -- Peripheral Artery Disease
(59, 7), (59, 13), (59, 14), (59, 18), (59, 22), -- Atherosclerosis
(60, 13), (60, 17), (60, 19), -- Deep Vein Thrombosis
(61, 17), (61, 19), (61, 21), -- Varicose Veins
(62, 12), (62, 17), (62, 19), -- Hemophilia
(63, 1), (63, 14), (63, 16), (63, 22), -- Sickle Cell Anemia
(64, 17), (64, 19), (64, 20), -- Thalassemia
(65, 16), (65, 17), (65, 18), -- Hemochromatosis
(66, 9), (66, 19), (66, 25), -- Vitamin D Deficiency
(67, 9), (67, 14), (67, 19), (67, 22), -- Scurvy
(68, 9), (68, 17), (68, 19), (68, 25), -- Vitamin B12 Deficiency
(69, 16), (69, 19), (69, 22), -- Rickets
(70, 7), (70, 9), (70, 19), -- Iron Deficiency Anemia
(71, 19), (71, 22), (71, 25), -- Hypercalcemia
(72, 16), (72, 19), (72, 22), -- Hypocalcemia
(73, 12), (73, 17), (73, 19), -- Addison's Disease
(74, 9), (74, 19), (74, 25), -- Cushing's Syndrome
(75, 10), (75, 16), (75, 19), (75, 25), -- Adrenal Insufficiency
(76, 7), (76, 14), (76, 19), -- Glaucoma
(77, 7), (77, 13), (77, 14), -- Cataracts
(78, 7), (78, 14), (78, 16), (78, 19), -- Macular Degeneration
(79, 7), (79, 14), (79, 19), -- Diabetic Retinopathy
(80, 7), (80, 14), (80, 19), -- Retinal Detachment
(81, 6), (81, 14), (81, 16), (81, 19), -- Colic
(82, 7), (82, 12), (82, 19), (82, 21), -- Epiglottitis
(83, 7), (83, 9), (83, 14), (83, 19), -- Laryngitis
(84, 6), (84, 14), (84, 19), (84, 20), -- Tonsillitis
(85, 1), (85, 7), (85, 13), (85, 19), -- Pharyngitis
(86, 7), (86, 8), (86, 14), (86, 16), -- Croup
(87, 14), (87, 19), (87, 25), -- Ear Infection
(88, 13), (88, 14), (88, 19), (88, 25), -- Meniere's Disease
(89, 6), (89, 10), (89, 19), (89, 22), -- Vertigo
(90, 6), (90, 13), (90, 14), (90, 19), (90, 27), -- Otitis Media
(91, 7), (91, 14), (91, 19), (91, 25), -- Conjunctivitis
(92, 7), (92, 12), (92, 14), (92, 19), -- Blepharitis
(93, 7), (93, 19), (93, 22), -- Uveitis
(94, 6), (94, 19), (94, 20), (94, 25), -- Chalazion
(95, 10), (95, 16), (95, 19), (95, 22), -- Dry Eye Syndrome
(96, 6), (96, 16), (96, 19), (96, 25), -- Scleritis
(97, 13), (97, 16), (97, 19), (97, 22), -- Keratitis
(98, 14), (98, 16), (98, 19), (98, 25), -- Optic Neuritis
(99, 13), (99, 19), (99, 22), -- Amblyopia
(100, 7), (100, 14), (100, 19), (100, 22); -- Strabismus

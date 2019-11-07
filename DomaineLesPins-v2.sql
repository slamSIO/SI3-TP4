--
-- PostgreSQL database dump
--

-- Dumped from database version 8.4.13
-- Dumped by pg_dump version 9.0.1
-- Started on 2012-10-19 14:50:07

\c dlp2
--
-- TOC entry 1499 (class 1259 OID 16467)
-- Dependencies: 1779 5
-- Name: client; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE client (
    num_client integer NOT NULL,
    nom_client character varying(50),
    prenom_client character varying(50),
    adresse_client character varying(200),
    code_postal_client character(5),
    ville_client character varying(50),
    nb_personnes smallint,
    duree_location smallint,
    date_courrier date,
    montant_accompte numeric(10,0) DEFAULT 0,
    num_emplacement integer NOT NULL,
    type_pension integer,
    num_semaine_arrivee integer
);


ALTER TABLE public.client OWNER TO postgres;

--
-- TOC entry 1497 (class 1259 OID 16398)
-- Dependencies: 5
-- Name: determine; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE determine (
    num_semaine integer NOT NULL,
    num_emplacement integer NOT NULL,
    etat_emplacement character(1)
);


ALTER TABLE public.determine OWNER TO postgres;

--
-- TOC entry 1496 (class 1259 OID 16393)
-- Dependencies: 5
-- Name: emplacement; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE emplacement (
    num_emplacement integer NOT NULL,
    nom_emplacement character(4),
    type_emplacement character varying(50),
    capacite_emplacement smallint,
    prix_emplacement numeric(6,2)
);


ALTER TABLE public.emplacement OWNER TO postgres;

--
-- TOC entry 1498 (class 1259 OID 16445)
-- Dependencies: 1777 1778 5
-- Name: pension; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pension (
    type_pension integer NOT NULL,
    designation_pension character(30) DEFAULT NULL::bpchar,
    prix_pension numeric(5,2) DEFAULT NULL::numeric
);


ALTER TABLE public.pension OWNER TO postgres;

--
-- TOC entry 1795 (class 0 OID 16467)
-- Dependencies: 1499
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO client VALUES (1, 'LAMBERT', 'Jean', '13 avenue du General de Gaulle', '81000', 'CASTRES', 7, 3, '2011-03-21', 0, 6, 1, 1);
INSERT INTO client VALUES (2, 'VENAT', 'Laure', '1 bis rue des Peupliers', '14000', 'CAEN', 4, 1, '2011-03-21', 0, 8, NULL, 1);
INSERT INTO client VALUES (3, 'COUVANT', 'Laurent', '4 avenue KLEBER', '94130', 'NOGENT SUR MARNE', 3, 2, '2011-03-22', 600, 1, 1, 1);
INSERT INTO client VALUES (4, 'HUYS', 'Didier', '20 rue de Niepce', '59000', 'LILLE', 1, 1, '2011-03-22', 250, 41, 2, 1);
INSERT INTO client VALUES (5, 'MOREIRA', 'Pablo', '5 rue Joffre', '14000', 'CAEN', 8, 2, '2011-03-22', 0, 101, NULL, 1);
INSERT INTO client VALUES (6, 'HANOT', 'Sebastien', '31 impasse Miroton', '27000', 'DREUX', 6, 2, '2011-03-23', 0, 102, 2, 1);
INSERT INTO client VALUES (7, 'FONTAINE', 'jean', '43 allee guynemer', '14110', 'CONDE SUR NOIREAU', 6, 2, '2011-03-23', 0, 2, 3, 1);


--
-- TOC entry 1793 (class 0 OID 16398)
-- Dependencies: 1497
-- Data for Name: determine; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO determine VALUES (1, 1, 'R');
INSERT INTO determine VALUES (1, 2, 'R');
INSERT INTO determine VALUES (1, 3, 'L');
INSERT INTO determine VALUES (3, 1, 'L');
INSERT INTO determine VALUES (3, 2, 'L');
INSERT INTO determine VALUES (3, 3, 'L');
INSERT INTO determine VALUES (4, 1, 'L');
INSERT INTO determine VALUES (4, 2, 'L');
INSERT INTO determine VALUES (4, 3, 'L');
INSERT INTO determine VALUES (5, 1, 'L');
INSERT INTO determine VALUES (5, 2, 'L');
INSERT INTO determine VALUES (5, 3, 'L');
INSERT INTO determine VALUES (6, 1, 'A');
INSERT INTO determine VALUES (6, 2, 'A');
INSERT INTO determine VALUES (6, 3, 'A');
INSERT INTO determine VALUES (7, 1, 'L');
INSERT INTO determine VALUES (7, 2, 'L');
INSERT INTO determine VALUES (7, 3, 'L');
INSERT INTO determine VALUES (8, 1, 'A');
INSERT INTO determine VALUES (8, 2, 'L');
INSERT INTO determine VALUES (8, 3, 'L');
INSERT INTO determine VALUES (41, 1, 'R');
INSERT INTO determine VALUES (41, 2, 'L');
INSERT INTO determine VALUES (41, 3, 'L');
INSERT INTO determine VALUES (101, 1, 'A');
INSERT INTO determine VALUES (101, 2, 'A');
INSERT INTO determine VALUES (101, 3, 'L');
INSERT INTO determine VALUES (102, 1, 'A');
INSERT INTO determine VALUES (102, 2, 'A');
INSERT INTO determine VALUES (102, 3, 'L');
INSERT INTO determine VALUES (1, 4, 'R');
INSERT INTO determine VALUES (9, 1, 'R');
INSERT INTO determine VALUES (2, 2, 'A');
INSERT INTO determine VALUES (2, 1, 'A');
INSERT INTO determine VALUES (2, 3, 'L');


--
-- TOC entry 1792 (class 0 OID 16393)
-- Dependencies: 1496
-- Data for Name: emplacement; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO emplacement VALUES (41, 'M1  ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (42, 'M2  ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (43, 'M3  ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (44, 'M4  ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (45, 'M5  ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (46, 'M6  ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (47, 'M7  ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (48, 'M8  ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (49, 'M9  ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (50, 'M10 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (51, 'M11 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (52, 'M12 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (53, 'M13 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (54, 'M14 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (55, 'M15 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (56, 'M16 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (57, 'M17 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (58, 'M18 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (59, 'M19 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (60, 'M20 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (61, 'M21 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (62, 'M22 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (63, 'M23 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (64, 'M24 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (65, 'M25 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (66, 'M26 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (67, 'M27 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (68, 'M28 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (69, 'M29 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (70, 'M30 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (71, 'M31 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (72, 'M32 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (73, 'M33 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (74, 'M34 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (75, 'M35 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (76, 'M36 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (77, 'M37 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (78, 'M38 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (79, 'M39 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (80, 'M40 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (81, 'M41 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (82, 'M42 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (83, 'M43 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (84, 'M44 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (85, 'M45 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (86, 'M46 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (87, 'M47 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (88, 'M48 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (89, 'M49 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (90, 'M50 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (91, 'M51 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (92, 'M52 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (93, 'M53 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (94, 'M54 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (95, 'M55 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (96, 'M56 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (97, 'M57 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (98, 'M58 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (99, 'M59 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (100, 'M60 ', 'Mobil-home', 6, 500.00);
INSERT INTO emplacement VALUES (101, 'M61 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (102, 'M62 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (103, 'M63 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (104, 'M64 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (105, 'M65 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (106, 'M66 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (107, 'M67 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (108, 'M68 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (109, 'M69 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (110, 'M70 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (111, 'M71 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (112, 'M72 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (113, 'M73 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (114, 'M74 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (115, 'M75 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (116, 'M76 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (117, 'M77 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (118, 'M78 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (119, 'M79 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (120, 'M80 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (121, 'M81 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (122, 'M82 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (123, 'M83 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (124, 'M84 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (125, 'M85 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (126, 'M86 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (127, 'M87 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (128, 'M88 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (129, 'M89 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (130, 'M90 ', 'Mobil-home', 8, 700.00);
INSERT INTO emplacement VALUES (131, 'C1  ', 'Caravane', 4, 350.00);
INSERT INTO emplacement VALUES (132, 'C2  ', 'Caravane', 4, 350.00);
INSERT INTO emplacement VALUES (133, 'C3  ', 'Caravane', 4, 350.00);
INSERT INTO emplacement VALUES (134, 'C4  ', 'Caravane', 4, 350.00);
INSERT INTO emplacement VALUES (135, 'C5  ', 'Caravane', 4, 350.00);
INSERT INTO emplacement VALUES (136, 'C6  ', 'Caravane', 4, 350.00);
INSERT INTO emplacement VALUES (137, 'C7  ', 'Caravane', 4, 350.00);
INSERT INTO emplacement VALUES (138, 'C8  ', 'Caravane', 4, 350.00);
INSERT INTO emplacement VALUES (139, 'C9  ', 'Caravane', 4, 350.00);
INSERT INTO emplacement VALUES (140, 'C10 ', 'Caravane', 4, 350.00);
INSERT INTO emplacement VALUES (141, 'C11 ', 'Caravane', 6, 450.00);
INSERT INTO emplacement VALUES (142, 'C12 ', 'Caravane', 6, 450.00);
INSERT INTO emplacement VALUES (143, 'C13 ', 'Caravane', 6, 450.00);
INSERT INTO emplacement VALUES (144, 'C14 ', 'Caravane', 6, 450.00);
INSERT INTO emplacement VALUES (145, 'C15 ', 'Caravane', 6, 450.00);
INSERT INTO emplacement VALUES (146, 'C16 ', 'Caravane', 6, 450.00);
INSERT INTO emplacement VALUES (147, 'C17 ', 'Caravane', 8, 550.00);
INSERT INTO emplacement VALUES (148, 'C18 ', 'Caravane', 8, 550.00);
INSERT INTO emplacement VALUES (149, 'C19 ', 'Caravane', 8, 550.00);
INSERT INTO emplacement VALUES (150, 'C20 ', 'Caravane', 8, 550.00);
INSERT INTO emplacement VALUES (1, 'A01 ', 'Appartement', 4, 550.00);
INSERT INTO emplacement VALUES (2, 'A02 ', 'Appartement', 4, 550.00);
INSERT INTO emplacement VALUES (3, 'A03 ', 'Appartement', 4, 550.00);
INSERT INTO emplacement VALUES (4, 'A04 ', 'Appartement', 4, 550.00);
INSERT INTO emplacement VALUES (5, 'A05 ', 'Appartement', 4, 550.00);
INSERT INTO emplacement VALUES (6, 'A06 ', 'Appartement', 8, 990.00);
INSERT INTO emplacement VALUES (7, 'A07 ', 'Appartement', 8, 990.00);
INSERT INTO emplacement VALUES (8, 'A08 ', 'Appartement', 6, 770.00);
INSERT INTO emplacement VALUES (9, 'A09 ', 'Appartement', 6, 770.00);
INSERT INTO emplacement VALUES (10, 'A010', 'Appartement', 6, 770.00);
INSERT INTO emplacement VALUES (11, 'A011', 'Appartement', 6, 770.00);
INSERT INTO emplacement VALUES (12, 'A012', 'Appartement', 6, 770.00);
INSERT INTO emplacement VALUES (13, 'A013', 'Appartement', 6, 770.00);
INSERT INTO emplacement VALUES (14, 'A014', 'Appartement', 6, 770.00);
INSERT INTO emplacement VALUES (15, 'A015', 'Appartement', 6, 770.00);
INSERT INTO emplacement VALUES (16, 'A11 ', 'Appartement', 4, 550.00);
INSERT INTO emplacement VALUES (17, 'A12 ', 'Appartement', 4, 550.00);
INSERT INTO emplacement VALUES (18, 'A13 ', 'Appartement', 4, 550.00);
INSERT INTO emplacement VALUES (19, 'A14 ', 'Appartement', 4, 550.00);
INSERT INTO emplacement VALUES (20, 'A15 ', 'Appartement', 4, 550.00);
INSERT INTO emplacement VALUES (21, 'A16 ', 'Appartement', 8, 990.00);
INSERT INTO emplacement VALUES (22, 'A17 ', 'Appartement', 8, 990.00);
INSERT INTO emplacement VALUES (23, 'A18 ', 'Appartement', 6, 770.00);
INSERT INTO emplacement VALUES (24, 'A19 ', 'Appartement', 6, 770.00);
INSERT INTO emplacement VALUES (25, 'A110', 'Appartement', 6, 770.00);
INSERT INTO emplacement VALUES (26, 'A111', 'Appartement', 6, 770.00);
INSERT INTO emplacement VALUES (27, 'A112', 'Appartement', 6, 770.00);
INSERT INTO emplacement VALUES (28, 'A113', 'Appartement', 6, 770.00);
INSERT INTO emplacement VALUES (29, 'A114', 'Appartement', 6, 770.00);
INSERT INTO emplacement VALUES (30, 'A115', 'Appartement', 6, 770.00);
INSERT INTO emplacement VALUES (31, 'A21 ', 'Appartement', 4, 660.00);
INSERT INTO emplacement VALUES (32, 'A22 ', 'Appartement', 4, 660.00);
INSERT INTO emplacement VALUES (33, 'A23 ', 'Appartement', 4, 660.00);
INSERT INTO emplacement VALUES (34, 'A24 ', 'Appartement', 4, 660.00);
INSERT INTO emplacement VALUES (35, 'A25 ', 'Appartement', 4, 660.00);
INSERT INTO emplacement VALUES (36, 'A26 ', 'Appartement', 8, 1100.00);
INSERT INTO emplacement VALUES (37, 'A27 ', 'Appartement', 6, 880.00);
INSERT INTO emplacement VALUES (38, 'A28 ', 'Appartement', 6, 880.00);
INSERT INTO emplacement VALUES (39, 'A29 ', 'Appartement', 6, 880.00);
INSERT INTO emplacement VALUES (40, 'A210', 'Appartement', 6, 880.00);


--
-- TOC entry 1794 (class 0 OID 16445)
-- Dependencies: 1498
-- Data for Name: pension; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO pension VALUES (1, 'Pension complete              ', 32.00);
INSERT INTO pension VALUES (2, 'Demi-Pension midi             ', 13.50);
INSERT INTO pension VALUES (3, 'Demi-Pension soir             ', 12.50);


--
-- TOC entry 1787 (class 2606 OID 16451)
-- Dependencies: 1498 1498
-- Name: pension_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pension
    ADD CONSTRAINT pension_pkey PRIMARY KEY (type_pension);


--
-- TOC entry 1789 (class 2606 OID 16472)
-- Dependencies: 1499 1499
-- Name: pk_client; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY client
    ADD CONSTRAINT pk_client PRIMARY KEY (num_client);


--
-- TOC entry 1785 (class 2606 OID 16402)
-- Dependencies: 1497 1497 1497
-- Name: pk_determine; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY determine
    ADD CONSTRAINT pk_determine PRIMARY KEY (num_semaine, num_emplacement);


--
-- TOC entry 1781 (class 2606 OID 16397)
-- Dependencies: 1496 1496
-- Name: pk_emplacement; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY emplacement
    ADD CONSTRAINT pk_emplacement PRIMARY KEY (num_emplacement);


--
-- TOC entry 1782 (class 1259 OID 16404)
-- Dependencies: 1497
-- Name: i_fk_determine_emplacement; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX i_fk_determine_emplacement ON determine USING btree (num_emplacement);


--
-- TOC entry 1783 (class 1259 OID 16403)
-- Dependencies: 1497
-- Name: i_fk_determine_semaine; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX i_fk_determine_semaine ON determine USING btree (num_semaine);


--
-- TOC entry 1791 (class 2606 OID 16473)
-- Dependencies: 1499 1780 1496
-- Name: fk_client2emplacement; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY client
    ADD CONSTRAINT fk_client2emplacement FOREIGN KEY (num_emplacement) REFERENCES emplacement(num_emplacement);


--
-- TOC entry 1790 (class 2606 OID 16410)
-- Dependencies: 1780 1496 1497
-- Name: fk_determine_emplacement; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY determine
    ADD CONSTRAINT fk_determine_emplacement FOREIGN KEY (num_emplacement) REFERENCES emplacement(num_emplacement);




-- Completed on 2012-10-19 14:50:08

--
-- PostgreSQL database dump complete
--


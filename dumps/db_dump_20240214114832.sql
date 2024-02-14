--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6 (Debian 15.6-1.pgdg120+2)
-- Dumped by pg_dump version 15.5 (Debian 15.5-0+deb12u1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cars (
    id integer NOT NULL,
    url text,
    title text,
    price_usd text,
    odometer integer,
    username text,
    phone_number text,
    image_url text,
    images_count integer,
    car_number text,
    car_vin text,
    datetime_found timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.cars OWNER TO postgres;

--
-- Name: cars_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cars_id_seq OWNER TO postgres;

--
-- Name: cars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cars_id_seq OWNED BY public.cars.id;


--
-- Name: cars id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cars ALTER COLUMN id SET DEFAULT nextval('public.cars_id_seq'::regclass);


--
-- Data for Name: cars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cars (id, url, title, price_usd, odometer, username, phone_number, image_url, images_count, car_number, car_vin, datetime_found) FROM stdin;
1	https://auto.ria.com/uk/auto_dodge_durango_36043492.html	 Dodge Durango 2017	17 500 $	225000	 Максим Владимирович	(073) xxx-xx-xx	https://cdn1.riastatic.com/photosnew/auto/photo/dodge_durango__536709566f.webp	81	KA 1417 ET 	1C4RDHAG4HC805855	2024-02-14 11:46:55.986922
2	https://auto.ria.com/uk/auto_peugeot_508_34970735.html	 Peugeot 508 2020	29 900 $	31000	 Игорь	(097) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/peugeot_508__508613883f.webp	32	BI 0508 HH 	VR3F35GXVKY194630	2024-02-14 11:46:56.126286
3	https://auto.ria.com/uk/auto_bmw_x5_36038972.html	 BMW X5 2015	36 499 $	185000	 Iliya Сергеевич Ilinov	(066) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/bmw_x5__536519532f.webp	14	AE 7230 KK 	WBALS010400S33589	2024-02-14 11:46:56.230074
4	https://auto.ria.com/uk/auto_bmw_x5_35899255.html	 BMW X5 2016	32 000 $	238000	Ім’я не вказане	(067) xxx-xx-xx	https://cdn0.riastatic.com/photosnew/auto/photo/bmw_x5__532752070f.webp	16	BI 5075 BO 	WBAKS410X00R91245	2024-02-14 11:46:56.312331
5	https://auto.ria.com/uk/auto_volkswagen_passat_36048440.html	 Volkswagen Passat 2007	5 300 $	316000	 Кирилл Добровольский	(095) xxx-xx-xx	https://cdn0.riastatic.com/photosnew/auto/photo/volkswagen_passat__536839900f.webp	23	AI 3512 EI 	\N	2024-02-14 11:46:56.565091
6	https://auto.ria.com/uk/auto_volkswagen_passat_36042741.html	 Volkswagen Passat 2006	4 700 $	316000	Ім’я не вказане	(098) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_passat__536693303f.webp	16	BX 2835 HI 	WVWZZZ3CZ7E021115	2024-02-14 11:46:56.727326
7	https://auto.ria.com/uk/auto_kia_ev6_35983379.html	 Kia EV6 2023	68 000 $	7000	Ім’я не вказане	(093) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/kia_ev6__535119574f.webp	88	\N	KNAC181ExPAxxxx74	2024-02-14 11:46:57.190679
8	https://auto.ria.com/uk/auto_mercedes_benz_sprinter_36014361.html	 Mercedes-Benz Sprinter 2018	21 800 $	197000	Ref & Bus	(067) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/mercedes-benz_sprinter__535930159f.webp	14	\N	\N	2024-02-14 11:46:57.209366
9	https://auto.ria.com/uk/auto_bmw_x5_35850948.html	 BMW X5 2015	30 900 $	158000	 Евгений Тихий	(098) xxx-xx-xx	https://cdn1.riastatic.com/photosnew/auto/photo/bmw_x5__531510141f.webp	15	KA 0180 CO 	WBALS010x00xxxx61	2024-02-14 11:46:58.520198
10	https://auto.ria.com/uk/auto_honda_ens1_35968962.html	 Honda eNS1 2023	23 200 $	1000	4Колеса Львів	(067) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/honda_ens1__534694552f.webp	29	\N	\N	2024-02-14 11:46:58.695712
11	https://auto.ria.com/uk/auto_honda_ens1_35966213.html	 Honda eNS1 2024	21 488 $	1000	«И-КАР»	(063) xxx-xx-xx	\N	65	\N	\N	2024-02-14 11:46:59.956278
12	https://auto.ria.com/uk/auto_volkswagen_passat_36038481.html	 Volkswagen Passat 2018	15 300 €	203000	IZI AUTO LUTSK	(097) xxx-xx-xx	\N	83	\N	\N	2024-02-14 11:46:59.995356
13	https://auto.ria.com/uk/auto_audi_q7_32733217.html	 Audi Q7 2012	17 400 $	196000	 Andrii	(063) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/audi_q7__536676488f.webp	31	\N	WA1LGAFExCDxxxx29	2024-02-14 11:47:00.012514
14	https://auto.ria.com/uk/auto_honda_ens1_35939625.html	 Honda eNS1 2023	20 000 $	1000	SKM-1 Kiev	(067) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/honda_ens1__533953257f.webp	37	\N	\N	2024-02-14 11:47:00.038687
15	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_36014408.html	 Volkswagen ID.4 Crozz 2023	28 300 $	1000	4Колеса Львів	(067) xxx-xx-xx	https://cdn1.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__535954151f.webp	28	\N	\N	2024-02-14 11:47:00.072885
16	https://auto.ria.com/uk/auto_volkswagen_passat_alltrack_35682264.html	 Volkswagen Passat Alltrack 2019	23 300 $	213000	Ім’я не вказане	(097) xxx-xx-xx	https://cdn0.riastatic.com/photosnew/auto/photo/volkswagen_passat-alltrack__535191100f.webp	55	KA 1579 MC 	WVWZZZ3CxLExxxx42	2024-02-14 11:47:00.174801
17	https://auto.ria.com/uk/auto_volkswagen_passat_35825078.html	 Volkswagen Passat 2012	9 100 $	393000	 Вадим Кириленко	(097) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/volkswagen_passat__530838967f.webp	13	AI 9326 IE 	WVWZZZ3CZDP003597	2024-02-14 11:47:00.196929
18	https://auto.ria.com/uk/auto_audi_sq8_35138974.html	 Audi SQ8 2020	82 500 $	148000	 Дмитро Миколайович	(096) xxx-xx-xx	https://cdn0.riastatic.com/photosnew/auto/photo/audi_sq8__513010945f.webp	68	\N	WAUZZZF14MD004209	2024-02-14 11:47:00.436963
19	https://auto.ria.com/uk/auto_honda_ens1_36038664.html	 Honda eNS1 2023	23 200 $	1000	SKM-1 Kyiv	(067) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/honda_ens1__536595272f.webp	51	\N	\N	2024-02-14 11:47:00.471723
20	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_36015513.html	 Volkswagen ID.4 Crozz 2023	28 750 $	1000	SKM-1 Kyiv	(067) xxx-xx-xx	https://cdn0.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__535987925f.webp	36	\N	\N	2024-02-14 11:47:00.517799
21	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_36015440.html	 Volkswagen ID.4 Crozz 2023	27 500 $	1000	SKM-1 Kyiv	(067) xxx-xx-xx	https://cdn0.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__535985535f.webp	28	\N	\N	2024-02-14 11:47:01.47056
22	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_35975798.html	 Volkswagen ID.4 Crozz 2023	37 950 $	1000	SKM-1 Kiev	(067) xxx-xx-xx	https://cdn0.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__534898305f.webp	31	\N	\N	2024-02-14 11:47:01.488257
23	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_35852534.html	 Volkswagen ID.4 Crozz 2023	37 950 $	1000	SKM-1 Kyiv	(067) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__531548169f.webp	58	\N	\N	2024-02-14 11:47:01.506294
24	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_36020773.html	 Volkswagen ID.4 Crozz 2023	26 500 $	1000	SKM-1 Kyiv	(067) xxx-xx-xx	https://cdn0.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__536129155f.webp	27	\N	\N	2024-02-14 11:47:01.555611
25	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_36015482.html	 Volkswagen ID.4 Crozz 2023	31 300 $	1000	SKM-1 Kyiv	(067) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__535986733f.webp	34	\N	\N	2024-02-14 11:47:01.572552
26	https://auto.ria.com/uk/auto_mercedes_benz_s_class_35867965.html	 Mercedes-Benz S-Class 2016	49 999 $	99000	 Олександр	(050) xxx-xx-xx	https://cdn1.riastatic.com/photosnew/auto/photo/mercedes-benz_s-class__531957546f.webp	12	KA 7700 EO 	WDDUG8FBxGAxxxx11	2024-02-14 11:47:01.589507
27	https://auto.ria.com/uk/auto_bmw_x3_35704403.html	 BMW X3 2019	35 000 $	78000	 Макс	(093) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/bmw_x3__527588717f.webp	26	KA 3938 EH 	WBATR51050LF97370	2024-02-14 11:47:01.627579
28	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_35982520.html	 Volkswagen ID.4 Crozz 2023	28 590 $	1000	ЕлектроКінь	(063) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__535095588f.webp	29	\N	\N	2024-02-14 11:47:01.70443
29	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_35940260.html	 Volkswagen ID.4 Crozz 2023	28 300 $	1000	4Колеса	(067) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__533971868f.webp	33	\N	\N	2024-02-14 11:47:01.723754
30	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_36015653.html	 Volkswagen ID.4 Crozz 2023	28 750 $	1000	SKM-1 Kiev	(067) xxx-xx-xx	https://cdn0.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__535991375f.webp	37	\N	\N	2024-02-14 11:47:01.806475
31	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_36015636.html	 Volkswagen ID.4 Crozz 2023	27 500 $	1000	SKM-1 Kiev	(067) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__535991069f.webp	29	\N	\N	2024-02-14 11:47:03.538501
32	https://auto.ria.com/uk/auto_bmw_x6_36046688.html	 BMW X6 2015	45 500 $	166000	 Олег	(095) xxx-xx-xx	https://cdn1.riastatic.com/photosnew/auto/photo/bmw_x6__536793641f.webp	15	BH 0700 KX 	WBAKV610x00xxxx50	2024-02-14 11:47:03.563111
33	https://auto.ria.com/uk/auto_jcb_8025_35024766.html	 JCB 8025 2016	32 900 €	2000	 Олег	(050) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/jcb_8025__514629273f.webp	11	\N	\N	2024-02-14 11:47:03.576986
34	https://auto.ria.com/uk/auto_mercedes_benz_e_class_35083234.html	 Mercedes-Benz E-Class 2016	39 300 $	84000	 Васильович	(093) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/mercedes-benz_e-class__512832987f.webp	74	AT 6994 HX 	WDD2130331A183925	2024-02-14 11:47:03.637552
35	https://auto.ria.com/uk/auto_tesla_model_y_35644607.html	 Tesla Model Y 2022	42 990 $	11000	 Дмитро Гурак	(050) xxx-xx-xx	\N	27	AA 0696 YB 	7SAYGDEF0NF534243	2024-02-14 11:47:03.703846
36	https://auto.ria.com/uk/auto_triumph_street_twin_35084949.html	 Triumph Street Twin 2019	11 000 $	1000	 Володя	(073) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/triumph_street-twin__511670967f.webp	\N	\N	\N	2024-02-14 11:47:03.737862
37	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_35974113.html	 Volkswagen ID.4 Crozz 2023	37 500 $	1000	SKM-1 Kiev	(067) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__534849964f.webp	58	\N	\N	2024-02-14 11:47:03.786676
38	https://auto.ria.com/uk/auto_volkswagen_touareg_36045329.html	 Volkswagen Touareg 2011	19 955 $	200000	 Юрій	(099) xxx-xx-xx	https://cdn0.riastatic.com/photosnew/auto/photo/volkswagen_touareg__536759190f.webp	126	\N	\N	2024-02-14 11:47:03.808212
39	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_36015607.html	 Volkswagen ID.4 Crozz 2023	27 500 $	1000	SKM-1 Kiev	(067) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__535990338f.webp	35	\N	\N	2024-02-14 11:47:04.045868
40	https://auto.ria.com/uk/auto_mercedes_benz_e_class_35175714.html	 Mercedes-Benz E-Class 2017	27 500 $	91000	 Сергій	(067) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/mercedes-benz_e-class__513703942f.webp	23	BH 6300 PT 	WDDZF4KB4HA198346	2024-02-14 11:47:04.273271
41	https://auto.ria.com/uk/auto_bmw_x6_35709747.html	 BMW X6 2018	54 000 $	78000	 Дмитрий	(067) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/bmw_x6__527737888f.webp	22	AE 7781 II 	WBAKV210300Z84200	2024-02-14 11:47:05.302881
42	https://auto.ria.com/uk/auto_mercedes_benz_cls_class_35987678.html	 Mercedes-Benz CLS-Class 2005	7 700 $	195000	 Ваня Хорошая Цена	(096) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/mercedes-benz_cls-class__535549388f.webp	52	KA 5912 EO 	WDD2193561A033167	2024-02-14 11:47:05.470316
43	https://auto.ria.com/uk/auto_mercedes_benz_gle_class_35833598.html	 Mercedes-Benz GLE-Class 2022	115 900 $	16000	 Мирослава	(099) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/mercedes-benz_gle-class__531058074f.webp	33	AO 2404 HP 	\N	2024-02-14 11:47:05.607666
44	https://auto.ria.com/uk/auto_bmw_3_series_36046033.html	 BMW 3 Series 2015	17 800 $	164000	AutoPlus	(095) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/bmw_3-series__536843398f.webp	101	HH 0000 HH 	WBA3C1C58FP852739	2024-02-14 11:47:05.784302
45	https://auto.ria.com/uk/auto_caterpillar_432_36043268.html	\n            Caterpillar 432 2013        	\n                39 000                    $\n                    	5000	\n                        Олександр                    	(073) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/caterpillar_432__536708512f.webp	\N	\N	\N	2024-02-14 11:47:06.119636
46	https://auto.ria.com/uk/auto_toyota_rav4_36048247.html	 Toyota RAV4 2015	18 000 $	150000	Ім’я не вказане	(063) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/toyota_rav4__536834157f.webp	25	KA 6099 MI 	2T3DFREV5FW292385	2024-02-14 11:47:06.926244
47	https://auto.ria.com/uk/auto_jcb_175_36043306.html	 JCB 175 2006	41 000 $	2000	 Олександр	(073) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/jcb_175__536709543f.webp	15	\N	\N	2024-02-14 11:47:07.090491
48	https://auto.ria.com/uk/auto_mercedes_benz_gle_class_36048677.html	 Mercedes-Benz GLE-Class 2016	44 900 $	82000	Імперія Авто	(093) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/mercedes-benz_gle-class__536845409f.webp	21	KA 1313 BP 	4JGED6EB5GA047046	2024-02-14 11:47:07.285801
49	https://auto.ria.com/uk/auto_kia_opirus_36037416.html	 Kia Opirus 2006	4 900 $	198000	 Артур	(050) xxx-xx-xx	https://cdn1.riastatic.com/photosnew/auto/photo/kia_opirus__536552746f.webp	23	BH 9413 PM 	Y6LLD22436L000012	2024-02-14 11:47:07.510085
50	https://auto.ria.com/uk/auto_renault_megane_35424438.html	 Renault Megane 2014	9 700 $	175000	 Maria Marchuk	(068) xxx-xx-xx	https://cdn0.riastatic.com/photosnew/auto/photo/renault_megane__520119075f.webp	24	AB 5936 KH 	VF1KZ140651714648	2024-02-14 11:47:07.657314
51	https://auto.ria.com/uk/auto_skoda_octavia_35928528.html	 Skoda Octavia 2012	9 800 $	260000	Ім’я не вказане	(067) xxx-xx-xx	https://cdn0.riastatic.com/photosnew/auto/photo/skoda_octavia__533647510f.webp	13	AC 3013 CA 	TMBHE61Z7C2147770	2024-02-14 11:47:08.885503
52	https://auto.ria.com/uk/auto_citroen_berlingo_35844421.html	 Citroen Berlingo 2018	12 300 $	82000	 Дмитро	(097) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/citroen_berlingo__531346494f.webp	28	HK 0239 AB 	VR7EFYHYCJJ853762	2024-02-14 11:47:09.018885
53	https://auto.ria.com/uk/auto_daf_cf_85_36033006.html	 DAF CF 85 2008	28 500 $	650000	 Alex	(067) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/daf_cf-85__536445963f.webp	11	\N	\N	2024-02-14 11:47:09.049226
54	https://auto.ria.com/uk/auto_volkswagen_passat_36042245.html	 Volkswagen Passat 2019	32 999 $	52000	AUTO DVIG	(050) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_passat__536682968f.webp	100	\N	\N	2024-02-14 11:47:09.078514
55	https://auto.ria.com/uk/auto_skoda_octavia_35817793.html	 Skoda Octavia 2019	14 700 $	215000	 Сергій Станіславович	(067) xxx-xx-xx	https://cdn1.riastatic.com/photosnew/auto/photo/skoda_octavia__530664521f.webp	162	\N	TMBJG9NE7K0183019	2024-02-14 11:47:09.350587
56	https://auto.ria.com/uk/auto_bmw_x5_35982367.html	 BMW X5 2012	16 500 $	225000	Bex Auto	(073) xxx-xx-xx	https://cdn1.riastatic.com/photosnew/auto/photo/bmw_x5__535091466f.webp	17	\N	\N	2024-02-14 11:47:09.377161
57	https://auto.ria.com/uk/auto_skoda_octavia_36045306.html	 Skoda Octavia 2020	16 800 €	194000	IZI AUTO LUTSK	(097) xxx-xx-xx	\N	83	\N	\N	2024-02-14 11:47:09.401278
58	https://auto.ria.com/uk/auto_volkswagen_tiguan_36035384.html	 Volkswagen Tiguan 2018	20 500 $	135000	Ім’я не вказане	(097) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/volkswagen_tiguan__536504924f.webp	14	AE 0660 IM 	3VV3B7AX2JM187785	2024-02-14 11:47:09.422426
59	https://auto.ria.com/uk/auto_mercedes_benz_gle_class_35310059.html	 Mercedes-Benz GLE-Class 2018	49 500 $	216000	 Андрій	(050) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/mercedes-benz_gle-class__517173409f.webp	47	CE 0892 EO 	\N	2024-02-14 11:47:09.440556
60	https://auto.ria.com/uk/auto_volkswagen_tiguan_35887197.html	 Volkswagen Tiguan 2018	19 500 $	131000	Александр	(067) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_tiguan__532503048f.webp	12	AI 1797 PP 	3VV0B7AX9KM042151	2024-02-14 11:47:09.464937
\.


--
-- Name: cars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cars_id_seq', 60, true);


--
-- Name: cars cars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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


ALTER SEQUENCE public.cars_id_seq OWNER TO postgres;

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
627	https://auto.ria.com/uk/auto_kia_ev6_35983379.html	 Kia EV6 2023	68 000 $	7000	Ім’я не вказане	(093) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/kia_ev6__535119574f.webp	88	\N	KNAC181ExPAxxxx74	2024-02-14 10:12:40.935705
628	https://auto.ria.com/uk/auto_volkswagen_passat_35825078.html	 Volkswagen Passat 2012	9 100 $	393000	 Вадим Кириленко	(097) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/volkswagen_passat__530838967f.webp	13	AI 9326 IE 	WVWZZZ3CZDP003597	2024-02-14 10:12:41.719078
629	https://auto.ria.com/uk/auto_mercedes_benz_e_class_35083234.html	 Mercedes-Benz E-Class 2016	39 300 $	84000	 Васильович	(093) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/mercedes-benz_e-class__512832987f.webp	74	AT 6994 HX 	WDD2130331A183925	2024-02-14 10:12:46.872427
630	https://auto.ria.com/uk/auto_bmw_x6_36046688.html	 BMW X6 2015	45 500 $	166000	 Олег	(095) xxx-xx-xx	https://cdn1.riastatic.com/photosnew/auto/photo/bmw_x6__536793641f.webp	15	BH 0700 KX 	WBAKV610x00xxxx50	2024-02-14 10:12:47.752332
631	https://auto.ria.com/uk/auto_tesla_model_y_35644607.html	 Tesla Model Y 2022	42 990 $	11000	 Дмитро Гурак	(050) xxx-xx-xx	\N	27	AA 0696 YB 	7SAYGDEF0NF534243	2024-02-14 10:12:48.554007
632	https://auto.ria.com/uk/auto_volkswagen_tiguan_35887197.html	 Volkswagen Tiguan 2018	19 500 $	131000	Александр	(067) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_tiguan__532503048f.webp	12	AI 1797 PP 	3VV0B7AX9KM042151	2024-02-14 10:12:51.803343
633	https://auto.ria.com/uk/auto_bmw_5_series_36002460.html	 BMW 5 Series 2007	8 600 $	266000	 Сергій Ваілд	(098) xxx-xx-xx	https://cdn1.riastatic.com/photosnew/auto/photo/bmw_5-series__535621251f.webp	43	BC 3314 PX 	WBAPX11030CX35484	2024-02-14 10:12:51.818982
634	https://auto.ria.com/uk/auto_tder_fds_30_35868217.html	 Tder FDS 30 2022	25 000 $	1000	 Олексій	(095) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/tder_fds-30__531962824f.webp	11	\N	\N	2024-02-14 10:12:51.834605
635	https://auto.ria.com/uk/auto_bmw_x5_35982367.html	 BMW X5 2012	16 500 $	225000	Bex Auto	(073) xxx-xx-xx	https://cdn1.riastatic.com/photosnew/auto/photo/bmw_x5__535091466f.webp	17	\N	\N	2024-02-14 10:12:51.867062
636	https://auto.ria.com/uk/auto_volkswagen_tiguan_35778886.html	 Volkswagen Tiguan 2018	29 555 $	145000	Freshauto	(063) xxx-xx-xx	\N	42	\N	WVGZZZ5NZKW826624	2024-02-14 10:12:52.008669
637	https://auto.ria.com/uk/auto_skoda_octavia_35817793.html	 Skoda Octavia 2019	14 700 $	215000	 Сергій Станіславович	(067) xxx-xx-xx	https://cdn1.riastatic.com/photosnew/auto/photo/skoda_octavia__530664521f.webp	162	\N	TMBJG9NE7K0183019	2024-02-14 10:12:52.104289
638	https://auto.ria.com/uk/auto_volkswagen_tiguan_36035384.html	 Volkswagen Tiguan 2018	20 500 $	135000	Ім’я не вказане	(097) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/volkswagen_tiguan__536504924f.webp	14	AE 0660 IM 	3VV3B7AX2JM187785	2024-02-14 10:12:52.328562
567	https://auto.ria.com/uk/auto_honda_ens1_35966213.html	 Honda eNS1 2024	21 488 $	1000	«И-КАР»	(063) xxx-xx-xx	\N	65	\N	\N	2024-02-13 21:32:24.382921
568	https://auto.ria.com/uk/auto_mercedes_benz_sprinter_36014361.html	 Mercedes-Benz Sprinter 2018	21 800 $	197000	Ref & Bus	(067) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/mercedes-benz_sprinter__535930159f.webp	14	\N	\N	2024-02-13 21:32:24.413831
569	https://auto.ria.com/uk/auto_honda_ens1_35504770.html	 Honda eNS1 2023	19 188 $	1000	«И-КАР»	(063) xxx-xx-xx	https://cdn1.riastatic.com/photosnew/auto/photo/honda_ens1__535034656f.webp	37	\N	LVHRS185XP5202082	2024-02-13 21:32:24.446905
570	https://auto.ria.com/uk/auto_dodge_durango_36043492.html	 Dodge Durango 2017	17 800 $	225000	 Максим Владимирович	(073) xxx-xx-xx	https://cdn1.riastatic.com/photosnew/auto/photo/dodge_durango__536709566f.webp	81	KA 1417 ET 	1C4RDHAG4HC805855	2024-02-13 21:32:24.476066
571	https://auto.ria.com/uk/auto_bmw_x5_36038972.html	 BMW X5 2015	36 499 $	185000	 Iliya Сергеевич Ilinov	(066) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/bmw_x5__536519532f.webp	14	AE 7230 KK 	WBALS010400S33589	2024-02-13 21:32:24.493336
572	https://auto.ria.com/uk/auto_volkswagen_golf_plus_36033202.html	 Volkswagen Golf Plus 2006	7 100 $	135000	 Сергій Станіславович	(067) xxx-xx-xx	https://cdn1.riastatic.com/photosnew/auto/photo/volkswagen_golf-plus__536447496f.webp	73	\N	WVWZZZ1KZ7W501232	2024-02-13 21:32:24.522534
573	https://auto.ria.com/uk/auto_peugeot_508_34970735.html	 Peugeot 508 2020	29 900 $	31000	 Игорь	(097) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/peugeot_508__508613883f.webp	32	BI 0508 HH 	VR3F35GXVKY194630	2024-02-13 21:32:24.541532
574	https://auto.ria.com/uk/auto_mercedes_benz_s_class_32809052.html	 Mercedes-Benz S-Class 2014	51 000 $	100000	 Миша	(068) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/mercedes-benz_s-class__454335164f.webp	119	BH 0100 BB 	WDDUG7JBxFAxxxx16	2024-02-13 21:32:24.566583
575	https://auto.ria.com/uk/auto_bmw_x5_35850948.html	 BMW X5 2015	30 900 $	158000	 Евгений Тихий	(098) xxx-xx-xx	https://cdn1.riastatic.com/photosnew/auto/photo/bmw_x5__531510141f.webp	15	KA 0180 CO 	WBALS010x00xxxx61	2024-02-13 21:32:24.637138
576	https://auto.ria.com/uk/auto_honda_ens1_35968962.html	 Honda eNS1 2023	23 200 $	1000	4Колеса Львів	(067) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/honda_ens1__534694552f.webp	29	\N	\N	2024-02-13 21:32:24.86164
577	https://auto.ria.com/uk/auto_volkswagen_touareg_36042540.html	 Volkswagen Touareg 2015	24 850 $	246000	 Іван	(097) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/volkswagen_touareg__536688369f.webp	47	AT 2842 IA 	\N	2024-02-13 21:32:25.665878
578	https://auto.ria.com/uk/auto_volkswagen_passat_36018741.html	 Volkswagen Passat 2019	20 900 €	191000	IZI AUTO LUTSK	(097) xxx-xx-xx	\N	81	\N	\N	2024-02-13 21:32:25.720634
579	https://auto.ria.com/uk/auto_volkswagen_passat_36038481.html	 Volkswagen Passat 2018	15 300 €	203000	IZI AUTO LUTSK	(097) xxx-xx-xx	\N	83	\N	\N	2024-02-13 21:32:25.772008
580	https://auto.ria.com/uk/auto_honda_ens1_35893914.html	 Honda eNS1 2023	23 200 $	1000	4Колеса	(067) xxx-xx-xx	https://cdn0.riastatic.com/photosnew/auto/photo/honda_ens1__532690020f.webp	31	\N	\N	2024-02-13 21:32:25.931633
581	https://auto.ria.com/uk/auto_audi_q7_32733217.html	 Audi Q7 2012	17 999 $	196000	 Andrii	(063) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/audi_q7__536676488f.webp	31	\N	WA1LGAFExCDxxxx29	2024-02-13 21:32:25.963303
582	https://auto.ria.com/uk/auto_audi_q7_35692628.html	 Audi Q7 2015	24 700 $	135000	 Александр	(098) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/audi_q7__531897297f.webp	75	CB 7777 HE 	\N	2024-02-13 21:32:25.98384
583	https://auto.ria.com/uk/auto_honda_ens1_35918947.html	 Honda eNS1 2023	23 200 $	1000	4Колеса Київ	(063) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/honda_ens1__533384499f.webp	30	\N	\N	2024-02-13 21:32:26.024497
584	https://auto.ria.com/uk/auto_audi_sq8_35138974.html	 Audi SQ8 2020	82 500 $	148000	 Дмитро Миколайович	(096) xxx-xx-xx	https://cdn0.riastatic.com/photosnew/auto/photo/audi_sq8__513010945f.webp	68	\N	WAUZZZF14MD004209	2024-02-13 21:32:26.118734
585	https://auto.ria.com/uk/auto_honda_ens1_35939625.html	 Honda eNS1 2023	20 000 $	1000	SKM-1 Kiev	(067) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/honda_ens1__533953257f.webp	37	\N	\N	2024-02-13 21:32:26.193544
586	https://auto.ria.com/uk/auto_honda_ens1_36038664.html	 Honda eNS1 2023	23 200 $	1000	SKM-1 Kyiv	(067) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/honda_ens1__536595272f.webp	51	\N	\N	2024-02-13 21:32:26.349527
587	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_36015513.html	 Volkswagen ID.4 Crozz 2023	28 750 $	1000	SKM-1 Kyiv	(067) xxx-xx-xx	https://cdn0.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__535987925f.webp	36	\N	\N	2024-02-13 21:32:28.145217
588	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_35852534.html	 Volkswagen ID.4 Crozz 2023	37 950 $	1000	SKM-1 Kyiv	(067) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__531548169f.webp	58	\N	\N	2024-02-13 21:32:28.179836
589	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_36015440.html	 Volkswagen ID.4 Crozz 2023	27 500 $	1000	SKM-1 Kyiv	(067) xxx-xx-xx	https://cdn0.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__535985535f.webp	28	\N	\N	2024-02-13 21:32:28.28193
590	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_36015653.html	 Volkswagen ID.4 Crozz 2023	28 750 $	1000	SKM-1 Kiev	(067) xxx-xx-xx	https://cdn0.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__535991375f.webp	37	\N	\N	2024-02-13 21:32:28.344032
591	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_36015482.html	 Volkswagen ID.4 Crozz 2023	31 300 $	1000	SKM-1 Kyiv	(067) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__535986733f.webp	34	\N	\N	2024-02-13 21:32:28.392635
592	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_36020773.html	 Volkswagen ID.4 Crozz 2023	26 500 $	1000	SKM-1 Kyiv	(067) xxx-xx-xx	https://cdn0.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__536129155f.webp	27	\N	\N	2024-02-13 21:32:28.635018
593	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_35975798.html	 Volkswagen ID.4 Crozz 2023	37 950 $	1000	SKM-1 Kiev	(067) xxx-xx-xx	https://cdn0.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__534898305f.webp	31	\N	\N	2024-02-13 21:32:28.685603
594	https://auto.ria.com/uk/auto_bmw_x3_35704403.html	 BMW X3 2019	35 000 $	78000	 Макс	(093) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/bmw_x3__527588717f.webp	26	KA 3938 EH 	WBATR51050LF97370	2024-02-13 21:32:28.839617
595	https://auto.ria.com/uk/auto_volkswagen_touareg_36045329.html	 Volkswagen Touareg 2011	19 955 $	200000	 Юрій	(099) xxx-xx-xx	https://cdn0.riastatic.com/photosnew/auto/photo/volkswagen_touareg__536759190f.webp	126	\N	\N	2024-02-13 21:32:28.986676
596	https://auto.ria.com/uk/auto_mercedes_benz_s_class_35867965.html	 Mercedes-Benz S-Class 2016	49 999 $	99000	 Олександр	(050) xxx-xx-xx	https://cdn1.riastatic.com/photosnew/auto/photo/mercedes-benz_s-class__531957546f.webp	12	KA 7700 EO 	WDDUG8FBxGAxxxx11	2024-02-13 21:32:29.590997
597	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_35974113.html	 Volkswagen ID.4 Crozz 2023	37 500 $	1000	SKM-1 Kiev	(067) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__534849964f.webp	58	\N	\N	2024-02-13 21:32:30.670323
598	https://auto.ria.com/uk/auto_bmw_x3_35177838.html	 BMW X3 2018	30 888 $	48000	 Александр	(067) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/bmw_x3__513769484f.webp	29	AE 8880 IC 	WBATR3102JLA52166	2024-02-13 21:32:30.853895
599	https://auto.ria.com/uk/auto_triumph_street_twin_35084949.html	 Triumph Street Twin 2019	11 000 $	1000	 Володя	(073) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/triumph_street-twin__511670967f.webp	\N	\N	\N	2024-02-13 21:32:30.872057
600	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_36015607.html	 Volkswagen ID.4 Crozz 2023	27 500 $	1000	SKM-1 Kiev	(067) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__535990338f.webp	35	\N	\N	2024-02-13 21:32:30.938189
601	https://auto.ria.com/uk/auto_mercedes_benz_e_class_35175714.html	 Mercedes-Benz E-Class 2017	27 500 $	91000	 Сергій	(067) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/mercedes-benz_e-class__513703942f.webp	23	BH 6300 PT 	WDDZF4KB4HA198346	2024-02-13 21:32:31.042249
602	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_35981399.html	 Volkswagen ID.4 Crozz 2023	28 300 $	1000	4Колеса Київ	(063) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__535060117f.webp	34	\N	\N	2024-02-13 21:32:31.193012
603	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_35979119.html	 Volkswagen ID.4 Crozz 2023	28 280 $	1000	Батарейка іК	(063) xxx-xx-xx	https://cdn1.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__534990936f.webp	19	\N	\N	2024-02-13 21:32:31.212302
604	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_36014408.html	 Volkswagen ID.4 Crozz 2023	28 300 $	1000	4Колеса Львів	(067) xxx-xx-xx	https://cdn1.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__535954151f.webp	28	\N	\N	2024-02-13 21:32:31.232018
605	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_36015636.html	 Volkswagen ID.4 Crozz 2023	27 500 $	1000	SKM-1 Kiev	(067) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__535991069f.webp	29	\N	\N	2024-02-13 21:32:31.250927
606	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_35975971.html	 Volkswagen ID.4 Crozz 2023	28 300 $	1000	4Колеса	(067) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__534894613f.webp	33	\N	\N	2024-02-13 21:32:31.29527
607	https://auto.ria.com/uk/auto_jcb_8025_35024766.html	 JCB 8025 2016	32 900 €	2000	 Олег	(050) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/jcb_8025__514629273f.webp	11	\N	\N	2024-02-13 21:32:33.454265
608	https://auto.ria.com/uk/auto_mercedes_benz_gle_class_35833598.html	 Mercedes-Benz GLE-Class 2022	115 900 $	16000	 Мирослава	(099) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/mercedes-benz_gle-class__531058074f.webp	33	AO 2404 HP 	\N	2024-02-13 21:32:33.748522
609	https://auto.ria.com/uk/auto_jcb_175_36043306.html	 JCB 175 2006	44 000 $	2000	 Олександр	(073) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/jcb_175__536709543f.webp	15	\N	\N	2024-02-13 21:32:33.76366
610	https://auto.ria.com/uk/auto_mercedes_benz_e_class_36007050.html	 Mercedes-Benz E-Class 2019	72 000 $	38000	 Алена	(095) xxx-xx-xx	https://cdn1.riastatic.com/photosnew/auto/photo/mercedes-benz_e-class__535750176f.webp	18	KA 5300 IA 	WDD2383611F121027	2024-02-13 21:32:33.843854
611	https://auto.ria.com/uk/auto_audi_a6_36023449.html	 Audi A6 2011	18 200 $	120000	 Тарас	(063) xxx-xx-xx	https://cdn1.riastatic.com/photosnew/auto/photo/audi_a6__536196666f.webp	38	AX 8822 AO 	WAUZZZ4G5BN033636	2024-02-13 21:32:33.876239
612	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_35940260.html	 Volkswagen ID.4 Crozz 2023	28 300 $	1000	4Колеса	(067) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__533971868f.webp	33	\N	\N	2024-02-13 21:32:33.896795
613	https://auto.ria.com/uk/auto_renault_megane_35424438.html	 Renault Megane 2014	9 700 $	175000	 Maria Marchuk	(068) xxx-xx-xx	https://cdn0.riastatic.com/photosnew/auto/photo/renault_megane__520119075f.webp	24	AB 5936 KH 	VF1KZ140651714648	2024-02-13 21:32:34.032531
614	https://auto.ria.com/uk/auto_volkswagen_id_4_crozz_35982520.html	 Volkswagen ID.4 Crozz 2023	28 590 $	1000	ЕлектроКінь	(063) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_id-4-crozz__535095588f.webp	29	\N	\N	2024-02-13 21:32:34.065829
615	https://auto.ria.com/uk/auto_bmw_x6_35709747.html	 BMW X6 2018	54 000 $	78000	 Дмитрий	(067) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/bmw_x6__527737888f.webp	22	AE 7781 II 	WBAKV210300Z84200	2024-02-13 21:32:34.101679
616	https://auto.ria.com/uk/auto_tesla_model_y_36024954.html	 Tesla Model Y 2022	39 999 $	15000	 Юрій	(095) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/tesla_model-y__536237487f.webp	14	BC 2381 YA 	XP7YGCEKxPBxxxx07	2024-02-13 21:32:34.164873
617	https://auto.ria.com/uk/auto_volkswagen_passat_36042245.html	 Volkswagen Passat 2019	32 999 $	52000	AUTO DVIG	(050) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/volkswagen_passat__536682968f.webp	100	\N	\N	2024-02-13 21:32:36.329279
618	https://auto.ria.com/uk/auto_nissan_tiida_36041491.html	 Nissan TIIDA 2008	4 350 $	188000	 Сергей	(095) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/nissan_tiida__536665167f.webp	11	AA 1874 HM 	JN1CC13C28T013846	2024-02-13 21:32:36.404442
619	https://auto.ria.com/uk/auto_mercedes_benz_cls_class_35987678.html	 Mercedes-Benz CLS-Class 2005	7 800 $	195000	 Ваня Хорошая Цена	(096) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/mercedes-benz_cls-class__535549388f.webp	52	KA 5912 EO 	WDD2193561A033167	2024-02-13 21:32:36.432856
620	https://auto.ria.com/uk/auto_bmw_3_series_36046033.html	 BMW 3 Series 2015	17 800 $	164000	AutoPlus	(095) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/bmw_3-series__536775992f.webp	51	HH 0000 HH 	WBA3C1C58FP852739	2024-02-13 21:32:36.456892
621	https://auto.ria.com/uk/auto_renault_megane_36042542.html	 Renault Megane 2014	6 480 $	340000	 Сергей	(095) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/renault_megane__536689847f.webp	26	KA 6298 CB 	VF1KZ0R0250282244	2024-02-13 21:32:36.508689
622	https://auto.ria.com/uk/auto_mercedes_benz_gle_class_35310059.html	 Mercedes-Benz GLE-Class 2018	49 500 $	216000	 Андрій	(050) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/mercedes-benz_gle-class__517173409f.webp	47	CE 0892 EO 	\N	2024-02-13 21:32:36.530973
623	https://auto.ria.com/uk/auto_daf_cf_85_36033006.html	 DAF CF 85 2008	28 500 $	650000	 Alex	(067) xxx-xx-xx	https://cdn3.riastatic.com/photosnew/auto/photo/daf_cf-85__536445963f.webp	11	\N	\N	2024-02-13 21:32:36.700745
624	https://auto.ria.com/uk/auto_citroen_berlingo_35844421.html	 Citroen Berlingo 2018	12 300 $	82000	 Дмитро	(097) xxx-xx-xx	https://cdn4.riastatic.com/photosnew/auto/photo/citroen_berlingo__531346494f.webp	28	HK 0239 AB 	VR7EFYHYCJJ853762	2024-02-13 21:32:36.806046
625	https://auto.ria.com/uk/auto_caterpillar_432_36043268.html	\n            Caterpillar 432 2013        	\n                43 000                    $\n                    	5000	\n                        Олександр                    	(073) xxx-xx-xx	https://cdn2.riastatic.com/photosnew/auto/photo/caterpillar_432__536708512f.webp	\N	\N	\N	2024-02-13 21:32:37.063078
626	https://auto.ria.com/uk/auto_skoda_octavia_35635854.html	 Skoda Octavia 2018	12 999 $	225000	 Саша	(097) xxx-xx-xx	\N	41	\N	\N	2024-02-13 21:32:37.286639
\.


--
-- Name: cars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cars_id_seq', 638, true);


--
-- Name: cars cars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--


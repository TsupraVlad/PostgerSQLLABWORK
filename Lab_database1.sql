--
-- PostgreSQL database dump
--

\restrict Fp7hk5Tic6GKnmCqTdSdyGKlwoaciNl7c8BxeRon5SUlRqrNWM3YGfwN8zbIBID

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-09-22 18:16:52

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 221 (class 1259 OID 16388)
-- Name: Client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Client" (
    "ClientID" integer NOT NULL,
    "Last Name" character varying(15) NOT NULL,
    "First Name" character varying(20) NOT NULL,
    "Email" character varying(50) NOT NULL,
    "Phone Number" character varying(30) NOT NULL
);


ALTER TABLE public."Client" OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16415)
-- Name: Detail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Detail" (
    "DetailID" integer NOT NULL,
    "DatailName" character varying(20) NOT NULL,
    "Price" integer NOT NULL,
    "WarehouseID" integer NOT NULL
);


ALTER TABLE public."Detail" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16398)
-- Name: Order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Order" (
    "OrderID" integer NOT NULL,
    "Status" character varying(15) NOT NULL,
    "DataOrder" date NOT NULL,
    "Data of accept" date NOT NULL,
    "WarehouseID" integer,
    "ClientID" integer NOT NULL
);


ALTER TABLE public."Order" OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16424)
-- Name: Order_Detail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Order_Detail" (
    "Order_OrderID" integer NOT NULL,
    "Detail_DetailID" integer NOT NULL,
    "Count" integer NOT NULL
);


ALTER TABLE public."Order_Detail" OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16408)
-- Name: Warehouse; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Warehouse" (
    "WarehouseID" integer NOT NULL,
    "Address" character varying(100) NOT NULL
);


ALTER TABLE public."Warehouse" OWNER TO postgres;

--
-- TOC entry 5053 (class 0 OID 16388)
-- Dependencies: 221
-- Data for Name: Client; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Client" ("ClientID", "Last Name", "First Name", "Email", "Phone Number") FROM stdin;
1	Tsupra	Vlad	vladtspra@gmail.com	+011121223123
2	Goroshov	Petrenko	gorohov@gmail.com	+1236787543
\.


--
-- TOC entry 5056 (class 0 OID 16415)
-- Dependencies: 224
-- Data for Name: Detail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Detail" ("DetailID", "DatailName", "Price", "WarehouseID") FROM stdin;
1	Wheel	1500	1
2	Car steering wheel	3290	1
\.


--
-- TOC entry 5054 (class 0 OID 16398)
-- Dependencies: 222
-- Data for Name: Order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Order" ("OrderID", "Status", "DataOrder", "Data of accept", "WarehouseID", "ClientID") FROM stdin;
1	Доставлено	2026-09-10	2026-09-22	1	1
2	Доставлено	2026-09-21	2026-09-22	1	2
\.


--
-- TOC entry 5057 (class 0 OID 16424)
-- Dependencies: 225
-- Data for Name: Order_Detail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Order_Detail" ("Order_OrderID", "Detail_DetailID", "Count") FROM stdin;
2	2	5
1	1	2
\.


--
-- TOC entry 5055 (class 0 OID 16408)
-- Dependencies: 223
-- Data for Name: Warehouse; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Warehouse" ("WarehouseID", "Address") FROM stdin;
1	st.Adrenson-25
\.


--
-- TOC entry 4874 (class 2606 OID 16397)
-- Name: Client Client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Client"
    ADD CONSTRAINT "Client_pkey" PRIMARY KEY ("ClientID");


--
-- TOC entry 4880 (class 2606 OID 16423)
-- Name: Detail Detail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Detail"
    ADD CONSTRAINT "Detail_pkey" PRIMARY KEY ("DetailID");


--
-- TOC entry 4876 (class 2606 OID 16407)
-- Name: Order Order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "Order_pkey" PRIMARY KEY ("OrderID");


--
-- TOC entry 4878 (class 2606 OID 16414)
-- Name: Warehouse Warehouse_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Warehouse"
    ADD CONSTRAINT "Warehouse_pkey" PRIMARY KEY ("WarehouseID");


--
-- TOC entry 4891 (class 2606 OID 16440)
-- Name: Detail Detail_WarehouseID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Detail"
    ADD CONSTRAINT "Detail_WarehouseID_fkey" FOREIGN KEY ("WarehouseID") REFERENCES public."Warehouse"("WarehouseID") NOT VALID;


--
-- TOC entry 4892 (class 2606 OID 16465)
-- Name: Detail Detail_WarehouseID_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Detail"
    ADD CONSTRAINT "Detail_WarehouseID_fkey1" FOREIGN KEY ("WarehouseID") REFERENCES public."Warehouse"("WarehouseID") NOT VALID;


--
-- TOC entry 4893 (class 2606 OID 16490)
-- Name: Detail Detail_WarehouseID_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Detail"
    ADD CONSTRAINT "Detail_WarehouseID_fkey2" FOREIGN KEY ("WarehouseID") REFERENCES public."Warehouse"("WarehouseID") NOT VALID;


--
-- TOC entry 4894 (class 2606 OID 16515)
-- Name: Detail Detail_WarehouseID_fkey3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Detail"
    ADD CONSTRAINT "Detail_WarehouseID_fkey3" FOREIGN KEY ("WarehouseID") REFERENCES public."Warehouse"("WarehouseID") NOT VALID;


--
-- TOC entry 4895 (class 2606 OID 16546)
-- Name: Detail Detail_WarehouseID_fkey4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Detail"
    ADD CONSTRAINT "Detail_WarehouseID_fkey4" FOREIGN KEY ("WarehouseID") REFERENCES public."Warehouse"("WarehouseID") NOT VALID;


--
-- TOC entry 4881 (class 2606 OID 16430)
-- Name: Order Order_ClientID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "Order_ClientID_fkey" FOREIGN KEY ("ClientID") REFERENCES public."Client"("ClientID") NOT VALID;


--
-- TOC entry 4882 (class 2606 OID 16455)
-- Name: Order Order_ClientID_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "Order_ClientID_fkey1" FOREIGN KEY ("ClientID") REFERENCES public."Client"("ClientID") NOT VALID;


--
-- TOC entry 4883 (class 2606 OID 16480)
-- Name: Order Order_ClientID_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "Order_ClientID_fkey2" FOREIGN KEY ("ClientID") REFERENCES public."Client"("ClientID") NOT VALID;


--
-- TOC entry 4884 (class 2606 OID 16505)
-- Name: Order Order_ClientID_fkey3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "Order_ClientID_fkey3" FOREIGN KEY ("ClientID") REFERENCES public."Client"("ClientID") NOT VALID;


--
-- TOC entry 4885 (class 2606 OID 16536)
-- Name: Order Order_ClientID_fkey4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "Order_ClientID_fkey4" FOREIGN KEY ("ClientID") REFERENCES public."Client"("ClientID") NOT VALID;


--
-- TOC entry 4896 (class 2606 OID 16450)
-- Name: Order_Detail Order_Detail_Detail_DetailID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_Detail"
    ADD CONSTRAINT "Order_Detail_Detail_DetailID_fkey" FOREIGN KEY ("Detail_DetailID") REFERENCES public."Detail"("DetailID") NOT VALID;


--
-- TOC entry 4897 (class 2606 OID 16475)
-- Name: Order_Detail Order_Detail_Detail_DetailID_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_Detail"
    ADD CONSTRAINT "Order_Detail_Detail_DetailID_fkey1" FOREIGN KEY ("Detail_DetailID") REFERENCES public."Detail"("DetailID") NOT VALID;


--
-- TOC entry 4898 (class 2606 OID 16500)
-- Name: Order_Detail Order_Detail_Detail_DetailID_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_Detail"
    ADD CONSTRAINT "Order_Detail_Detail_DetailID_fkey2" FOREIGN KEY ("Detail_DetailID") REFERENCES public."Detail"("DetailID") NOT VALID;


--
-- TOC entry 4899 (class 2606 OID 16525)
-- Name: Order_Detail Order_Detail_Detail_DetailID_fkey3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_Detail"
    ADD CONSTRAINT "Order_Detail_Detail_DetailID_fkey3" FOREIGN KEY ("Detail_DetailID") REFERENCES public."Detail"("DetailID") NOT VALID;


--
-- TOC entry 4900 (class 2606 OID 16556)
-- Name: Order_Detail Order_Detail_Detail_DetailID_fkey4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_Detail"
    ADD CONSTRAINT "Order_Detail_Detail_DetailID_fkey4" FOREIGN KEY ("Detail_DetailID") REFERENCES public."Detail"("DetailID") NOT VALID;


--
-- TOC entry 4901 (class 2606 OID 16445)
-- Name: Order_Detail Order_Detail_Order_OrderID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_Detail"
    ADD CONSTRAINT "Order_Detail_Order_OrderID_fkey" FOREIGN KEY ("Order_OrderID") REFERENCES public."Order"("OrderID") NOT VALID;


--
-- TOC entry 4902 (class 2606 OID 16470)
-- Name: Order_Detail Order_Detail_Order_OrderID_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_Detail"
    ADD CONSTRAINT "Order_Detail_Order_OrderID_fkey1" FOREIGN KEY ("Order_OrderID") REFERENCES public."Order"("OrderID") NOT VALID;


--
-- TOC entry 4903 (class 2606 OID 16495)
-- Name: Order_Detail Order_Detail_Order_OrderID_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_Detail"
    ADD CONSTRAINT "Order_Detail_Order_OrderID_fkey2" FOREIGN KEY ("Order_OrderID") REFERENCES public."Order"("OrderID") NOT VALID;


--
-- TOC entry 4904 (class 2606 OID 16520)
-- Name: Order_Detail Order_Detail_Order_OrderID_fkey3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_Detail"
    ADD CONSTRAINT "Order_Detail_Order_OrderID_fkey3" FOREIGN KEY ("Order_OrderID") REFERENCES public."Order"("OrderID") NOT VALID;


--
-- TOC entry 4905 (class 2606 OID 16551)
-- Name: Order_Detail Order_Detail_Order_OrderID_fkey4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order_Detail"
    ADD CONSTRAINT "Order_Detail_Order_OrderID_fkey4" FOREIGN KEY ("Order_OrderID") REFERENCES public."Order"("OrderID") NOT VALID;


--
-- TOC entry 4886 (class 2606 OID 16435)
-- Name: Order Order_WarehouseID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "Order_WarehouseID_fkey" FOREIGN KEY ("WarehouseID") REFERENCES public."Warehouse"("WarehouseID") NOT VALID;


--
-- TOC entry 4887 (class 2606 OID 16460)
-- Name: Order Order_WarehouseID_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "Order_WarehouseID_fkey1" FOREIGN KEY ("WarehouseID") REFERENCES public."Warehouse"("WarehouseID") NOT VALID;


--
-- TOC entry 4888 (class 2606 OID 16485)
-- Name: Order Order_WarehouseID_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "Order_WarehouseID_fkey2" FOREIGN KEY ("WarehouseID") REFERENCES public."Warehouse"("WarehouseID") NOT VALID;


--
-- TOC entry 4889 (class 2606 OID 16510)
-- Name: Order Order_WarehouseID_fkey3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "Order_WarehouseID_fkey3" FOREIGN KEY ("WarehouseID") REFERENCES public."Warehouse"("WarehouseID") NOT VALID;


--
-- TOC entry 4890 (class 2606 OID 16541)
-- Name: Order Order_WarehouseID_fkey4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "Order_WarehouseID_fkey4" FOREIGN KEY ("WarehouseID") REFERENCES public."Warehouse"("WarehouseID") NOT VALID;


-- Completed on 2026-09-22 18:16:52

--
-- PostgreSQL database dump complete
--

\unrestrict Fp7hk5Tic6GKnmCqTdSdyGKlwoaciNl7c8BxeRon5SUlRqrNWM3YGfwN8zbIBID


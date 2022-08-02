---
title: "Target Trial: Booster Long-term effectivity against infection and severe cases on Omicron-dominant period in Navarra"
author: "Francisco Sánchez Sáez"
date: "2022-08-03"
output: 
  bookdown::html_document2:
    keep_md: true 
    theme: cerulean
    highlight: breezedark
    css: style.css
    anchor_sections: false
    toc: yes
    toc_float:
      collapsed: yes
      smooth_scroll: yes
      code_folding: show
    toc_depth: 3
bibliography: References.bib
csl: tl.csl
---





#  Introduction

***

The long-term effectivity against infection and severe cases of the booster vaccination is assessed on Omicron-dominant period in Navarra. This has been done following the **Target trial emulation** methodology [@Danaei2013]. The results of infections from January 3 to February 6 are compared with [@Monge2022] and then the period of the study is enlarged in order to assess the long-term effects.

# Comparison

***

<a href="https://www.sciencedirect.com/science/article/pii/S1473309922002924">   Effectiveness of mRNA vaccine boosters against infection with the SARS-CoV-2 omicron (B.1.1.529) variant in Spain: a nationwide cohort study </a>


## Background

The omicron (B.1.1.529) variant of SARS-CoV-2 has increased capacity to elude immunity and cause breakthrough infections. The aim of this study was to estimate **the effectiveness of mRNA-based vaccine boosters (third dose) against infection with the omicron variant by:




## Methods

In this population cohort study, we linked data from three population registries in Navarra (Vaccination Registry, Laboratory Results Registry, and BARDENA-Population registry) to select

  * community-dwelling individuals aged 40 years or older, 
  * who completed their primary vaccine schedule at least 3 months before the start of follow-up, and
  * had not tested positive for SARS-CoV-2 since the start of the pandemic. 
  
On each day between Jan 3, and Feb 6, 2022, we matched:

  * individuals who received a booster mRNA vaccine and controls of the same 
      - Age (5-years group).

- Sex.

- Number of previous negative test (0,1,2,3+).

- Type of primary vaccine (homologous or Janssen).

- Time since complete vaccination.

- Type of booster.

- Basic zone.

- Migrant.

- Flu vaccine (2020).

- Flu vaccine (2021).

- Number of people at home.
      
We estimated risk of laboratory-confirmed SARS-CoV-2 infection using the Kaplan-Meier method and compared groups using risk ratios (RR) and risk differences. Vaccine effectiveness was calculated as one minus RR.
  
## Results

In [1] Overall, the estimated effectiveness from day 7 to 34 after a booster was 51·3% (95% CI 50·2–52·4).


```r
tabla1 <- readRDS(file.path("Resultados", "tabla_1_matching_fcv1.RDS"))

tabla1
```

<table style="color: black; width: auto !important; margin-left: auto; margin-right: auto;border-bottom: 0;" class="table table-striped table-hover table-condensed">
<caption>Baseline characteristics of the matched study population</caption>
 <thead>
  <tr>
   <th style="text-align:center;position: sticky; top:0; background-color: #FFFFFF;font-weight: bold;color: white !important;background-color: dodgerblue !important;vertical-align:middle"> Variable </th>
   <th style="text-align:center;position: sticky; top:0; background-color: #FFFFFF;font-weight: bold;color: white !important;background-color: dodgerblue !important;vertical-align:middle"> No booster group (n = 30962*) </th>
   <th style="text-align:center;position: sticky; top:0; background-color: #FFFFFF;font-weight: bold;color: white !important;background-color: dodgerblue !important;vertical-align:middle"> Booster group (n = 30962) </th>
  </tr>
 </thead>
<tbody>
  <tr grouplength="11"><td colspan="3" style="border-bottom: 1px solid;"><strong>Age group (years), n (%)</strong></td></tr>
<tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> 40-44 </td>
   <td style="text-align:center;"> 6788 (21.9%) </td>
   <td style="text-align:center;"> 6788 (21.9%) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> 45-49 </td>
   <td style="text-align:center;"> 9669 (31.2%) </td>
   <td style="text-align:center;"> 9669 (31.2%) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> 50-54 </td>
   <td style="text-align:center;"> 7985 (25.8%) </td>
   <td style="text-align:center;"> 7985 (25.8%) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> 55-59 </td>
   <td style="text-align:center;"> 6263 (20.2%) </td>
   <td style="text-align:center;"> 6263 (20.2%) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> 60-64 </td>
   <td style="text-align:center;"> 182  (0.6%) </td>
   <td style="text-align:center;"> 182  (0.6%) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> 65-69 </td>
   <td style="text-align:center;"> 39  (0.1%) </td>
   <td style="text-align:center;"> 39  (0.1%) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> 70-74 </td>
   <td style="text-align:center;"> 22  (0.1%) </td>
   <td style="text-align:center;"> 22  (0.1%) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> 75-79 </td>
   <td style="text-align:center;"> 7  (0.0%) </td>
   <td style="text-align:center;"> 7  (0.0%) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> 80-84 </td>
   <td style="text-align:center;"> 0  (0.0%) </td>
   <td style="text-align:center;"> 0  (0.0%) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> 85-89 </td>
   <td style="text-align:center;"> 6  (0.0%) </td>
   <td style="text-align:center;"> 6  (0.0%) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> ≥ 90 </td>
   <td style="text-align:center;"> 1  (0.0%) </td>
   <td style="text-align:center;"> 1  (0.0%) </td>
  </tr>
  <tr grouplength="2"><td colspan="3" style="border-bottom: 1px solid;"><strong>Sex, n (%)</strong></td></tr>
<tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> Men </td>
   <td style="text-align:center;"> 18561 (59.9%) </td>
   <td style="text-align:center;"> 18561 (59.9%) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> Women </td>
   <td style="text-align:center;"> 12401 (40.1%) </td>
   <td style="text-align:center;"> 12401 (40.1%) </td>
  </tr>
  <tr grouplength="4"><td colspan="3" style="border-bottom: 1px solid;"><strong>Number of previous SARS-CoV-2 tests, n (%)</strong></td></tr>
<tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> 0 </td>
   <td style="text-align:center;"> 17139 (55.4%) </td>
   <td style="text-align:center;"> 17139 (55.4%) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> 1 </td>
   <td style="text-align:center;"> 6389 (20.6%) </td>
   <td style="text-align:center;"> 6389 (20.6%) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> 2 </td>
   <td style="text-align:center;"> 3805 (12.3%) </td>
   <td style="text-align:center;"> 3805 (12.3%) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> ≥ 3 </td>
   <td style="text-align:center;"> 3629 (11.7%) </td>
   <td style="text-align:center;"> 3629 (11.7%) </td>
  </tr>
  <tr grouplength="4"><td colspan="3" style="border-bottom: 1px solid;"><strong>Type of previous vaccination, n (%)</strong></td></tr>
<tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> BioNTech/Pfizer </td>
   <td style="text-align:center;"> 27231 (87.9%) </td>
   <td style="text-align:center;"> 27231 (87.9%) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> J&amp;J / Janssen </td>
   <td style="text-align:center;"> 63  (0.2%) </td>
   <td style="text-align:center;"> 63  (0.2%) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> Moderna/Lonza </td>
   <td style="text-align:center;"> 3462 (11.2%) </td>
   <td style="text-align:center;"> 3462 (11.2%) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> Oxford/AstraZeneca </td>
   <td style="text-align:center;"> 206  (0.7%) </td>
   <td style="text-align:center;"> 206  (0.7%) </td>
  </tr>
  <tr grouplength="3"><td colspan="3" style="border-bottom: 1px solid;"><strong>Time since primary vaccine schedule, n (%)</strong></td></tr>
<tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> 91-150 days </td>
   <td style="text-align:center;"> 1  (0.0%) </td>
   <td style="text-align:center;"> 1  (0.0%) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> 151-180 days </td>
   <td style="text-align:center;"> 89  (0.3%) </td>
   <td style="text-align:center;"> 89  (0.3%) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> ≥ 181 days </td>
   <td style="text-align:center;"> 30872 (99.7%) </td>
   <td style="text-align:center;"> 30872 (99.7%) </td>
  </tr>
  <tr grouplength="2"><td colspan="3" style="border-bottom: 1px solid;"><strong>Type of booster, n (%)</strong></td></tr>
<tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> BioNTech/Pfizer </td>
   <td style="text-align:center;"> NA </td>
   <td style="text-align:center;"> 4097 (13.2%) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> Moderna/Lonza </td>
   <td style="text-align:center;"> NA </td>
   <td style="text-align:center;"> 26865 (86.8%) </td>
  </tr>
</tbody>
<tfoot><tr><td style="padding: 0; " colspan="100%">
<span style="font-style: italic;">Note: </span> <sup></sup> NA = not applicable, *21170 unique individuals in the no booster group.</td></tr></tfoot>
</table>


```r
tabla2 <- readRDS(file.path("Resultados", "tabla_2_matching_fcv1.RDS"))

tabla2
```

<table style="color: black; width: auto !important; margin-left: auto; margin-right: auto;border-bottom: 0;" class="table table-striped table-hover table-condensed">
<caption>Estimated effectiveness of an mRNA COVID-19 vaccine booster in individuals* who had completed primary vaccination schedule against COVID-19</caption>
 <thead>
<tr>
<th style="empty-cells: hide;border-bottom:hidden;position: sticky; top:0; background-color: #FFFFFF;" colspan="1"></th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; font-weight: bold; color: white !important;padding-right: 4px; padding-left: 4px; background-color: dodgerblue !important;vertical-align:middleposition: sticky; top:0; background-color: #FFFFFF;" colspan="2"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">No booster group</div></th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; font-weight: bold; color: white !important;padding-right: 4px; padding-left: 4px; background-color: dodgerblue !important;vertical-align:middleposition: sticky; top:0; background-color: #FFFFFF;" colspan="2"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">Booster group</div></th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; font-weight: bold; color: white !important;padding-right: 4px; padding-left: 4px; background-color: dodgerblue !important;vertical-align:middleposition: sticky; top:0; background-color: #FFFFFF;" colspan="1"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">1–risk ratio (95% CI)</div></th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; font-weight: bold; color: white !important;padding-right: 4px; padding-left: 4px; background-color: dodgerblue !important;vertical-align:middleposition: sticky; top:0; background-color: #FFFFFF;" colspan="1"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">Risk difference per 10 000 individuals (95% CI)</div></th>
</tr>
  <tr>
   <th style="text-align:center;position: sticky; top:0; background-color: #FFFFFF;font-weight: bold;color: white !important;background-color: dodgerblue !important;vertical-align:middle">   </th>
   <th style="text-align:center;position: sticky; top:0; background-color: #FFFFFF;font-weight: bold;color: white !important;background-color: dodgerblue !important;vertical-align:middle"> Events </th>
   <th style="text-align:center;position: sticky; top:0; background-color: #FFFFFF;font-weight: bold;color: white !important;background-color: dodgerblue !important;vertical-align:middle"> Risk per 10 000 individuals </th>
   <th style="text-align:center;position: sticky; top:0; background-color: #FFFFFF;font-weight: bold;color: white !important;background-color: dodgerblue !important;vertical-align:middle"> Events </th>
   <th style="text-align:center;position: sticky; top:0; background-color: #FFFFFF;font-weight: bold;color: white !important;background-color: dodgerblue !important;vertical-align:middle"> Risk per 10 000 individuals </th>
   <th style="text-align:center;position: sticky; top:0; background-color: #FFFFFF;font-weight: bold;color: white !important;background-color: dodgerblue !important;vertical-align:middle">   </th>
   <th style="text-align:center;position: sticky; top:0; background-color: #FFFFFF;font-weight: bold;color: white !important;background-color: dodgerblue !important;vertical-align:middle">   </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> Overall </td>
   <td style="text-align:center;"> 959 </td>
   <td style="text-align:center;"> 622 </td>
   <td style="text-align:center;"> 513 </td>
   <td style="text-align:center;"> 331 </td>
   <td style="text-align:center;"> 46.8 % (41.2, 52) </td>
   <td style="text-align:center;"> 292 (248, 337) </td>
  </tr>
  <tr grouplength="2"><td colspan="7" style="border-bottom: 1px solid;"><strong>Age group (years)</strong></td></tr>
<tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> 40-54 </td>
   <td style="text-align:center;"> 850 </td>
   <td style="text-align:center;"> 676 </td>
   <td style="text-align:center;"> 458 </td>
   <td style="text-align:center;"> 363 </td>
   <td style="text-align:center;"> 46.3 % (40.2, 51.9) </td>
   <td style="text-align:center;"> 313 (258, 367) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> ≥ 55 </td>
   <td style="text-align:center;"> 109 </td>
   <td style="text-align:center;"> 376 </td>
   <td style="text-align:center;"> 55 </td>
   <td style="text-align:center;"> 182 </td>
   <td style="text-align:center;"> 51.5 % (35.2, 64.9) </td>
   <td style="text-align:center;"> 194 (121, 279) </td>
  </tr>
  <tr grouplength="2"><td colspan="7" style="border-bottom: 1px solid;"><strong>Sex</strong></td></tr>
<tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> Male </td>
   <td style="text-align:center;"> 544 </td>
   <td style="text-align:center;"> 578 </td>
   <td style="text-align:center;"> 277 </td>
   <td style="text-align:center;"> 294 </td>
   <td style="text-align:center;"> 49.2 % (41.8, 56.1) </td>
   <td style="text-align:center;"> 284 (223, 339) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> Female </td>
   <td style="text-align:center;"> 415 </td>
   <td style="text-align:center;"> 691 </td>
   <td style="text-align:center;"> 236 </td>
   <td style="text-align:center;"> 388 </td>
   <td style="text-align:center;"> 43.9 % (33.8, 51.9) </td>
   <td style="text-align:center;"> 303 (219, 381) </td>
  </tr>
  <tr grouplength="4"><td colspan="7" style="border-bottom: 1px solid;"><strong>Type of previous vaccination</strong></td></tr>
<tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> BioNTech/Pfizer </td>
   <td style="text-align:center;"> 886 </td>
   <td style="text-align:center;"> 642 </td>
   <td style="text-align:center;"> 466 </td>
   <td style="text-align:center;"> 337 </td>
   <td style="text-align:center;"> 47.5 % (41.8, 52.5) </td>
   <td style="text-align:center;"> 305 (255, 353) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> J&amp;J / Janssen </td>
   <td style="text-align:center;"> 2 </td>
   <td style="text-align:center;"> 426 </td>
   <td style="text-align:center;"> 1 </td>
   <td style="text-align:center;"> 189 </td>
   <td style="text-align:center;"> 55.7 % (-Inf, 100) </td>
   <td style="text-align:center;"> 237 (-381, 924) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> Moderna/Lonza </td>
   <td style="text-align:center;"> 68 </td>
   <td style="text-align:center;"> 472 </td>
   <td style="text-align:center;"> 42 </td>
   <td style="text-align:center;"> 278 </td>
   <td style="text-align:center;"> 41.1 % (15.2, 60.1) </td>
   <td style="text-align:center;"> 194 (56, 330) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> Oxford/AstraZeneca </td>
   <td style="text-align:center;"> 3 </td>
   <td style="text-align:center;"> 203 </td>
   <td style="text-align:center;"> 4 </td>
   <td style="text-align:center;"> 267 </td>
   <td style="text-align:center;"> -31.8 % (-Inf, 75.1) </td>
   <td style="text-align:center;"> -65 (-403, 282) </td>
  </tr>
  <tr grouplength="3"><td colspan="7" style="border-bottom: 1px solid;"><strong>Time since vaccination completed</strong></td></tr>
<tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> 91-195 days </td>
   <td style="text-align:center;"> 318 </td>
   <td style="text-align:center;"> 1003 </td>
   <td style="text-align:center;"> 184 </td>
   <td style="text-align:center;"> 581 </td>
   <td style="text-align:center;"> 42 % (31.4, 51.7) </td>
   <td style="text-align:center;"> 422 (288, 552) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> 196-220 days </td>
   <td style="text-align:center;"> 592 </td>
   <td style="text-align:center;"> 556 </td>
   <td style="text-align:center;"> 304 </td>
   <td style="text-align:center;"> 282 </td>
   <td style="text-align:center;"> 49.3 % (41.6, 56.8) </td>
   <td style="text-align:center;"> 274 (220, 335) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> ≥ 221 days </td>
   <td style="text-align:center;"> 45 </td>
   <td style="text-align:center;"> 325 </td>
   <td style="text-align:center;"> 21 </td>
   <td style="text-align:center;"> 153 </td>
   <td style="text-align:center;"> 52.9 % (22.5, 73.1) </td>
   <td style="text-align:center;"> 172 (48, 277) </td>
  </tr>
  <tr grouplength="2"><td colspan="7" style="border-bottom: 1px solid;"><strong>Type of booster</strong></td></tr>
<tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> BioNTech/Pfizer </td>
   <td style="text-align:center;"> 153 </td>
   <td style="text-align:center;"> 718 </td>
   <td style="text-align:center;"> 82 </td>
   <td style="text-align:center;"> 378 </td>
   <td style="text-align:center;"> 47.4 % (32.6, 60.6) </td>
   <td style="text-align:center;"> 341 (206, 479) </td>
  </tr>
  <tr>
   <td style="text-align:center;padding-left: 2em;" indentlevel="1"> Moderna/Lonza </td>
   <td style="text-align:center;"> 806 </td>
   <td style="text-align:center;"> 607 </td>
   <td style="text-align:center;"> 431 </td>
   <td style="text-align:center;"> 323 </td>
   <td style="text-align:center;"> 46.8 % (40.1, 52.5) </td>
   <td style="text-align:center;"> 284 (234, 332) </td>
  </tr>
</tbody>
<tfoot><tr><td style="padding: 0; " colspan="100%">
<span style="font-style: italic;">Note: </span> <sup></sup> Analyses based on 19816 matched pairs who remained under follow-up by day 7 after the booster dose</td></tr></tfoot>
</table>


```r
tabla3 <- readRDS(file.path("Resultados", "tabla_3.RDS"))

tabla3
```

<table style="color: black; width: auto !important; margin-left: auto; margin-right: auto;" class="table table-striped table-hover table-condensed">
<caption>Table 3: Sensitivity analyses of vaccine effectiveness 7–34 days after an mRNA COVID-19 vaccine booster dose</caption>
 <thead>
  <tr>
   <th style="text-align:center;position: sticky; top:0; background-color: #FFFFFF;font-weight: bold;color: white !important;background-color: dodgerblue !important;vertical-align:middle">   </th>
   <th style="text-align:center;position: sticky; top:0; background-color: #FFFFFF;font-weight: bold;color: white !important;background-color: dodgerblue !important;vertical-align:middle"> 1–risk ratio (95% CI) </th>
   <th style="text-align:center;position: sticky; top:0; background-color: #FFFFFF;font-weight: bold;color: white !important;background-color: dodgerblue !important;vertical-align:middle"> Risk difference per 10 000 individuals (95% CI) </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> Main analysis </td>
   <td style="text-align:center;"> 46.8 % (41.5, 51.5) </td>
   <td style="text-align:center;"> 292 (247, 336) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> Restricting to people with ≥ 1
                      negative lab test at enrolment </td>
   <td style="text-align:center;"> 44.8 % (35.9, 52.7) </td>
   <td style="text-align:center;"> 340 (256, 422) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> Restricting to persons with no
                      tests in the 7 days before enrolment </td>
   <td style="text-align:center;"> 48.8 % (42.9, 54.3) </td>
   <td style="text-align:center;"> 304 (256, 356) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> Censoring matched pairs 7 days
                      after the control receives a booster rather than 0 days </td>
   <td style="text-align:center;"> 40.8 % (35.3, 46.6) </td>
   <td style="text-align:center;"> 242 (201, 287) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> subtracting 2 days to the PCR test result
                      rather than the day of the PCR test result </td>
   <td style="text-align:center;"> 46.8 % (39.8, 53.3) </td>
   <td style="text-align:center;"> 245 (196, 292) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> Selecting matched controls without
                      replacement </td>
   <td style="text-align:center;"> 45.1 % (39.1, 51.2) </td>
   <td style="text-align:center;"> 289 (241, 342) </td>
  </tr>
  <tr>
   <td style="text-align:center;"> Exact matching by age (year by year vs 5-year
                      groups) </td>
   <td style="text-align:center;"> 50.6 % (42.3, 57.4) </td>
   <td style="text-align:center;"> 354 (273, 426) </td>
  </tr>
</tbody>
</table>

# References

***

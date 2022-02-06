This repo contains the code and data supporting the paper on the minimum
response rate of polls in the City of Toronto. It is organised as follows:

# Abstract

Polls are a widely used and effective way for administrative divisions to
determine the general opinion of residents and businesses on various topics.
We obtain the polls conducted by the city of Toronto broken down based
on the type of application and analyze it using two graphs and a table.
The data shows a consistent trend for parking-related polls to meet the
required engagement rate, while the opposite is seen for traffic calming
applications. The findings suggest a change in percentage for the number
of returned ballots required for polls regarding traffic calming.

# Scripts

The scripts folder contains 01-data_download.R, the script used 
for downloading the dataset used in this paper. It is recommended
to run this script first before the main paper.Rmd file for reproducibility
purposes.

# Inputs

The inputs folder contains the raw data used in this paper and the relevant
literature cited. The dataset used is named as polls_conducted_by_city.csv.

The literature cited in this paper include:

- Chapter 190 of the City of Toronto By-laws, named 1184_190.pdf

- Development and Reviews of Front Yard Parking Poll Requirements, by the City
of Toronto, named backgroundfile-37202.pdf

- An email sent by Councillor Frances Nunziata from the Toronto City Council
regarding the subject of Polling Requirement for Front Yard Parking,
named backgroundfile-35072.pdf

# Outputs

The outputs folder contains the Rmarkdown file used to construct this paper,
the pdf output of the said Rmarkdown file, and the BibTex file for the
references used in this paper. If you wish to view this paper,
open paper.pdf. If you wish to view the analysis process,
open paper.Rmd.
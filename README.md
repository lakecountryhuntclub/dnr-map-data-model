# Lake Country Hunt Club Pheasant Stocking Properties Data Model

> **Note:** This is a work in progress. The data model is not yet complete.

See the [Changelog](CHANGELOG.md) for changes made over time.

## Overview

This repository contains the data model for the Lake Country Hunt Club Pheasant Stocking Properties.

The data model is defined in [Excel](https://www.microsoft.com/en-us/microsoft-365/excel) and is used to generate
the [GeoJSON](https://geojson.org/) files that in turn can be used by Geographic Information System (GIS) software and
mapping applications.

Another feature of this repository is to perform exploratory data analysis (EDA) on the original data sources to
determine the best way to model the data and deal with any data quality issues.

## Data Sources

The data sources for this project are:

- [Pheasant Stocking Information (wi.gov)](https://apps.dnr.wi.gov/pheasantstocking/Index.aspx)
- [Fields & Forest Lands Interactive Gamebird Hunting Tool (FFLIGHT)](https://dnr.wisconsin.gov/topic/Lands/FFLIGHT)

## Data Model

The data model is defined in [Excel](https://www.microsoft.com/en-us/microsoft-365/excel) and is used to generate
a table-based model with tables for the following:

- **Properties**: Table consisting of detailed information for each Pheasant Stocking Property extracted and conformed
  using the original data sources and further refined during the EDA process.

- **Stocking**: Table consisting of detailed information for each Pheasant Stocking Event extracted and conformed using

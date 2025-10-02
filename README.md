# edu-self-project


## Overview 

In this project, I act as a data analyst for Steam. My goal here was to analyze their existing Steam game data to identify some key factors that contribute to their player reception and commercial success. My insights are intended to provide trends that could be used for Steam's marketing and their content acquisition team to help decide which types of games to promote on their platform.

--

## Data Sources

The dataset used for this analysis is a raw csv file containing thousands of games from the Steam platform. It was sourced from Kaggle - [**https://www.kaggle.com/datasets/nikdavis/steam-store-raw**]

--

## Tools & Methodology

My workflow for this project followed these key steps:

1.   **Data Cleaning & Manipulation:**
     * Utilized **Python** within **Jupyter Notebook** to load the raw data.
     * Performed data cleaning by handling missing values, correcting data types, and creating new columns (review ratios, parsing genres).
2.   **Database Storage & Querying:**
     * Exported the clean data and structured it within a **PostgreSQL** database.
     * Wrote **SQL** queries inside the **DBeaver** database tool to create tables and analytical views, preparing the data for visualization. 
3.   **Data Visualization & Dashboarding:**
     * Connected the PostgreSQL database to **Tableau**.
     * Developed an interactive dashboard to visualize trends in player reviews, genre popularity, and popular developers.

--

## Key Findings & Insights

1. **Untapped Market in Free-to-Play Games**
   * **Observation:** The Free-to-Play genre ranks among the top 3 most popular genres based on the estimated number of owners, demonstrating significant user demand. However, free games constitute only ~10% of the total titles analyzed.
   * This disparity between high demand and low supply highlights an underserved market segment and a potential opportunity for substantial growth.
2. **Action & Adventure Dominate Ownership**
   * **Observation:** '

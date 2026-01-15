# Global Demographics Analysis

A data-driven analysis exploring global fertility decline and demographic shifts, with a focus on the economic implications of aging populations and the effectiveness of pro-natalist policies.

## Project Overview

This project analyzes global demographic trends using World Bank and UN data to examine:
- Global fertility rate patterns and trends
- Rising old-age dependency ratios in developed nations
- The effectiveness (or lack thereof) of pro-natalist spending policies
- Future population projections through demographic pyramids

The analysis is part of a Substack article examining the economic motivations behind pro-natalist policies in developed countries facing demographic crises.

## Key Visualizations

### 1. World Fertility Rate Map (2023)
An interactive choropleth map showing total fertility rates across 265 countries. The color scale emphasizes the 2.1 replacement level threshold, highlighting regions above and below sustainable population growth.

**Key Finding**: South Korea records the world's lowest fertility rate at 0.72, far below the 2.1 replacement level.

### 2. Old-Age Dependency Ratio Timeline (1980-2024)
A line chart tracking the old-age dependency ratio (population 65+/population 15-64) for five countries experiencing rapid demographic aging: Japan, Italy, Germany, South Korea, and Hungary.

**Key Finding**: Japan's ratio has climbed from ~14 (1980) to ~51 (2024), while South Korea shows the steepest acceleration trajectory.

### 3. South Korea Case Study: Spending vs. Results
A detailed chart showing South Korea's fertility rate decline from 1.13 (2006) to 0.72 (2023) despite spending $211 billion on pro-natalist policies over this period.

**Key Finding**: Massive government spending has failed to reverse or even slow fertility decline, raising questions about policy effectiveness.

## Data Sources & Attribution

### Data
- **Fertility Rate & Old-Age Dependency Ratio**: [World Bank Open Data](https://data.worldbank.org/)
  - API: World Bank Indicators Database
  - Coverage: 266 countries, 1960-2023
  - License: Creative Commons Attribution 4.0 (CC BY 4.0)

### Visualizations
- **Population Pyramids**: [PopulationPyramid.net](https://www.populationpyramid.net/)
  - Based on UN World Population Prospects 2024
  - License: Creative Commons Attribution 3.0 IGO (CC BY 3.0 IGO)

## Project Structure
```
global-demographics-analysis/
├── data/
│   ├── raw/                    # Original World Bank CSV files (gitignored)
│   └── processed/              # Cleaned, transformed data
├── notebooks/
│   └── 01_data_preparation.ipynb   # Data acquisition, cleaning, and visualization
├── visualizations/             # Output PNG charts
│   ├── fertility_map_2023.png
│   ├── dependency_ratio_1980_2024.png
│   ├── south_korea_tfr_spending.png
│   ├── population_pyramid_korea_2024.png
│   └── population_pyramid_korea_2050.png
├── .gitignore
└── README.md
```

## Technologies Used

- **Python 3.x**: Core analysis language
- **pandas**: Data manipulation and transformation
- **plotly**: Interactive visualizations and static chart export
- **jupyter**: Notebook environment for exploratory analysis
- **kaleido**: PNG export for Plotly figures

## Installation & Setup
```bash
# Clone the repository
git clone https://github.com/yourusername/global-demographics-analysis.git
cd global-demographics-analysis

# Install required packages
pip install pandas numpy plotly jupyter kaleido

# Launch Jupyter Notebook
jupyter notebook
```

## Reproducing the Analysis

1. Open `notebooks/01_data_preparation.ipynb`
2. Run all cells to:
   - Download World Bank data via API
   - Transform wide-format data to long format
   - Generate all three visualization charts
3. Output charts will be saved to `visualizations/` directory

## Key Insights

- **Global Pattern**: 63 countries (28% of global population) have already peaked in population size
- **Aging Crisis**: Developed nations face rapidly increasing old-age dependency ratios, straining pension and healthcare systems
- **Policy Failure**: Massive pro-natalist spending (South Korea: $211B) has shown minimal impact on reversing fertility decline
- **Future Outlook**: UN projects South Korea's population to decline from 52M (2024) to 22M by 2100

## Portfolio Context

This project demonstrates:
- **Data acquisition** from public APIs (World Bank)
- **Data transformation** techniques (wide-to-long format conversion)
- **Data visualization** with professional-grade charts
- **Analytical thinking** connecting demographic trends to economic policy
- **Academic integrity** with proper attribution and licensing

## License

This project's code and analysis are available under the MIT License. 

Data and visualizations are attributed to their respective sources as documented above and subject to their original licenses.

## Contact

Alp Çakın
alpcakin16@gmail.com
www.linkedin.com/in/alp-cakin 
https://substack.com/@alpcakin

---

*This analysis was created as part of a data journalism project examining the intersection of demographics, economics, and public policy.*
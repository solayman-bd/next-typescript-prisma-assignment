-- CreateTable
CREATE TABLE "news_feed" (
    "id" SERIAL NOT NULL,
    "request_id" INTEGER NOT NULL,
    "companyname" TEXT NOT NULL,
    "url" TEXT NOT NULL,
    "insider" TEXT NOT NULL,
    "outsider" TEXT NOT NULL,
    "ceo" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "date" TEXT NOT NULL,
    "company_rel" INTEGER NOT NULL,
    "insider_rel" INTEGER NOT NULL,
    "outsider_rel" INTEGER NOT NULL,
    "ceo_rel" INTEGER NOT NULL,
    "company_sentiment" DOUBLE PRECISION NOT NULL,
    "insider_sentiment" TEXT,
    "outsider_sentiment" TEXT,
    "ceo_sentiment" TEXT,
    "GHG_emissions_similarity" DOUBLE PRECISION NOT NULL,
    "GHG_emissions_sentiment" TEXT,
    "Air_quality_similarity" DOUBLE PRECISION NOT NULL,
    "Air_quality_sentiment" TEXT,
    "Energy_management_similarity" INTEGER NOT NULL,
    "Energy_management_sentiment" TEXT,
    "Water_wastewater_management_similarity" INTEGER NOT NULL,
    "Water_wastewater_management_sentiment" TEXT,
    "Waste_hazardous_management_similarity" INTEGER NOT NULL,
    "Waste_hazardous_management_sentiment" TEXT,
    "Ecological_impact_similarity" INTEGER NOT NULL,
    "Ecological_impact_sentiment" TEXT,
    "Human_rights_community_similarity" DOUBLE PRECISION NOT NULL,
    "Human_rights_community_sentiment" TEXT,
    "Customer_privacy_similarity" DOUBLE PRECISION NOT NULL,
    "Customer_privacy_sentiment" TEXT,
    "Data_security_similarity" INTEGER NOT NULL,
    "Data_security_sentiment" TEXT,
    "Access_affordability_similarity" DOUBLE PRECISION NOT NULL,
    "Access_affordability_sentiment" TEXT,
    "Product_quality_safety_similarity" INTEGER NOT NULL,
    "Product_quality_safety_sentiment" TEXT,
    "Customer_welfare_similarity" INTEGER NOT NULL,
    "Customer_welfare_sentiment" TEXT,
    "Selling_practices_product_label_similarity" DOUBLE PRECISION NOT NULL,
    "Selling_practices_product_label_sentiment" TEXT,
    "Labor_practices_similarity" DOUBLE PRECISION NOT NULL,
    "Labor_practices_sentiment" TEXT,
    "Modern_slavery_similarity" DOUBLE PRECISION NOT NULL,
    "Modern_slavery_sentiment" TEXT,
    "Employee_health_safety_similarity" INTEGER NOT NULL,
    "Employee_health_safety_sentiment" TEXT,
    "Employee_engagement_diversity_similarity" INTEGER NOT NULL,
    "Employee_engagement_diversity_sentiment" TEXT,
    "Gender_equality_similarity" INTEGER NOT NULL,
    "Gender_equality_sentiment" TEXT,
    "Product_design_lifecycle_similarity" INTEGER NOT NULL,
    "Product_design_lifecycle_sentiment" TEXT,
    "Business_model_resilience_similarity" INTEGER NOT NULL,
    "Business_model_resilience_sentiment" TEXT,
    "Environmental_supply_chain_similarity" DOUBLE PRECISION NOT NULL,
    "Environmental_supply_chain_sentiment" TEXT,
    "Social_supply_chain_similarity" DOUBLE PRECISION NOT NULL,
    "Social_supply_chain_sentiment" TEXT,
    "Materials_sourcing_efficiency_similarity" INTEGER NOT NULL,
    "Materials_sourcing_efficiency_sentiment" TEXT,
    "Physical_impacts_climate_change_similarity" INTEGER NOT NULL,
    "Physical_impacts_climate_change_sentiment" TEXT,
    "Governance_structures_similarity" DOUBLE PRECISION NOT NULL,
    "Governance_structures_sentiment" TEXT,
    "Business_ethics_similarity" INTEGER NOT NULL,
    "Business_ethics_sentiment" TEXT,
    "Competitive_behavior_similarity" INTEGER NOT NULL,
    "Competitive_behavior_sentiment" TEXT,
    "Management_legal_regulatory_similarity" INTEGER NOT NULL,
    "Management_legal_regulatory_sentiment" TEXT,
    "Risk_management_similarity" INTEGER NOT NULL,
    "Risk_management_sentiment" TEXT,
    "Coronavirus_similarity" INTEGER NOT NULL,
    "Coronavirus_sentiment" TEXT,
    "Sustainable_Development_Goal_1_similarity" DOUBLE PRECISION NOT NULL,
    "Sustainable_Development_Goal_1_sentiment" TEXT,
    "Sustainable_Development_Goal_2_similarity" INTEGER NOT NULL,
    "Sustainable_Development_Goal_2_sentiment" TEXT,
    "Sustainable_Development_Goal_3_similarity" INTEGER NOT NULL,
    "Sustainable_Development_Goal_3_sentiment" TEXT,
    "Sustainable_Development_Goal_4_similarity" INTEGER NOT NULL,
    "Sustainable_Development_Goal_4_sentiment" TEXT,
    "Sustainable_Development_Goal_5_similarity" DOUBLE PRECISION NOT NULL,
    "Sustainable_Development_Goal_5_sentiment" TEXT,
    "Sustainable_Development_Goal_6_similarity" INTEGER NOT NULL,
    "Sustainable_Development_Goal_6_sentiment" TEXT,
    "Sustainable_Development_Goal_7_similarity" INTEGER NOT NULL,
    "Sustainable_Development_Goal_7_sentiment" TEXT,
    "Sustainable_Development_Goal_8_similarity" DOUBLE PRECISION NOT NULL,
    "Sustainable_Development_Goal_8_sentiment" TEXT,
    "Sustainable_Development_Goal_9_similarity" DOUBLE PRECISION NOT NULL,
    "Sustainable_Development_Goal_9_sentiment" TEXT,
    "Sustainable_Development_Goal_10_similarity" DOUBLE PRECISION NOT NULL,
    "Sustainable_Development_Goal_10_sentiment" TEXT,
    "Sustainable_Development_Goal_11_similarity" DOUBLE PRECISION NOT NULL,
    "Sustainable_Development_Goal_11_sentiment" TEXT,
    "Sustainable_Development_Goal_12_similarity" DOUBLE PRECISION NOT NULL,
    "Sustainable_Development_Goal_12_sentiment" TEXT,
    "Sustainable_Development_Goal_13_similarity" DOUBLE PRECISION NOT NULL,
    "Sustainable_Development_Goal_13_sentiment" TEXT,
    "Sustainable_Development_Goal_14_similarity" INTEGER NOT NULL,
    "Sustainable_Development_Goal_14_sentiment" TEXT,
    "Sustainable_Development_Goal_15_similarity" DOUBLE PRECISION NOT NULL,
    "Sustainable_Development_Goal_15_sentiment" TEXT,
    "Sustainable_Development_Goal_16_similarity" DOUBLE PRECISION NOT NULL,
    "Sustainable_Development_Goal_16_sentiment" TEXT,
    "Sustainable_Development_Goal_17_similarity" INTEGER NOT NULL,
    "Sustainable_Development_Goal_17_sentiment" TEXT,
    "Controversial_weapons_similarity" INTEGER NOT NULL,
    "Controversial_weapons_sentiment" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "news_feed_pkey" PRIMARY KEY ("id")
);

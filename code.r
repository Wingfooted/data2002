library(tidyverse)
#library(gendercode)
library(janitor)
library(hms)

x = readxl::read_excel("data/DATA2x02_survey_2024_Responses.xlsx")
old_names = colnames(x)
new_names = c(
  "timestamp",
  "target_grade",
  "assignment_preference",
  "trimester_or_semester",
  "age",
  "tendency_yes_or_no",
  "pay_rent",
  "urinal_choice",
  "stall_choice",
  "weetbix_count",
  "weekly_food_spend",
  "living_arrangements",
  "weekly_alcohol",
  "believe_in_aliens",
  "height",
  "commute",
  "daily_anxiety_frequency",
  "weekly_study_hours",
  "work_status",
  "social_media",
  "gender",
  "average_daily_sleep",
  "usual_bedtime",
  "sleep_schedule",
  "sibling_count",
  "allergy_count",
  "diet_style",
  "random_number",
  "favourite_number",
  "favourite_letter",
  "drivers_license",
  "relationship_status",
  "daily_short_video_time",
  "computer_os",
  "steak_preference",
  "dominant_hand",
  "enrolled_unit",
  "weekly_exercise_hours",
  "weekly_paid_work_hours",
  "assignments_on_time",
  "used_r_before",
  "team_role_type",
  "university_year",
  "favourite_anime",
  "fluent_languages",
  "readable_languages",
  "country_of_birth",
  "wam",
  "shoe_size")

 # overwrite the old names with the new names:
colnames(x) = new_names
# combine old and new into a data frame:
name_combo = bind_cols(New = new_names, Old = old_names)
name_combo |> gt::gt()


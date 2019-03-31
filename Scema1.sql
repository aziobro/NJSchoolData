-- ----------------------------------------------------------
-- MDB Tools - A library for reading MS Access database files
-- Copyright (C) 2000-2011 Brian Bruns and others.
-- Files in libmdb are licensed under LGPL and the utilities under
-- the GPL, see COPYING.LIB and COPYING files respectively.
-- Check out http://mdbtools.sourceforge.net
-- ----------------------------------------------------------

SET client_encoding = 'UTF-8';

CREATE TABLE "Header and Contact"
 (
	"COUNTY_CODE"			VARCHAR (510), 
	"COUNTY_NAME"			VARCHAR (510), 
	"DISTRICT_CODE"			VARCHAR (510), 
	"DISTRICT_NAME"			VARCHAR (510), 
	"SCHOOL_CODE"			VARCHAR (510), 
	"SCHOOL_NAME"			VARCHAR (510), 
	"GRADESPAN"			VARCHAR (510), 
	"PRINCIPAL_NAME"			VARCHAR (510), 
	"ADDRESS"			VARCHAR (510), 
	"CITY_STATE_ZIP"			VARCHAR (510), 
	"PHONE"			VARCHAR (510), 
	"EMAIL"			VARCHAR (510), 
	"WEBSITE"			VARCHAR (510), 
	"FACEBOOK"			VARCHAR (510), 
	"TWITTER"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "Header and Contact_COUNTY_CODE_idx" ON "Header and Contact" ("COUNTY_CODE");
CREATE INDEX "Header and Contact_DISTRICT_CODE_idx" ON "Header and Contact" ("DISTRICT_CODE");
CREATE UNIQUE INDEX "Header and Contact_SCHOOL_CODE_idx" ON "Header and Contact" ("SCHOOL_CODE");

CREATE TABLE "EnrollmentTrendsbyGrade"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"GradePK"			VARCHAR (510), 
	"GradeKG"			VARCHAR (510), 
	"Grade01"			VARCHAR (510), 
	"Grade02"			VARCHAR (510), 
	"Grade03"			VARCHAR (510), 
	"Grade04"			VARCHAR (510), 
	"Grade05"			VARCHAR (510), 
	"Grade06"			VARCHAR (510), 
	"Grade07"			VARCHAR (510), 
	"Grade08"			VARCHAR (510), 
	"Grade09"			VARCHAR (510), 
	"Grade10"			VARCHAR (510), 
	"Grade11"			VARCHAR (510), 
	"Grade12"			VARCHAR (510), 
	"Total"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "EnrollmentTrendsbyGrade_CountyCode_idx" ON "EnrollmentTrendsbyGrade" ("CountyCode");
CREATE INDEX "EnrollmentTrendsbyGrade_DistrictCode_idx" ON "EnrollmentTrendsbyGrade" ("DistrictCode");
CREATE INDEX "EnrollmentTrendsbyGrade_SchoolCode_idx" ON "EnrollmentTrendsbyGrade" ("SchoolCode");

CREATE TABLE "EnrollmentTrendsByStudentGroup"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"Female"			VARCHAR (510), 
	"Male"			VARCHAR (510), 
	"Economically Disadvantaged Students"			VARCHAR (510), 
	"Students with Disabilities"			VARCHAR (510), 
	"English Learners"			VARCHAR (510), 
	"Homeless Students"			VARCHAR (510), 
	"Students in Foster Care"			VARCHAR (510), 
	"Military-Connected Students"			VARCHAR (510), 
	"Migrant Students"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "EnrollmentTrendsByStudentGroup_CountyCode_idx" ON "EnrollmentTrendsByStudentGroup" ("CountyCode");
CREATE INDEX "EnrollmentTrendsByStudentGroup_DistrictCode_idx" ON "EnrollmentTrendsByStudentGroup" ("DistrictCode");
CREATE UNIQUE INDEX "EnrollmentTrendsByStudentGroup_SchoolCode_idx" ON "EnrollmentTrendsByStudentGroup" ("SchoolCode");

CREATE TABLE "EnrollmentByRacialEthnicGroup"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"White"			VARCHAR (510), 
	"Hispanic"			VARCHAR (510), 
	"Black or African American"			VARCHAR (510), 
	"Asian"			VARCHAR (510), 
	"Native Hawaiian or Pacific Islander"			VARCHAR (510), 
	"American Indian or Alaska Native"			VARCHAR (510), 
	"Two or More Races"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE UNIQUE INDEX "EnrollmentByRacialEthnicGroup_CountyCode_idx" ON "EnrollmentByRacialEthnicGroup" ("CountyCode");
CREATE INDEX "EnrollmentByRacialEthnicGroup_DistrictCode_idx" ON "EnrollmentByRacialEthnicGroup" ("DistrictCode");
CREATE INDEX "EnrollmentByRacialEthnicGroup_SchoolCode_idx" ON "EnrollmentByRacialEthnicGroup" ("SchoolCode");

CREATE TABLE "PreKAndK-FullDayHalfDay"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"PK_HALF"			VARCHAR (510), 
	"PK_FULL"			VARCHAR (510), 
	"KG_HALF"			VARCHAR (510), 
	"KG_FULL"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "PreKAndK-FullDayHalfDay_CountyCode_idx" ON "PreKAndK-FullDayHalfDay" ("CountyCode");
CREATE INDEX "PreKAndK-FullDayHalfDay_DistrictCode_idx" ON "PreKAndK-FullDayHalfDay" ("DistrictCode");
CREATE INDEX "PreKAndK-FullDayHalfDay_SchoolCode_idx" ON "PreKAndK-FullDayHalfDay" ("SchoolCode");

CREATE TABLE "EnrollmentTrendsFullSharedTime"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"FULL"			VARCHAR (510), 
	"SHARED"			VARCHAR (510), 
	"FTE"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "EnrollmentTrendsFullSharedTime_CountyCode_idx" ON "EnrollmentTrendsFullSharedTime" ("CountyCode");
CREATE INDEX "EnrollmentTrendsFullSharedTime_DistrictCode_idx" ON "EnrollmentTrendsFullSharedTime" ("DistrictCode");
CREATE INDEX "EnrollmentTrendsFullSharedTime_SchoolCode_idx" ON "EnrollmentTrendsFullSharedTime" ("SchoolCode");

CREATE TABLE "EnrollmentByHomeLanguage"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"HomeLanguage"			VARCHAR (510), 
	"%OfStudents"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "EnrollmentByHomeLanguage_CountyCode_idx" ON "EnrollmentByHomeLanguage" ("CountyCode");
CREATE INDEX "EnrollmentByHomeLanguage_DistrictCode_idx" ON "EnrollmentByHomeLanguage" ("DistrictCode");
CREATE INDEX "EnrollmentByHomeLanguage_SchoolCode_idx" ON "EnrollmentByHomeLanguage" ("SchoolCode");

CREATE TABLE "ELALiteracyParticipationPerform"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"StudentGroup"			VARCHAR (510), 
	"Subject"			VARCHAR (510), 
	"ValidScores"			VARCHAR (510), 
	"ParticipationPercent"			VARCHAR (510), 
	"SchoolPerformance"			VARCHAR (510), 
	"DistrictPerformance"			VARCHAR (510), 
	"StatePerformance"			VARCHAR (510), 
	"ProfRateFederalAccountability"			VARCHAR (510), 
	"AnnualTarget"			VARCHAR (510), 
	"MetTarget"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "ELALiteracyParticipationPerform_CountyCode_idx" ON "ELALiteracyParticipationPerform" ("CountyCode");
CREATE INDEX "ELALiteracyParticipationPerform_DistrictCode_idx" ON "ELALiteracyParticipationPerform" ("DistrictCode");
CREATE INDEX "ELALiteracyParticipationPerform_SchoolCode_idx" ON "ELALiteracyParticipationPerform" ("SchoolCode");

CREATE TABLE "MathParticipationPerform"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"StudentGroup"			VARCHAR (510), 
	"Subject"			VARCHAR (510), 
	"ValidScores"			VARCHAR (510), 
	"ParticipationPercent"			VARCHAR (510), 
	"SchoolPerformance"			VARCHAR (510), 
	"DistrictPerformance"			VARCHAR (510), 
	"StatePerformance"			VARCHAR (510), 
	"ProfRateFederalAccountability"			VARCHAR (510), 
	"AnnualTarget"			VARCHAR (510), 
	"MetTarget"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "MathParticipationPerform_CountyCode_idx" ON "MathParticipationPerform" ("CountyCode");
CREATE INDEX "MathParticipationPerform_DistrictCode_idx" ON "MathParticipationPerform" ("DistrictCode");
CREATE INDEX "MathParticipationPerform_SchoolCode_idx" ON "MathParticipationPerform" ("SchoolCode");

CREATE TABLE "ELALiteracyPerformanceByGrade"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"Grade"			VARCHAR (510), 
	"Student Group"			VARCHAR (510), 
	"ValidScores"			VARCHAR (510), 
	"MeanScore"			VARCHAR (510), 
	"DistrictMean"			VARCHAR (510), 
	"LEVEL_1"			VARCHAR (510), 
	"LEVEL_2"			VARCHAR (510), 
	"LEVEL_3"			VARCHAR (510), 
	"LEVEL_4"			VARCHAR (510), 
	"LEVEL_5"			VARCHAR (510), 
	"MetExceed"			VARCHAR (510), 
	"StateMean"			VARCHAR (510), 
	"StateMet_Exceed"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "ELALiteracyPerformanceByGrade_CountyCode_idx" ON "ELALiteracyPerformanceByGrade" ("CountyCode");
CREATE INDEX "ELALiteracyPerformanceByGrade_DistrictCode_idx" ON "ELALiteracyPerformanceByGrade" ("DistrictCode");
CREATE UNIQUE INDEX "ELALiteracyPerformanceByGrade_SchoolCode_idx" ON "ELALiteracyPerformanceByGrade" ("SchoolCode");

CREATE TABLE "MathPerformanceByGradeTest"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"Grade"			VARCHAR (510), 
	"Student Group"			VARCHAR (510), 
	"ValidScores"			VARCHAR (510), 
	"MeanScore"			VARCHAR (510), 
	"DistrictMean"			VARCHAR (510), 
	"LEVEL_1"			VARCHAR (510), 
	"LEVEL_2"			VARCHAR (510), 
	"LEVEL_3"			VARCHAR (510), 
	"LEVEL_4"			VARCHAR (510), 
	"LEVEL_5"			VARCHAR (510), 
	"MetExceed"			VARCHAR (510), 
	"StateMean"			VARCHAR (510), 
	"StateMet_Exceed"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE UNIQUE INDEX "MathPerformanceByGradeTest_CountyCode_idx" ON "MathPerformanceByGradeTest" ("CountyCode");
CREATE INDEX "MathPerformanceByGradeTest_DistrictCode_idx" ON "MathPerformanceByGradeTest" ("DistrictCode");
CREATE UNIQUE INDEX "MathPerformanceByGradeTest_SchoolCode_idx" ON "MathPerformanceByGradeTest" ("SchoolCode");

CREATE TABLE "ELAPerformanceTrends"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"Grade_Subject"			VARCHAR (510), 
	"Subject"			VARCHAR (510), 
	"MetExcExpPerc"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "ELAPerformanceTrends_CountyCode_idx" ON "ELAPerformanceTrends" ("CountyCode");
CREATE INDEX "ELAPerformanceTrends_DistrictCode_idx" ON "ELAPerformanceTrends" ("DistrictCode");
CREATE INDEX "ELAPerformanceTrends_SchoolCode_idx" ON "ELAPerformanceTrends" ("SchoolCode");

CREATE TABLE "MathPerformanceTrends"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"SchoolYear"			VARCHAR (510), 
	"Grade_Subject"			VARCHAR (510), 
	"Subject"			VARCHAR (510), 
	"MetExcExpPerc"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "MathPerformanceTrends_CountyCode_idx" ON "MathPerformanceTrends" ("CountyCode");
CREATE INDEX "MathPerformanceTrends_DistrictCode_idx" ON "MathPerformanceTrends" ("DistrictCode");
CREATE INDEX "MathPerformanceTrends_SchoolCode_idx" ON "MathPerformanceTrends" ("SchoolCode");

CREATE TABLE "AlternateAssessmentParticipatio"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"Grade"			VARCHAR (510), 
	"ELAStudentsTested"			VARCHAR (510), 
	"MathStudentsTested"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "AlternateAssessmentParticipatio_CountyCode_idx" ON "AlternateAssessmentParticipatio" ("CountyCode");
CREATE INDEX "AlternateAssessmentParticipatio_DistrictCode_idx" ON "AlternateAssessmentParticipatio" ("DistrictCode");
CREATE INDEX "AlternateAssessmentParticipatio_SchoolCode_idx" ON "AlternateAssessmentParticipatio" ("SchoolCode");

CREATE TABLE "EnglishLanguageProgress"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"%ExpectedGrowth"			VARCHAR (510), 
	"AnnualTarget"			VARCHAR (510), 
	"MetTarget"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE UNIQUE INDEX "EnglishLanguageProgress_CountyCode_idx" ON "EnglishLanguageProgress" ("CountyCode");
CREATE UNIQUE INDEX "EnglishLanguageProgress_DistrictCode_idx" ON "EnglishLanguageProgress" ("DistrictCode");
CREATE INDEX "EnglishLanguageProgress_SchoolCode_idx" ON "EnglishLanguageProgress" ("SchoolCode");

CREATE TABLE "EnglishLanguageProficiencyTest"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"YearsInDistrict"			VARCHAR (510), 
	"#StudentsTested"			VARCHAR (510), 
	"%StudentsWithOverallScoreBelow45"			VARCHAR (510), 
	"%StudentsWithOverallScoreOf45AndAbove"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "EnglishLanguageProficiencyTest_CountyCode_idx" ON "EnglishLanguageProficiencyTest" ("CountyCode");
CREATE INDEX "EnglishLanguageProficiencyTest_DistrictCode_idx" ON "EnglishLanguageProficiencyTest" ("DistrictCode");
CREATE INDEX "EnglishLanguageProficiencyTest_SchoolCode_idx" ON "EnglishLanguageProficiencyTest" ("SchoolCode");

CREATE TABLE "StudentGrowth"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"StudentGroup"			VARCHAR (510), 
	"Subject"			VARCHAR (510), 
	"SchoolMedian"			VARCHAR (510), 
	"DistrictMedian"			VARCHAR (510), 
	"StateMedian"			VARCHAR (510), 
	"MetTarget"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "StudentGrowth_CountyCode_idx" ON "StudentGrowth" ("CountyCode");
CREATE INDEX "StudentGrowth_DistrictCode_idx" ON "StudentGrowth" ("DistrictCode");
CREATE INDEX "StudentGrowth_SchoolCode_idx" ON "StudentGrowth" ("SchoolCode");

CREATE TABLE "StudentGrowthByPerformLevel"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"ELA/Math"			VARCHAR (510), 
	"PARCC_PerformanceLevel"			VARCHAR (510), 
	"LowGrowth"			VARCHAR (510), 
	"TypicalGrowth"			VARCHAR (510), 
	"HighGrowth"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "StudentGrowthByPerformLevel_CountyCode_idx" ON "StudentGrowthByPerformLevel" ("CountyCode");
CREATE INDEX "StudentGrowthByPerformLevel_DistrictCode_idx" ON "StudentGrowthByPerformLevel" ("DistrictCode");
CREATE UNIQUE INDEX "StudentGrowthByPerformLevel_SchoolCode_idx" ON "StudentGrowthByPerformLevel" ("SchoolCode");

CREATE TABLE "StudentGrowthByGrade"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"ELA/Math"			VARCHAR (510), 
	"Grade"			VARCHAR (510), 
	"mSGP_School"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "StudentGrowthByGrade_CountyCode_idx" ON "StudentGrowthByGrade" ("CountyCode");
CREATE INDEX "StudentGrowthByGrade_DistrictCode_idx" ON "StudentGrowthByGrade" ("DistrictCode");
CREATE INDEX "StudentGrowthByGrade_SchoolCode_idx" ON "StudentGrowthByGrade" ("SchoolCode");

CREATE TABLE "PSAT-SAT-ACTParticipation"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"SAT"			VARCHAR (510), 
	"ACT"			VARCHAR (510), 
	"PSAT"			VARCHAR (510), 
	"STATE_SAT"			VARCHAR (510), 
	"STATE_ACT"			VARCHAR (510), 
	"STATE_PSAT"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "PSAT-SAT-ACTParticipation_CountyCode_idx" ON "PSAT-SAT-ACTParticipation" ("CountyCode");
CREATE INDEX "PSAT-SAT-ACTParticipation_DistrictCode_idx" ON "PSAT-SAT-ACTParticipation" ("DistrictCode");
CREATE INDEX "PSAT-SAT-ACTParticipation_SchoolCode_idx" ON "PSAT-SAT-ACTParticipation" ("SchoolCode");

CREATE TABLE "PSAT-SAT-ACTPerformance"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"Test"			VARCHAR (510), 
	"Subject"			VARCHAR (510), 
	"School_Avg"			VARCHAR (510), 
	"State_avg"			VARCHAR (510), 
	"Benchmark"			VARCHAR (510), 
	"BT_PCT"			VARCHAR (510), 
	"STATE_BT_PCT"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "PSAT-SAT-ACTPerformance_CountyCode_idx" ON "PSAT-SAT-ACTPerformance" ("CountyCode");
CREATE INDEX "PSAT-SAT-ACTPerformance_DistrictCode_idx" ON "PSAT-SAT-ACTPerformance" ("DistrictCode");
CREATE INDEX "PSAT-SAT-ACTPerformance_SchoolCode_idx" ON "PSAT-SAT-ACTPerformance" ("SchoolCode");

CREATE TABLE "APIBCourseworkPartPerf"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"APIB_COURSE_SCHOOL"			VARCHAR (510), 
	"APIB_COURSE_STATE"			VARCHAR (510), 
	"APIB_EXAM_SCHOOL"			VARCHAR (510), 
	"APIB_EXAM_STATE"			VARCHAR (510), 
	"AP3_IB4_SCHOOL"			VARCHAR (510), 
	"AP3_IB4_STATE"			VARCHAR (510), 
	"DUAL_SCHOOL"			VARCHAR (510), 
	"DUAL_STATE"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "APIBCourseworkPartPerf_CountyCode_idx" ON "APIBCourseworkPartPerf" ("CountyCode");
CREATE INDEX "APIBCourseworkPartPerf_DistrictCode_idx" ON "APIBCourseworkPartPerf" ("DistrictCode");
CREATE INDEX "APIBCourseworkPartPerf_SchoolCode_idx" ON "APIBCourseworkPartPerf" ("SchoolCode");

CREATE TABLE "APIBCoursesOffered"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"Course_Name"			VARCHAR (510), 
	"STUDENT_ENROLL_COUNT"			VARCHAR (510), 
	"STUDENT_TESTED_COUNT"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "APIBCoursesOffered_CountyCode_idx" ON "APIBCoursesOffered" ("CountyCode");
CREATE UNIQUE INDEX "APIBCoursesOffered_DistrictCode_idx" ON "APIBCoursesOffered" ("DistrictCode");
CREATE UNIQUE INDEX "APIBCoursesOffered_SchoolCode_idx" ON "APIBCoursesOffered" ("SchoolCode");

CREATE TABLE "CTE_SLEParticipation"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"CTEParticipationSchool"			VARCHAR (510), 
	"CTEParticipationState"			VARCHAR (510), 
	"CTEConcentratorsSchool"			VARCHAR (510), 
	"CTEConcentratorsState"			VARCHAR (510), 
	"SLESchool"			VARCHAR (510), 
	"SLEState"			VARCHAR (510), 
	"IVCSchool"			VARCHAR (510), 
	"IVCState"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "CTE_SLEParticipation_CountyCode_idx" ON "CTE_SLEParticipation" ("CountyCode");
CREATE INDEX "CTE_SLEParticipation_DistrictCode_idx" ON "CTE_SLEParticipation" ("DistrictCode");
CREATE INDEX "CTE_SLEParticipation_SchoolCode_idx" ON "CTE_SLEParticipation" ("SchoolCode");

CREATE TABLE "IndustryValuedCredentialsEarned"
 (
	"County_Code"			VARCHAR (510), 
	"COUNTY_NAME"			VARCHAR (510), 
	"District_Code"			VARCHAR (510), 
	"DISTRICT_NAME"			VARCHAR (510), 
	"School_Code"			VARCHAR (510), 
	"SCHOOL_NAME"			VARCHAR (510), 
	"CareerCluster"			VARCHAR (510), 
	"StudentsEnrolledInProgram"			VARCHAR (510), 
	"AtleastOneCredentialEarned"			VARCHAR (510), 
	"IndustryCredentialsEarned"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "IndustryValuedCredentialsEarned_County_Code_idx" ON "IndustryValuedCredentialsEarned" ("County_Code");
CREATE INDEX "IndustryValuedCredentialsEarned_District_Code_idx" ON "IndustryValuedCredentialsEarned" ("District_Code");
CREATE INDEX "IndustryValuedCredentialsEarned_School_Code_idx" ON "IndustryValuedCredentialsEarned" ("School_Code");

CREATE TABLE "MathCourseParticipation"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"Grade"			VARCHAR (510), 
	"Algebra I"			VARCHAR (510), 
	"Geometry"			VARCHAR (510), 
	"Algebra II"			VARCHAR (510), 
	"Pre_Calculus"			VARCHAR (510), 
	"Calculus"			VARCHAR (510), 
	"Statistics"			VARCHAR (510), 
	"Other Math"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "MathCourseParticipation_CountyCode_idx" ON "MathCourseParticipation" ("CountyCode");
CREATE INDEX "MathCourseParticipation_DistrictCode_idx" ON "MathCourseParticipation" ("DistrictCode");
CREATE INDEX "MathCourseParticipation_SchoolCode_idx" ON "MathCourseParticipation" ("SchoolCode");

CREATE TABLE "ScienceCourseParticipation"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"Grade"			VARCHAR (510), 
	"Biology"			VARCHAR (510), 
	"Chemistry"			VARCHAR (510), 
	"Earth and Space Science"			VARCHAR (510), 
	"Environmental Science"			VARCHAR (510), 
	"Physics"			VARCHAR (510), 
	"Other Science"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "ScienceCourseParticipation_CountyCode_idx" ON "ScienceCourseParticipation" ("CountyCode");
CREATE INDEX "ScienceCourseParticipation_DistrictCode_idx" ON "ScienceCourseParticipation" ("DistrictCode");
CREATE INDEX "ScienceCourseParticipation_SchoolCode_idx" ON "ScienceCourseParticipation" ("SchoolCode");

CREATE TABLE "SocStudiesHistoryCourseParticip"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"Grade"			VARCHAR (510), 
	"World History"			VARCHAR (510), 
	"US History I & II"			VARCHAR (510), 
	"Economics"			VARCHAR (510), 
	"Psychology"			VARCHAR (510), 
	"Sociology"			VARCHAR (510), 
	"Other Social Studies or History"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "SocStudiesHistoryCourseParticip_CountyCode_idx" ON "SocStudiesHistoryCourseParticip" ("CountyCode");
CREATE UNIQUE INDEX "SocStudiesHistoryCourseParticip_DistrictCode_idx" ON "SocStudiesHistoryCourseParticip" ("DistrictCode");
CREATE INDEX "SocStudiesHistoryCourseParticip_SchoolCode_idx" ON "SocStudiesHistoryCourseParticip" ("SchoolCode");

CREATE TABLE "WorldLanguagesCourseParticipati"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"Grade"			VARCHAR (510), 
	"Spanish"			VARCHAR (510), 
	"French"			VARCHAR (510), 
	"Italian"			VARCHAR (510), 
	"Latin"			VARCHAR (510), 
	"German"			VARCHAR (510), 
	"Chinese"			VARCHAR (510), 
	"Other Languages"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "WorldLanguagesCourseParticipati_CountyCode_idx" ON "WorldLanguagesCourseParticipati" ("CountyCode");
CREATE INDEX "WorldLanguagesCourseParticipati_DistrictCode_idx" ON "WorldLanguagesCourseParticipati" ("DistrictCode");
CREATE INDEX "WorldLanguagesCourseParticipati_SchoolCode_idx" ON "WorldLanguagesCourseParticipati" ("SchoolCode");

CREATE TABLE "SealofBiliteracy"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"Language"			VARCHAR (510), 
	"SealsEarned"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "SealofBiliteracy_CountyCode_idx" ON "SealofBiliteracy" ("CountyCode");
CREATE INDEX "SealofBiliteracy_DistrictCode_idx" ON "SealofBiliteracy" ("DistrictCode");
CREATE INDEX "SealofBiliteracy_SchoolCode_idx" ON "SealofBiliteracy" ("SchoolCode");

CREATE TABLE "VisualAndPerformingArts"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"Grades"			VARCHAR (510), 
	"AnyVisualPerfArt_School"			VARCHAR (510), 
	"AnyVisualPerfArt_State"			VARCHAR (510), 
	"Music_School"			VARCHAR (510), 
	"Music_State"			VARCHAR (510), 
	"Dance_School"			VARCHAR (510), 
	"Dance_State"			VARCHAR (510), 
	"Drama_School"			VARCHAR (510), 
	"Drama_State"			VARCHAR (510), 
	"VisArts_School"			VARCHAR (510), 
	"VisArts_State"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "VisualAndPerformingArts_CountyCode_idx" ON "VisualAndPerformingArts" ("CountyCode");
CREATE UNIQUE INDEX "VisualAndPerformingArts_DistrictCode_idx" ON "VisualAndPerformingArts" ("DistrictCode");
CREATE UNIQUE INDEX "VisualAndPerformingArts_SchoolCode_idx" ON "VisualAndPerformingArts" ("SchoolCode");

CREATE TABLE "GraduationRates"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"StudentGroup"			VARCHAR (510), 
	"Class2018_4YR_School"			VARCHAR (510), 
	"Class2018_4YR_State"			VARCHAR (510), 
	"Class2017_5YR_School"			VARCHAR (510), 
	"Class2017_5YR_State"			VARCHAR (510), 
	"Class2017_4YR_School"			VARCHAR (510), 
	"Class2017_4YR_Target"			VARCHAR (510), 
	"Class2017_4YR_MetTarget"			VARCHAR (510), 
	"Class2016_5YR_School"			VARCHAR (510), 
	"Class2016_5YR_Target"			VARCHAR (510), 
	"Class2016_5YR_MetTarget"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "GraduationRates_CountyCode_idx" ON "GraduationRates" ("CountyCode");
CREATE INDEX "GraduationRates_DistrictCode_idx" ON "GraduationRates" ("DistrictCode");
CREATE UNIQUE INDEX "GraduationRates_SchoolCode_idx" ON "GraduationRates" ("SchoolCode");

CREATE TABLE "GraduationPathways"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"ELA/Math"			VARCHAR (510), 
	"PARCCAssessment"			VARCHAR (510), 
	"SubstituteCompetencyTest"			VARCHAR (510), 
	"PortfolioAppeals"			VARCHAR (510), 
	"AlternateReqIEP"			VARCHAR (510), 
	"Unknown"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE UNIQUE INDEX "GraduationPathways_CountyCode_idx" ON "GraduationPathways" ("CountyCode");
CREATE INDEX "GraduationPathways_DistrictCode_idx" ON "GraduationPathways" ("DistrictCode");
CREATE INDEX "GraduationPathways_SchoolCode_idx" ON "GraduationPathways" ("SchoolCode");

CREATE TABLE "GraduationRateTrends"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"CohortYear"			VARCHAR (510), 
	"4YR_Rate"			VARCHAR (510), 
	"5YR_Rate"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "GraduationRateTrends_CountyCode_idx" ON "GraduationRateTrends" ("CountyCode");
CREATE UNIQUE INDEX "GraduationRateTrends_DistrictCode_idx" ON "GraduationRateTrends" ("DistrictCode");
CREATE UNIQUE INDEX "GraduationRateTrends_SchoolCode_idx" ON "GraduationRateTrends" ("SchoolCode");

CREATE TABLE "DropoutRateTrends"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"Dropout_School"			VARCHAR (510), 
	"Dropout_State"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "DropoutRateTrends_CountyCode_idx" ON "DropoutRateTrends" ("CountyCode");
CREATE INDEX "DropoutRateTrends_DistrictCode_idx" ON "DropoutRateTrends" ("DistrictCode");
CREATE INDEX "DropoutRateTrends_SchoolCode_idx" ON "DropoutRateTrends" ("SchoolCode");

CREATE TABLE "PostsecondaryEnrRatesFall"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"StudentGroup"			VARCHAR (510), 
	"EnrolledPercent"			VARCHAR (510), 
	"Enrolled2Yr"			VARCHAR (510), 
	"Enrolled4Yr"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "PostsecondaryEnrRatesFall_CountyCode_idx" ON "PostsecondaryEnrRatesFall" ("CountyCode");
CREATE INDEX "PostsecondaryEnrRatesFall_DistrictCode_idx" ON "PostsecondaryEnrRatesFall" ("DistrictCode");
CREATE INDEX "PostsecondaryEnrRatesFall_SchoolCode_idx" ON "PostsecondaryEnrRatesFall" ("SchoolCode");

CREATE TABLE "PostsecondaryEnrRates16mos"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"StudentGroup"			VARCHAR (510), 
	"EnrolledPercent"			VARCHAR (510), 
	"Enrolled2Yr"			VARCHAR (510), 
	"Enrolled4Yr"			VARCHAR (510), 
	"EnrolledPublic"			VARCHAR (510), 
	"EnrolledPrivate"			VARCHAR (510), 
	"EnrolledInState"			VARCHAR (510), 
	"EnrolledOutState"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "PostsecondaryEnrRates16mos_CountyCode_idx" ON "PostsecondaryEnrRates16mos" ("CountyCode");
CREATE INDEX "PostsecondaryEnrRates16mos_DistrictCode_idx" ON "PostsecondaryEnrRates16mos" ("DistrictCode");
CREATE INDEX "PostsecondaryEnrRates16mos_SchoolCode_idx" ON "PostsecondaryEnrRates16mos" ("SchoolCode");

CREATE TABLE "ChronicAbsenteeism"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"StudentGroup"			VARCHAR (510), 
	"Chronic_Abs_Count"			VARCHAR (510), 
	"Chronic_Abs_Pct"			VARCHAR (510), 
	"Target"			VARCHAR (510), 
	"MetTarget"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE UNIQUE INDEX "ChronicAbsenteeism_CountyCode_idx" ON "ChronicAbsenteeism" ("CountyCode");
CREATE INDEX "ChronicAbsenteeism_DistrictCode_idx" ON "ChronicAbsenteeism" ("DistrictCode");
CREATE INDEX "ChronicAbsenteeism_SchoolCode_idx" ON "ChronicAbsenteeism" ("SchoolCode");

CREATE TABLE "DaysAbsent"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"Abs_0"			VARCHAR (510), 
	"Abs_1-5"			VARCHAR (510), 
	"Abs_6-10"			VARCHAR (510), 
	"Abs_11-15"			VARCHAR (510), 
	"Abs_over15"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "DaysAbsent_CountyCode_idx" ON "DaysAbsent" ("CountyCode");
CREATE UNIQUE INDEX "DaysAbsent_DistrictCode_idx" ON "DaysAbsent" ("DistrictCode");
CREATE INDEX "DaysAbsent_SchoolCode_idx" ON "DaysAbsent" ("SchoolCode");

CREATE TABLE "ChronicAbsByGrade"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"Grade"			VARCHAR (510), 
	"SchoolPercent"			VARCHAR (510), 
	"StatePercent"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "ChronicAbsByGrade_CountyCode_idx" ON "ChronicAbsByGrade" ("CountyCode");
CREATE INDEX "ChronicAbsByGrade_DistrictCode_idx" ON "ChronicAbsByGrade" ("DistrictCode");
CREATE UNIQUE INDEX "ChronicAbsByGrade_SchoolCode_idx" ON "ChronicAbsByGrade" ("SchoolCode");

CREATE TABLE "ViolenceVandalismHIBSubstanceOf"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"Violence"			VARCHAR (510), 
	"Weapons"			VARCHAR (510), 
	"Vandalism"			VARCHAR (510), 
	"Substances"			VARCHAR (510), 
	"Harassment, Intimidation, Bullying (HIB)"			VARCHAR (510), 
	"Total Unique Incidents"			VARCHAR (510), 
	"Incidents Per 100 Students Enrolled"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "ViolenceVandalismHIBSubstanceOf_CountyCode_idx" ON "ViolenceVandalismHIBSubstanceOf" ("CountyCode");
CREATE UNIQUE INDEX "ViolenceVandalismHIBSubstanceOf_DistrictCode_idx" ON "ViolenceVandalismHIBSubstanceOf" ("DistrictCode");
CREATE INDEX "ViolenceVandalismHIBSubstanceOf_SchoolCode_idx" ON "ViolenceVandalismHIBSubstanceOf" ("SchoolCode");

CREATE TABLE "PoliceNotifications"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"Violence"			VARCHAR (510), 
	"Weapons"			VARCHAR (510), 
	"Vandalism"			VARCHAR (510), 
	"Substances"			VARCHAR (510), 
	"Harassment, Intimidation, Bullying (HIB)"			VARCHAR (510), 
	"Other Incidents"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "PoliceNotifications_CountyCode_idx" ON "PoliceNotifications" ("CountyCode");
CREATE INDEX "PoliceNotifications_DistrictCode_idx" ON "PoliceNotifications" ("DistrictCode");
CREATE INDEX "PoliceNotifications_SchoolCode_idx" ON "PoliceNotifications" ("SchoolCode");

CREATE TABLE "HIBInvestigations"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"HIBNature"			VARCHAR (510), 
	"HIBAlleged"			VARCHAR (510), 
	"HIBConfirmed"			VARCHAR (510), 
	"TotalHIBInvestigations"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "HIBInvestigations_CountyCode_idx" ON "HIBInvestigations" ("CountyCode");
CREATE INDEX "HIBInvestigations_DistrictCode_idx" ON "HIBInvestigations" ("DistrictCode");
CREATE INDEX "HIBInvestigations_SchoolCode_idx" ON "HIBInvestigations" ("SchoolCode");

CREATE TABLE "DisciplinaryRemovals"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"InSchool_Count"			VARCHAR (510), 
	"InSchool_Pct"			VARCHAR (510), 
	"OutofSchool_Count"			VARCHAR (510), 
	"OutofSchool_Pct"			VARCHAR (510), 
	"AnySusp_Count"			VARCHAR (510), 
	"AnySusp_Pct"			VARCHAR (510), 
	"Removal_Count"			VARCHAR (510), 
	"Removal_Pct"			VARCHAR (510), 
	"Expulsion_Count"			VARCHAR (510), 
	"Expulsion_Pct"			VARCHAR (510), 
	"Arrest_Count"			VARCHAR (510), 
	"Arrest_Pct"			VARCHAR (510), 
	"SchoolDaysMissed_OSS"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE UNIQUE INDEX "DisciplinaryRemovals_CountyCode_idx" ON "DisciplinaryRemovals" ("CountyCode");
CREATE INDEX "DisciplinaryRemovals_DistrictCode_idx" ON "DisciplinaryRemovals" ("DistrictCode");
CREATE UNIQUE INDEX "DisciplinaryRemovals_SchoolCode_idx" ON "DisciplinaryRemovals" ("SchoolCode");

CREATE TABLE "SchoolDay"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"TypicalStartTime"			VARCHAR (510), 
	"TypicalEndTime"			VARCHAR (510), 
	"LengthOfDay"			VARCHAR (510), 
	"InstructionFullTime"			VARCHAR (510), 
	"InstructionSharedTime"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "SchoolDay_CountyCode_idx" ON "SchoolDay" ("CountyCode");
CREATE INDEX "SchoolDay_DistrictCode_idx" ON "SchoolDay" ("DistrictCode");
CREATE INDEX "SchoolDay_SchoolCode_idx" ON "SchoolDay" ("SchoolCode");

CREATE TABLE "DeviceRatios"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"StudentDeviceRatio"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "DeviceRatios_CountyCode_idx" ON "DeviceRatios" ("CountyCode");
CREATE INDEX "DeviceRatios_DistrictCode_idx" ON "DeviceRatios" ("DistrictCode");
CREATE INDEX "DeviceRatios_SchoolCode_idx" ON "DeviceRatios" ("SchoolCode");

CREATE TABLE "PerPupilExpenditures"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"Federal"			VARCHAR (510), 
	"StateLocal"			VARCHAR (510), 
	"Total"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "PerPupilExpenditures_CountyCode_idx" ON "PerPupilExpenditures" ("CountyCode");
CREATE INDEX "PerPupilExpenditures_DistrictCode_idx" ON "PerPupilExpenditures" ("DistrictCode");

CREATE TABLE "TeachersExperienceCertification"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"TeacherCount_School"			VARCHAR (510), 
	"TeacherCount_State"			VARCHAR (510), 
	"TeacherAvgYearsExp_School"			VARCHAR (510), 
	"TeacherAvgYearsExp_State"			VARCHAR (510), 
	"TeacherAvgYearsExpInDistrict_School"			VARCHAR (510), 
	"TeacherAvgYearsExpInDistrict_State"			VARCHAR (510), 
	"TeacherInDistrict4YearsOrMore_School"			VARCHAR (510), 
	"TeacherInDistrict4YearsOrMore_State"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "TeachersExperienceCertification_CountyCode_idx" ON "TeachersExperienceCertification" ("CountyCode");
CREATE INDEX "TeachersExperienceCertification_DistrictCode_idx" ON "TeachersExperienceCertification" ("DistrictCode");
CREATE INDEX "TeachersExperienceCertification_SchoolCode_idx" ON "TeachersExperienceCertification" ("SchoolCode");

CREATE TABLE "AdministratorsExperience"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"AdminCount_District"			VARCHAR (510), 
	"AdminCount_State"			VARCHAR (510), 
	"AdminAvgYearsExp_District"			VARCHAR (510), 
	"AdminAvgYearsExp_State"			VARCHAR (510), 
	"AdminAvgYearsExpInDistrict_District"			VARCHAR (510), 
	"AdminAvgYearsExpInDistrict_State"			VARCHAR (510), 
	"AdminInDistrict4YearsOrMore_District"			VARCHAR (510), 
	"AdminInDistrict4YearsOrMore_State"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "AdministratorsExperience_CountyCode_idx" ON "AdministratorsExperience" ("CountyCode");
CREATE INDEX "AdministratorsExperience_DistrictCode_idx" ON "AdministratorsExperience" ("DistrictCode");

CREATE TABLE "StudentToStaffRatios"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"Student_Teacher_School"			VARCHAR (510), 
	"Student_Teacher_District"			VARCHAR (510), 
	"Student_Admin_School"			VARCHAR (510), 
	"Student_Admin_District"			VARCHAR (510), 
	"Teacher_Admin_School"			VARCHAR (510), 
	"Teacher_Admin_District"			VARCHAR (510), 
	"Student_Librarian_District"			VARCHAR (510), 
	"Student_Nurse_District"			VARCHAR (510), 
	"Student_Counselor_District"			VARCHAR (510), 
	"Student_ChildStudy_District"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "StudentToStaffRatios_CountyCode_idx" ON "StudentToStaffRatios" ("CountyCode");
CREATE INDEX "StudentToStaffRatios_DistrictCode_idx" ON "StudentToStaffRatios" ("DistrictCode");
CREATE INDEX "StudentToStaffRatios_SchoolCode_idx" ON "StudentToStaffRatios" ("SchoolCode");

CREATE TABLE "TeachersAdminsLevelOfEducation"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"Teachers/Admins"			VARCHAR (510), 
	"Bachelors"			VARCHAR (510), 
	"Masters"			VARCHAR (510), 
	"Doctoral"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "TeachersAdminsLevelOfEducation_CountyCode_idx" ON "TeachersAdminsLevelOfEducation" ("CountyCode");
CREATE INDEX "TeachersAdminsLevelOfEducation_DistrictCode_idx" ON "TeachersAdminsLevelOfEducation" ("DistrictCode");
CREATE INDEX "TeachersAdminsLevelOfEducation_SchoolCode_idx" ON "TeachersAdminsLevelOfEducation" ("SchoolCode");

CREATE TABLE "TeachersAdminsOneYearRetention"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"Teachers/Admins"			VARCHAR (510), 
	"RetentionPct_District"			VARCHAR (510), 
	"RetentionPct_State"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "TeachersAdminsOneYearRetention_CountyCode_idx" ON "TeachersAdminsOneYearRetention" ("CountyCode");
CREATE INDEX "TeachersAdminsOneYearRetention_DistrictCode_idx" ON "TeachersAdminsOneYearRetention" ("DistrictCode");

CREATE TABLE "FacultyAttendance"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"PercentDaysPresent"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE UNIQUE INDEX "FacultyAttendance_CountyCode_idx" ON "FacultyAttendance" ("CountyCode");
CREATE INDEX "FacultyAttendance_DistrictCode_idx" ON "FacultyAttendance" ("DistrictCode");
CREATE UNIQUE INDEX "FacultyAttendance_SchoolCode_idx" ON "FacultyAttendance" ("SchoolCode");

CREATE TABLE "TeachersAdminsDemographics"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"Teachers/Admins"			VARCHAR (510), 
	"Female"			VARCHAR (510), 
	"Male"			VARCHAR (510), 
	"White"			VARCHAR (510), 
	"Hispanic"			VARCHAR (510), 
	"Black or African American"			VARCHAR (510), 
	"Asian"			VARCHAR (510), 
	"American Indian or Alaska Native"			VARCHAR (510), 
	"Native Hawaiian or Pacific Islander"			VARCHAR (510), 
	"Two or More Races"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "TeachersAdminsDemographics_CountyCode_idx" ON "TeachersAdminsDemographics" ("CountyCode");
CREATE INDEX "TeachersAdminsDemographics_DistrictCode_idx" ON "TeachersAdminsDemographics" ("DistrictCode");
CREATE INDEX "TeachersAdminsDemographics_SchoolCode_idx" ON "TeachersAdminsDemographics" ("SchoolCode");

CREATE TABLE "CompTargeted"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"ComprehensiveTargeted"			VARCHAR (510), 
	"StudentGroup"			VARCHAR (510), 
	"Requring Support"			VARCHAR (510), 
	"Eligible to exit Status in January 2021"			VARCHAR (510), 
	"Eligible to exit Status in January 2022"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "CompTargeted_CountyCode_idx" ON "CompTargeted" ("CountyCode");
CREATE UNIQUE INDEX "CompTargeted_DistrictCode_idx" ON "CompTargeted" ("DistrictCode");
CREATE UNIQUE INDEX "CompTargeted_SchoolCode_idx" ON "CompTargeted" ("SchoolCode");

CREATE TABLE "AccountabilityIndicator"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"ELAProf_Score"			VARCHAR (510), 
	"ELAProf_Weight"			VARCHAR (510), 
	"MathProf_Score"			VARCHAR (510), 
	"MathProf_Weight"			VARCHAR (510), 
	"Grad4YR_Score"			VARCHAR (510), 
	"Grad4YR_Weight"			VARCHAR (510), 
	"Grad5YR_Score"			VARCHAR (510), 
	"Grad5YR_Weight"			VARCHAR (510), 
	"ELAGrowth_Score"			VARCHAR (510), 
	"ELAGrowth_Weight"			VARCHAR (510), 
	"MathGrowth_Score"			VARCHAR (510), 
	"MathGrowth_Weight"			VARCHAR (510), 
	"ELP_Score"			VARCHAR (510), 
	"ELP_Weight"			VARCHAR (510), 
	"CA_Score"			VARCHAR (510), 
	"CA_Weight"			VARCHAR (510), 
	"SummativeScore"			VARCHAR (510), 
	"SummativeRating"			VARCHAR (510), 
	"CompSupport_Bottom5%"			VARCHAR (510), 
	"CompSupport_Grad67"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "AccountabilityIndicator_CountyCode_idx" ON "AccountabilityIndicator" ("CountyCode");
CREATE INDEX "AccountabilityIndicator_DistrictCode_idx" ON "AccountabilityIndicator" ("DistrictCode");
CREATE INDEX "AccountabilityIndicator_SchoolCode_idx" ON "AccountabilityIndicator" ("SchoolCode");

CREATE TABLE "AccountabilitySummary"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"StudentGroup"			VARCHAR (510), 
	"SummativeScore"			VARCHAR (510), 
	"CutOffScoreTargetedSupImp"			VARCHAR (510), 
	"Targeted_LowPerf"			VARCHAR (510), 
	"ELAProf_MetTarget"			VARCHAR (510), 
	"MathProf_MetTarget"			VARCHAR (510), 
	"Grad4YR_MetTarget"			VARCHAR (510), 
	"Grad5YR_MetTarget"			VARCHAR (510), 
	"ELAGrowth_MetStandard"			VARCHAR (510), 
	"MathGrowth_MetStandard"			VARCHAR (510), 
	"ELP_MetTarget"			VARCHAR (510), 
	"CA_MetAverage"			VARCHAR (510), 
	"Targeted_ConsUnderPerf"			VARCHAR (510)
);

-- CREATE INDEXES ...
CREATE INDEX "AccountabilitySummary_CountyCode_idx" ON "AccountabilitySummary" ("CountyCode");
CREATE UNIQUE INDEX "AccountabilitySummary_DistrictCode_idx" ON "AccountabilitySummary" ("DistrictCode");
CREATE UNIQUE INDEX "AccountabilitySummary_SchoolCode_idx" ON "AccountabilitySummary" ("SchoolCode");

CREATE TABLE "Narrative"
 (
	"CountyCode"			VARCHAR (510), 
	"CountyName"			VARCHAR (510), 
	"DistrictCode"			VARCHAR (510), 
	"DistrictName"			VARCHAR (510), 
	"SchoolCode"			VARCHAR (510), 
	"SchoolName"			VARCHAR (510), 
	"Highlight1"			VARCHAR (510), 
	"Highlight2"			VARCHAR (510), 
	"Highlight3"			VARCHAR (510), 
	"Mission"			TEXT, 
	"Awards"			TEXT, 
	"Courses"			TEXT, 
	"Sports"			TEXT, 
	"SportsNarrative"			TEXT, 
	"Clubs"			TEXT, 
	"Programs"			TEXT, 
	"Staff"			TEXT, 
	"Postsecondary"			TEXT, 
	"Supports"			TEXT, 
	"Health"			TEXT, 
	"Parent"			TEXT, 
	"ClimateSurveyUsed"			VARCHAR (510), 
	"WholsSurveyed"			VARCHAR (510), 
	"ClimateNarrative"			TEXT, 
	"Facilities"			TEXT, 
	"SchoolSafety"			TEXT, 
	"TechnologySTEM"			TEXT, 
	"EarlyChildhood"			TEXT, 
	"OtherInformation"			TEXT
);

-- CREATE INDEXES ...
CREATE INDEX "Narrative_CountyCode_idx" ON "Narrative" ("CountyCode");
CREATE UNIQUE INDEX "Narrative_DistrictCode_idx" ON "Narrative" ("DistrictCode");
CREATE UNIQUE INDEX "Narrative_SchoolCode_idx" ON "Narrative" ("SchoolCode");


-- CREATE Relationships ...
ALTER TABLE "MSysNavPaneGroups" ADD CONSTRAINT "MSysNavPaneGroups_GroupCategoryID_fk" FOREIGN KEY ("GroupCategoryID") REFERENCES "MSysNavPaneGroupCategories"("Id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "MSysNavPaneGroupToObjects" ADD CONSTRAINT "MSysNavPaneGroupToObjects_GroupID_fk" FOREIGN KEY ("GroupID") REFERENCES "MSysNavPaneGroups"("Id") ON UPDATE CASCADE ON DELETE CASCADE;

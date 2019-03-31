-- ----------------------------------------------------------
-- MDB Tools - A library for reading MS Access database files
-- Copyright (C) 2000-2011 Brian Bruns and others.
-- Files in libmdb are licensed under LGPL and the utilities under
-- the GPL, see COPYING.LIB and COPYING files respectively.
-- Check out http://mdbtools.sourceforge.net
-- ----------------------------------------------------------

SET client_encoding = 'UTF-8';

CREATE TABLE "17-18"."Header and Contact"
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
CREATE INDEX "17-18"."Header and Contact_COUNTY_CODE_idx" ON "17-18"."Header and Contact" ("COUNTY_CODE");
CREATE INDEX "17-18"."Header and Contact_DISTRICT_CODE_idx" ON "17-18"."Header and Contact" ("DISTRICT_CODE");
CREATE UNIQUE INDEX "17-18"."Header and Contact_SCHOOL_CODE_idx" ON "17-18"."Header and Contact" ("SCHOOL_CODE");

CREATE TABLE "17-18"."EnrollmentTrendsbyGrade"
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
CREATE INDEX "17-18"."EnrollmentTrendsbyGrade_CountyCode_idx" ON "17-18"."EnrollmentTrendsbyGrade" ("CountyCode");
CREATE INDEX "17-18"."EnrollmentTrendsbyGrade_DistrictCode_idx" ON "17-18"."EnrollmentTrendsbyGrade" ("DistrictCode");
CREATE INDEX "17-18"."EnrollmentTrendsbyGrade_SchoolCode_idx" ON "17-18"."EnrollmentTrendsbyGrade" ("SchoolCode");

CREATE TABLE "17-18"."EnrollmentTrendsByStudentGroup"
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
CREATE INDEX "17-18"."EnrollmentTrendsByStudentGroup_CountyCode_idx" ON "17-18"."EnrollmentTrendsByStudentGroup" ("CountyCode");
CREATE INDEX "17-18"."EnrollmentTrendsByStudentGroup_DistrictCode_idx" ON "17-18"."EnrollmentTrendsByStudentGroup" ("DistrictCode");
CREATE UNIQUE INDEX "17-18"."EnrollmentTrendsByStudentGroup_SchoolCode_idx" ON "17-18"."EnrollmentTrendsByStudentGroup" ("SchoolCode");

CREATE TABLE "17-18"."EnrollmentByRacialEthnicGroup"
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
CREATE UNIQUE INDEX "17-18"."EnrollmentByRacialEthnicGroup_CountyCode_idx" ON "17-18"."EnrollmentByRacialEthnicGroup" ("CountyCode");
CREATE INDEX "17-18"."EnrollmentByRacialEthnicGroup_DistrictCode_idx" ON "17-18"."EnrollmentByRacialEthnicGroup" ("DistrictCode");
CREATE INDEX "17-18"."EnrollmentByRacialEthnicGroup_SchoolCode_idx" ON "17-18"."EnrollmentByRacialEthnicGroup" ("SchoolCode");

CREATE TABLE "17-18"."PreKAndK-FullDayHalfDay"
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
CREATE INDEX "17-18"."PreKAndK-FullDayHalfDay_CountyCode_idx" ON "17-18"."PreKAndK-FullDayHalfDay" ("CountyCode");
CREATE INDEX "17-18"."PreKAndK-FullDayHalfDay_DistrictCode_idx" ON "17-18"."PreKAndK-FullDayHalfDay" ("DistrictCode");
CREATE INDEX "17-18"."PreKAndK-FullDayHalfDay_SchoolCode_idx" ON "17-18"."PreKAndK-FullDayHalfDay" ("SchoolCode");

CREATE TABLE "17-18"."EnrollmentTrendsFullSharedTime"
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
CREATE INDEX "17-18"."EnrollmentTrendsFullSharedTime_CountyCode_idx" ON "17-18"."EnrollmentTrendsFullSharedTime" ("CountyCode");
CREATE INDEX "17-18"."EnrollmentTrendsFullSharedTime_DistrictCode_idx" ON "17-18"."EnrollmentTrendsFullSharedTime" ("DistrictCode");
CREATE INDEX "17-18"."EnrollmentTrendsFullSharedTime_SchoolCode_idx" ON "17-18"."EnrollmentTrendsFullSharedTime" ("SchoolCode");

CREATE TABLE "17-18"."EnrollmentByHomeLanguage"
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
CREATE INDEX "17-18"."EnrollmentByHomeLanguage_CountyCode_idx" ON "17-18"."EnrollmentByHomeLanguage" ("CountyCode");
CREATE INDEX "17-18"."EnrollmentByHomeLanguage_DistrictCode_idx" ON "17-18"."EnrollmentByHomeLanguage" ("DistrictCode");
CREATE INDEX "17-18"."EnrollmentByHomeLanguage_SchoolCode_idx" ON "17-18"."EnrollmentByHomeLanguage" ("SchoolCode");

CREATE TABLE "17-18"."ELALiteracyParticipationPerform"
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
CREATE INDEX "17-18"."ELALiteracyParticipationPerform_CountyCode_idx" ON "17-18"."ELALiteracyParticipationPerform" ("CountyCode");
CREATE INDEX "17-18"."ELALiteracyParticipationPerform_DistrictCode_idx" ON "17-18"."ELALiteracyParticipationPerform" ("DistrictCode");
CREATE INDEX "17-18"."ELALiteracyParticipationPerform_SchoolCode_idx" ON "17-18"."ELALiteracyParticipationPerform" ("SchoolCode");

CREATE TABLE "17-18"."MathParticipationPerform"
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
CREATE INDEX "17-18"."MathParticipationPerform_CountyCode_idx" ON "17-18"."MathParticipationPerform" ("CountyCode");
CREATE INDEX "17-18"."MathParticipationPerform_DistrictCode_idx" ON "17-18"."MathParticipationPerform" ("DistrictCode");
CREATE INDEX "17-18"."MathParticipationPerform_SchoolCode_idx" ON "17-18"."MathParticipationPerform" ("SchoolCode");

CREATE TABLE "17-18"."ELALiteracyPerformanceByGrade"
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
CREATE INDEX "17-18"."ELALiteracyPerformanceByGrade_CountyCode_idx" ON "17-18"."ELALiteracyPerformanceByGrade" ("CountyCode");
CREATE INDEX "17-18"."ELALiteracyPerformanceByGrade_DistrictCode_idx" ON "17-18"."ELALiteracyPerformanceByGrade" ("DistrictCode");
CREATE UNIQUE INDEX "17-18"."ELALiteracyPerformanceByGrade_SchoolCode_idx" ON "17-18"."ELALiteracyPerformanceByGrade" ("SchoolCode");

CREATE TABLE "17-18"."MathPerformanceByGradeTest"
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
CREATE UNIQUE INDEX "17-18"."MathPerformanceByGradeTest_CountyCode_idx" ON "17-18"."MathPerformanceByGradeTest" ("CountyCode");
CREATE INDEX "17-18"."MathPerformanceByGradeTest_DistrictCode_idx" ON "17-18"."MathPerformanceByGradeTest" ("DistrictCode");
CREATE UNIQUE INDEX "17-18"."MathPerformanceByGradeTest_SchoolCode_idx" ON "17-18"."MathPerformanceByGradeTest" ("SchoolCode");

CREATE TABLE "17-18"."ELAPerformanceTrends"
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
CREATE INDEX "17-18"."ELAPerformanceTrends_CountyCode_idx" ON "17-18"."ELAPerformanceTrends" ("CountyCode");
CREATE INDEX "17-18"."ELAPerformanceTrends_DistrictCode_idx" ON "17-18"."ELAPerformanceTrends" ("DistrictCode");
CREATE INDEX "17-18"."ELAPerformanceTrends_SchoolCode_idx" ON "17-18"."ELAPerformanceTrends" ("SchoolCode");

CREATE TABLE "17-18"."MathPerformanceTrends"
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
CREATE INDEX "17-18"."MathPerformanceTrends_CountyCode_idx" ON "17-18"."MathPerformanceTrends" ("CountyCode");
CREATE INDEX "17-18"."MathPerformanceTrends_DistrictCode_idx" ON "17-18"."MathPerformanceTrends" ("DistrictCode");
CREATE INDEX "17-18"."MathPerformanceTrends_SchoolCode_idx" ON "17-18"."MathPerformanceTrends" ("SchoolCode");

CREATE TABLE "17-18"."AlternateAssessmentParticipatio"
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
CREATE INDEX "17-18"."AlternateAssessmentParticipatio_CountyCode_idx" ON "17-18"."AlternateAssessmentParticipatio" ("CountyCode");
CREATE INDEX "17-18"."AlternateAssessmentParticipatio_DistrictCode_idx" ON "17-18"."AlternateAssessmentParticipatio" ("DistrictCode");
CREATE INDEX "17-18"."AlternateAssessmentParticipatio_SchoolCode_idx" ON "17-18"."AlternateAssessmentParticipatio" ("SchoolCode");

CREATE TABLE "17-18"."EnglishLanguageProgress"
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
CREATE UNIQUE INDEX "17-18"."EnglishLanguageProgress_CountyCode_idx" ON "17-18"."EnglishLanguageProgress" ("CountyCode");
CREATE UNIQUE INDEX "17-18"."EnglishLanguageProgress_DistrictCode_idx" ON "17-18"."EnglishLanguageProgress" ("DistrictCode");
CREATE INDEX "17-18"."EnglishLanguageProgress_SchoolCode_idx" ON "17-18"."EnglishLanguageProgress" ("SchoolCode");

CREATE TABLE "17-18"."EnglishLanguageProficiencyTest"
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
CREATE INDEX "17-18"."EnglishLanguageProficiencyTest_CountyCode_idx" ON "17-18"."EnglishLanguageProficiencyTest" ("CountyCode");
CREATE INDEX "17-18"."EnglishLanguageProficiencyTest_DistrictCode_idx" ON "17-18"."EnglishLanguageProficiencyTest" ("DistrictCode");
CREATE INDEX "17-18"."EnglishLanguageProficiencyTest_SchoolCode_idx" ON "17-18"."EnglishLanguageProficiencyTest" ("SchoolCode");

CREATE TABLE "17-18"."StudentGrowth"
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
CREATE INDEX "17-18"."StudentGrowth_CountyCode_idx" ON "17-18"."StudentGrowth" ("CountyCode");
CREATE INDEX "17-18"."StudentGrowth_DistrictCode_idx" ON "17-18"."StudentGrowth" ("DistrictCode");
CREATE INDEX "17-18"."StudentGrowth_SchoolCode_idx" ON "17-18"."StudentGrowth" ("SchoolCode");

CREATE TABLE "17-18"."StudentGrowthByPerformLevel"
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
CREATE INDEX "17-18"."StudentGrowthByPerformLevel_CountyCode_idx" ON "17-18"."StudentGrowthByPerformLevel" ("CountyCode");
CREATE INDEX "17-18"."StudentGrowthByPerformLevel_DistrictCode_idx" ON "17-18"."StudentGrowthByPerformLevel" ("DistrictCode");
CREATE UNIQUE INDEX "17-18"."StudentGrowthByPerformLevel_SchoolCode_idx" ON "17-18"."StudentGrowthByPerformLevel" ("SchoolCode");

CREATE TABLE "17-18"."StudentGrowthByGrade"
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
CREATE INDEX "17-18"."StudentGrowthByGrade_CountyCode_idx" ON "17-18"."StudentGrowthByGrade" ("CountyCode");
CREATE INDEX "17-18"."StudentGrowthByGrade_DistrictCode_idx" ON "17-18"."StudentGrowthByGrade" ("DistrictCode");
CREATE INDEX "17-18"."StudentGrowthByGrade_SchoolCode_idx" ON "17-18"."StudentGrowthByGrade" ("SchoolCode");

CREATE TABLE "17-18"."PSAT-SAT-ACTParticipation"
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
CREATE INDEX "17-18"."PSAT-SAT-ACTParticipation_CountyCode_idx" ON "17-18"."PSAT-SAT-ACTParticipation" ("CountyCode");
CREATE INDEX "17-18"."PSAT-SAT-ACTParticipation_DistrictCode_idx" ON "17-18"."PSAT-SAT-ACTParticipation" ("DistrictCode");
CREATE INDEX "17-18"."PSAT-SAT-ACTParticipation_SchoolCode_idx" ON "17-18"."PSAT-SAT-ACTParticipation" ("SchoolCode");

CREATE TABLE "17-18"."PSAT-SAT-ACTPerformance"
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
CREATE INDEX "17-18"."PSAT-SAT-ACTPerformance_CountyCode_idx" ON "17-18"."PSAT-SAT-ACTPerformance" ("CountyCode");
CREATE INDEX "17-18"."PSAT-SAT-ACTPerformance_DistrictCode_idx" ON "17-18"."PSAT-SAT-ACTPerformance" ("DistrictCode");
CREATE INDEX "17-18"."PSAT-SAT-ACTPerformance_SchoolCode_idx" ON "17-18"."PSAT-SAT-ACTPerformance" ("SchoolCode");

CREATE TABLE "17-18"."APIBCourseworkPartPerf"
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
CREATE INDEX "17-18"."APIBCourseworkPartPerf_CountyCode_idx" ON "17-18"."APIBCourseworkPartPerf" ("CountyCode");
CREATE INDEX "17-18"."APIBCourseworkPartPerf_DistrictCode_idx" ON "17-18"."APIBCourseworkPartPerf" ("DistrictCode");
CREATE INDEX "17-18"."APIBCourseworkPartPerf_SchoolCode_idx" ON "17-18"."APIBCourseworkPartPerf" ("SchoolCode");

CREATE TABLE "17-18"."APIBCoursesOffered"
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
CREATE INDEX "17-18"."APIBCoursesOffered_CountyCode_idx" ON "17-18"."APIBCoursesOffered" ("CountyCode");
CREATE UNIQUE INDEX "17-18"."APIBCoursesOffered_DistrictCode_idx" ON "17-18"."APIBCoursesOffered" ("DistrictCode");
CREATE UNIQUE INDEX "17-18"."APIBCoursesOffered_SchoolCode_idx" ON "17-18"."APIBCoursesOffered" ("SchoolCode");

CREATE TABLE "17-18"."CTE_SLEParticipation"
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
CREATE INDEX "17-18"."CTE_SLEParticipation_CountyCode_idx" ON "17-18"."CTE_SLEParticipation" ("CountyCode");
CREATE INDEX "17-18"."CTE_SLEParticipation_DistrictCode_idx" ON "17-18"."CTE_SLEParticipation" ("DistrictCode");
CREATE INDEX "17-18"."CTE_SLEParticipation_SchoolCode_idx" ON "17-18"."CTE_SLEParticipation" ("SchoolCode");

CREATE TABLE "17-18"."IndustryValuedCredentialsEarned"
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
CREATE INDEX "17-18"."IndustryValuedCredentialsEarned_County_Code_idx" ON "17-18"."IndustryValuedCredentialsEarned" ("County_Code");
CREATE INDEX "17-18"."IndustryValuedCredentialsEarned_District_Code_idx" ON "17-18"."IndustryValuedCredentialsEarned" ("District_Code");
CREATE INDEX "17-18"."IndustryValuedCredentialsEarned_School_Code_idx" ON "17-18"."IndustryValuedCredentialsEarned" ("School_Code");

CREATE TABLE "17-18"."MathCourseParticipation"
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
CREATE INDEX "17-18"."MathCourseParticipation_CountyCode_idx" ON "17-18"."MathCourseParticipation" ("CountyCode");
CREATE INDEX "17-18"."MathCourseParticipation_DistrictCode_idx" ON "17-18"."MathCourseParticipation" ("DistrictCode");
CREATE INDEX "17-18"."MathCourseParticipation_SchoolCode_idx" ON "17-18"."MathCourseParticipation" ("SchoolCode");

CREATE TABLE "17-18"."ScienceCourseParticipation"
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
CREATE INDEX "17-18"."ScienceCourseParticipation_CountyCode_idx" ON "17-18"."ScienceCourseParticipation" ("CountyCode");
CREATE INDEX "17-18"."ScienceCourseParticipation_DistrictCode_idx" ON "17-18"."ScienceCourseParticipation" ("DistrictCode");
CREATE INDEX "17-18"."ScienceCourseParticipation_SchoolCode_idx" ON "17-18"."ScienceCourseParticipation" ("SchoolCode");

CREATE TABLE "17-18"."SocStudiesHistoryCourseParticip"
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
CREATE INDEX "17-18"."SocStudiesHistoryCourseParticip_CountyCode_idx" ON "17-18"."SocStudiesHistoryCourseParticip" ("CountyCode");
CREATE UNIQUE INDEX "17-18"."SocStudiesHistoryCourseParticip_DistrictCode_idx" ON "17-18"."SocStudiesHistoryCourseParticip" ("DistrictCode");
CREATE INDEX "17-18"."SocStudiesHistoryCourseParticip_SchoolCode_idx" ON "17-18"."SocStudiesHistoryCourseParticip" ("SchoolCode");

CREATE TABLE "17-18"."WorldLanguagesCourseParticipati"
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
CREATE INDEX "17-18"."WorldLanguagesCourseParticipati_CountyCode_idx" ON "17-18"."WorldLanguagesCourseParticipati" ("CountyCode");
CREATE INDEX "17-18"."WorldLanguagesCourseParticipati_DistrictCode_idx" ON "17-18"."WorldLanguagesCourseParticipati" ("DistrictCode");
CREATE INDEX "17-18"."WorldLanguagesCourseParticipati_SchoolCode_idx" ON "17-18"."WorldLanguagesCourseParticipati" ("SchoolCode");

CREATE TABLE "17-18"."SealofBiliteracy"
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
CREATE INDEX "17-18"."SealofBiliteracy_CountyCode_idx" ON "17-18"."SealofBiliteracy" ("CountyCode");
CREATE INDEX "17-18"."SealofBiliteracy_DistrictCode_idx" ON "17-18"."SealofBiliteracy" ("DistrictCode");
CREATE INDEX "17-18"."SealofBiliteracy_SchoolCode_idx" ON "17-18"."SealofBiliteracy" ("SchoolCode");

CREATE TABLE "17-18"."VisualAndPerformingArts"
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
CREATE INDEX "17-18"."VisualAndPerformingArts_CountyCode_idx" ON "17-18"."VisualAndPerformingArts" ("CountyCode");
CREATE UNIQUE INDEX "17-18"."VisualAndPerformingArts_DistrictCode_idx" ON "17-18"."VisualAndPerformingArts" ("DistrictCode");
CREATE UNIQUE INDEX "17-18"."VisualAndPerformingArts_SchoolCode_idx" ON "17-18"."VisualAndPerformingArts" ("SchoolCode");

CREATE TABLE "17-18"."GraduationRates"
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
CREATE INDEX "17-18"."GraduationRates_CountyCode_idx" ON "17-18"."GraduationRates" ("CountyCode");
CREATE INDEX "17-18"."GraduationRates_DistrictCode_idx" ON "17-18"."GraduationRates" ("DistrictCode");
CREATE UNIQUE INDEX "17-18"."GraduationRates_SchoolCode_idx" ON "17-18"."GraduationRates" ("SchoolCode");

CREATE TABLE "17-18"."GraduationPathways"
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
CREATE UNIQUE INDEX "17-18"."GraduationPathways_CountyCode_idx" ON "17-18"."GraduationPathways" ("CountyCode");
CREATE INDEX "17-18"."GraduationPathways_DistrictCode_idx" ON "17-18"."GraduationPathways" ("DistrictCode");
CREATE INDEX "17-18"."GraduationPathways_SchoolCode_idx" ON "17-18"."GraduationPathways" ("SchoolCode");

CREATE TABLE "17-18"."GraduationRateTrends"
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
CREATE INDEX "17-18"."GraduationRateTrends_CountyCode_idx" ON "17-18"."GraduationRateTrends" ("CountyCode");
CREATE UNIQUE INDEX "17-18"."GraduationRateTrends_DistrictCode_idx" ON "17-18"."GraduationRateTrends" ("DistrictCode");
CREATE UNIQUE INDEX "17-18"."GraduationRateTrends_SchoolCode_idx" ON "17-18"."GraduationRateTrends" ("SchoolCode");

CREATE TABLE "17-18"."DropoutRateTrends"
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
CREATE INDEX "17-18"."DropoutRateTrends_CountyCode_idx" ON "17-18"."DropoutRateTrends" ("CountyCode");
CREATE INDEX "17-18"."DropoutRateTrends_DistrictCode_idx" ON "17-18"."DropoutRateTrends" ("DistrictCode");
CREATE INDEX "17-18"."DropoutRateTrends_SchoolCode_idx" ON "17-18"."DropoutRateTrends" ("SchoolCode");

CREATE TABLE "17-18"."PostsecondaryEnrRatesFall"
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
CREATE INDEX "17-18"."PostsecondaryEnrRatesFall_CountyCode_idx" ON "17-18"."PostsecondaryEnrRatesFall" ("CountyCode");
CREATE INDEX "17-18"."PostsecondaryEnrRatesFall_DistrictCode_idx" ON "17-18"."PostsecondaryEnrRatesFall" ("DistrictCode");
CREATE INDEX "17-18"."PostsecondaryEnrRatesFall_SchoolCode_idx" ON "17-18"."PostsecondaryEnrRatesFall" ("SchoolCode");

CREATE TABLE "17-18"."PostsecondaryEnrRates16mos"
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
CREATE INDEX "17-18"."PostsecondaryEnrRates16mos_CountyCode_idx" ON "17-18"."PostsecondaryEnrRates16mos" ("CountyCode");
CREATE INDEX "17-18"."PostsecondaryEnrRates16mos_DistrictCode_idx" ON "17-18"."PostsecondaryEnrRates16mos" ("DistrictCode");
CREATE INDEX "17-18"."PostsecondaryEnrRates16mos_SchoolCode_idx" ON "17-18"."PostsecondaryEnrRates16mos" ("SchoolCode");

CREATE TABLE "17-18"."ChronicAbsenteeism"
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
CREATE UNIQUE INDEX "17-18"."ChronicAbsenteeism_CountyCode_idx" ON "17-18"."ChronicAbsenteeism" ("CountyCode");
CREATE INDEX "17-18"."ChronicAbsenteeism_DistrictCode_idx" ON "17-18"."ChronicAbsenteeism" ("DistrictCode");
CREATE INDEX "17-18"."ChronicAbsenteeism_SchoolCode_idx" ON "17-18"."ChronicAbsenteeism" ("SchoolCode");

CREATE TABLE "17-18"."DaysAbsent"
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
CREATE INDEX "17-18"."DaysAbsent_CountyCode_idx" ON "17-18"."DaysAbsent" ("CountyCode");
CREATE UNIQUE INDEX "17-18"."DaysAbsent_DistrictCode_idx" ON "17-18"."DaysAbsent" ("DistrictCode");
CREATE INDEX "17-18"."DaysAbsent_SchoolCode_idx" ON "17-18"."DaysAbsent" ("SchoolCode");

CREATE TABLE "17-18"."ChronicAbsByGrade"
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
CREATE INDEX "17-18"."ChronicAbsByGrade_CountyCode_idx" ON "17-18"."ChronicAbsByGrade" ("CountyCode");
CREATE INDEX "17-18"."ChronicAbsByGrade_DistrictCode_idx" ON "17-18"."ChronicAbsByGrade" ("DistrictCode");
CREATE UNIQUE INDEX "17-18"."ChronicAbsByGrade_SchoolCode_idx" ON "17-18"."ChronicAbsByGrade" ("SchoolCode");

CREATE TABLE "17-18"."ViolenceVandalismHIBSubstanceOf"
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
CREATE INDEX "17-18"."ViolenceVandalismHIBSubstanceOf_CountyCode_idx" ON "17-18"."ViolenceVandalismHIBSubstanceOf" ("CountyCode");
CREATE UNIQUE INDEX "17-18"."ViolenceVandalismHIBSubstanceOf_DistrictCode_idx" ON "17-18"."ViolenceVandalismHIBSubstanceOf" ("DistrictCode");
CREATE INDEX "17-18"."ViolenceVandalismHIBSubstanceOf_SchoolCode_idx" ON "17-18"."ViolenceVandalismHIBSubstanceOf" ("SchoolCode");

CREATE TABLE "17-18"."PoliceNotifications"
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
CREATE INDEX "17-18"."PoliceNotifications_CountyCode_idx" ON "17-18"."PoliceNotifications" ("CountyCode");
CREATE INDEX "17-18"."PoliceNotifications_DistrictCode_idx" ON "17-18"."PoliceNotifications" ("DistrictCode");
CREATE INDEX "17-18"."PoliceNotifications_SchoolCode_idx" ON "17-18"."PoliceNotifications" ("SchoolCode");

CREATE TABLE "17-18"."HIBInvestigations"
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
CREATE INDEX "17-18"."HIBInvestigations_CountyCode_idx" ON "17-18"."HIBInvestigations" ("CountyCode");
CREATE INDEX "17-18"."HIBInvestigations_DistrictCode_idx" ON "17-18"."HIBInvestigations" ("DistrictCode");
CREATE INDEX "17-18"."HIBInvestigations_SchoolCode_idx" ON "17-18"."HIBInvestigations" ("SchoolCode");

CREATE TABLE "17-18"."DisciplinaryRemovals"
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
CREATE UNIQUE INDEX "17-18"."DisciplinaryRemovals_CountyCode_idx" ON "17-18"."DisciplinaryRemovals" ("CountyCode");
CREATE INDEX "17-18"."DisciplinaryRemovals_DistrictCode_idx" ON "17-18"."DisciplinaryRemovals" ("DistrictCode");
CREATE UNIQUE INDEX "17-18"."DisciplinaryRemovals_SchoolCode_idx" ON "17-18"."DisciplinaryRemovals" ("SchoolCode");

CREATE TABLE "17-18"."SchoolDay"
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
CREATE INDEX "17-18"."SchoolDay_CountyCode_idx" ON "17-18"."SchoolDay" ("CountyCode");
CREATE INDEX "17-18"."SchoolDay_DistrictCode_idx" ON "17-18"."SchoolDay" ("DistrictCode");
CREATE INDEX "17-18"."SchoolDay_SchoolCode_idx" ON "17-18"."SchoolDay" ("SchoolCode");

CREATE TABLE "17-18"."DeviceRatios"
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
CREATE INDEX "17-18"."DeviceRatios_CountyCode_idx" ON "17-18"."DeviceRatios" ("CountyCode");
CREATE INDEX "17-18"."DeviceRatios_DistrictCode_idx" ON "17-18"."DeviceRatios" ("DistrictCode");
CREATE INDEX "17-18"."DeviceRatios_SchoolCode_idx" ON "17-18"."DeviceRatios" ("SchoolCode");

CREATE TABLE "17-18"."PerPupilExpenditures"
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
CREATE INDEX "17-18"."PerPupilExpenditures_CountyCode_idx" ON "17-18"."PerPupilExpenditures" ("CountyCode");
CREATE INDEX "17-18"."PerPupilExpenditures_DistrictCode_idx" ON "17-18"."PerPupilExpenditures" ("DistrictCode");

CREATE TABLE "17-18"."TeachersExperienceCertification"
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
CREATE INDEX "17-18"."TeachersExperienceCertification_CountyCode_idx" ON "17-18"."TeachersExperienceCertification" ("CountyCode");
CREATE INDEX "17-18"."TeachersExperienceCertification_DistrictCode_idx" ON "17-18"."TeachersExperienceCertification" ("DistrictCode");
CREATE INDEX "17-18"."TeachersExperienceCertification_SchoolCode_idx" ON "17-18"."TeachersExperienceCertification" ("SchoolCode");

CREATE TABLE "17-18"."AdministratorsExperience"
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
CREATE INDEX "17-18"."AdministratorsExperience_CountyCode_idx" ON "17-18"."AdministratorsExperience" ("CountyCode");
CREATE INDEX "17-18"."AdministratorsExperience_DistrictCode_idx" ON "17-18"."AdministratorsExperience" ("DistrictCode");

CREATE TABLE "17-18"."StudentToStaffRatios"
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
CREATE INDEX "17-18"."StudentToStaffRatios_CountyCode_idx" ON "17-18"."StudentToStaffRatios" ("CountyCode");
CREATE INDEX "17-18"."StudentToStaffRatios_DistrictCode_idx" ON "17-18"."StudentToStaffRatios" ("DistrictCode");
CREATE INDEX "17-18"."StudentToStaffRatios_SchoolCode_idx" ON "17-18"."StudentToStaffRatios" ("SchoolCode");

CREATE TABLE "17-18"."TeachersAdminsLevelOfEducation"
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
CREATE INDEX "17-18"."TeachersAdminsLevelOfEducation_CountyCode_idx" ON "17-18"."TeachersAdminsLevelOfEducation" ("CountyCode");
CREATE INDEX "17-18"."TeachersAdminsLevelOfEducation_DistrictCode_idx" ON "17-18"."TeachersAdminsLevelOfEducation" ("DistrictCode");
CREATE INDEX "17-18"."TeachersAdminsLevelOfEducation_SchoolCode_idx" ON "17-18"."TeachersAdminsLevelOfEducation" ("SchoolCode");

CREATE TABLE "17-18"."TeachersAdminsOneYearRetention"
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
CREATE INDEX "17-18"."TeachersAdminsOneYearRetention_CountyCode_idx" ON "17-18"."TeachersAdminsOneYearRetention" ("CountyCode");
CREATE INDEX "17-18"."TeachersAdminsOneYearRetention_DistrictCode_idx" ON "17-18"."TeachersAdminsOneYearRetention" ("DistrictCode");

CREATE TABLE "17-18"."FacultyAttendance"
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
CREATE UNIQUE INDEX "17-18"."FacultyAttendance_CountyCode_idx" ON "17-18"."FacultyAttendance" ("CountyCode");
CREATE INDEX "17-18"."FacultyAttendance_DistrictCode_idx" ON "17-18"."FacultyAttendance" ("DistrictCode");
CREATE UNIQUE INDEX "17-18"."FacultyAttendance_SchoolCode_idx" ON "17-18"."FacultyAttendance" ("SchoolCode");

CREATE TABLE "17-18"."TeachersAdminsDemographics"
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
CREATE INDEX "17-18"."TeachersAdminsDemographics_CountyCode_idx" ON "17-18"."TeachersAdminsDemographics" ("CountyCode");
CREATE INDEX "17-18"."TeachersAdminsDemographics_DistrictCode_idx" ON "17-18"."TeachersAdminsDemographics" ("DistrictCode");
CREATE INDEX "17-18"."TeachersAdminsDemographics_SchoolCode_idx" ON "17-18"."TeachersAdminsDemographics" ("SchoolCode");

CREATE TABLE "17-18"."CompTargeted"
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
CREATE INDEX "17-18"."CompTargeted_CountyCode_idx" ON "17-18"."CompTargeted" ("CountyCode");
CREATE UNIQUE INDEX "17-18"."CompTargeted_DistrictCode_idx" ON "17-18"."CompTargeted" ("DistrictCode");
CREATE UNIQUE INDEX "17-18"."CompTargeted_SchoolCode_idx" ON "17-18"."CompTargeted" ("SchoolCode");

CREATE TABLE "17-18"."AccountabilityIndicator"
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
CREATE INDEX "17-18"."AccountabilityIndicator_CountyCode_idx" ON "17-18"."AccountabilityIndicator" ("CountyCode");
CREATE INDEX "17-18"."AccountabilityIndicator_DistrictCode_idx" ON "17-18"."AccountabilityIndicator" ("DistrictCode");
CREATE INDEX "17-18"."AccountabilityIndicator_SchoolCode_idx" ON "17-18"."AccountabilityIndicator" ("SchoolCode");

CREATE TABLE "17-18"."AccountabilitySummary"
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
CREATE INDEX "17-18"."AccountabilitySummary_CountyCode_idx" ON "17-18"."AccountabilitySummary" ("CountyCode");
CREATE UNIQUE INDEX "17-18"."AccountabilitySummary_DistrictCode_idx" ON "17-18"."AccountabilitySummary" ("DistrictCode");
CREATE UNIQUE INDEX "17-18"."AccountabilitySummary_SchoolCode_idx" ON "17-18"."AccountabilitySummary" ("SchoolCode");

CREATE TABLE "17-18"."Narrative"
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
CREATE INDEX "17-18"."Narrative_CountyCode_idx" ON "17-18"."Narrative" ("CountyCode");
CREATE UNIQUE INDEX "17-18"."Narrative_DistrictCode_idx" ON "17-18"."Narrative" ("DistrictCode");
CREATE UNIQUE INDEX "17-18"."Narrative_SchoolCode_idx" ON "17-18"."Narrative" ("SchoolCode");


-- CREATE Relationships ...
ALTER TABLE "17-18"."MSysNavPaneGroups" ADD CONSTRAINT "17-18"."MSysNavPaneGroups_GroupCategoryID_fk" FOREIGN KEY ("17-18"."GroupCategoryID") REFERENCES "17-18"."MSysNavPaneGroupCategories"("17-18"."Id") ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "17-18"."MSysNavPaneGroupToObjects" ADD CONSTRAINT "17-18"."MSysNavPaneGroupToObjects_GroupID_fk" FOREIGN KEY ("17-18"."GroupID") REFERENCES "17-18"."MSysNavPaneGroups"("17-18"."Id") ON UPDATE CASCADE ON DELETE CASCADE;

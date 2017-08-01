class PerformanceController < ApplicationController
  def index
    
    #Instituição e nota geral
    @InstitutionList = Institution.search(params[:inst])
    @IntitutionListId = GetId(@InstitutionList)
    @GeneralScoreList = ScoreGeneral.search(params[:gen]).where("institution_id in (?)",  @IntitutionListId).order('score_generals.score DESC')
    
    
    #Curso e nota do curso
    @CourseList = Course.search(params[:cour]).where("institution_id in (?)", @IntitutionListId)
    @CourseListId = GetId(@CourseList)
    @CourseScoreList = ScoreCourse.search(params[:score_course]).where("course_id in (?)", @CourseListId)
  end
  
  def GetId (modelList)
    result = Array.new
    for model in modelList
      result << model.id
    end
  end
end

json.extract! score_course, :id, :enade_id, :course_id, :score, :created_at, :updated_at
json.url score_course_url(score_course, format: :json)

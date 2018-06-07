module ProjectsHelper
  def timeline_display(project)
    if project.end_date.to_date < Date.today
      days = (Date.today - project.end_date.to_date).to_i
      "#{days} #{'day'.pluralize(days)} overdue"
    elsif project.start_date.to_date < Date.today
      days = (Date.today - project.start_date.to_date).to_i
      "day #{days}"
    end
  end
end
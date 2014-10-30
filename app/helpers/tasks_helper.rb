module TasksHelper
  def task_css_classes(task)
    if task.completed?
      "completed"
    end
  end
end

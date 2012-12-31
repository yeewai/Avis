class CPMailer < ActionMailer::Base
  default from: "catalyticproductions@gmail.com"
  BASE_URL = "http://avis.herokuapp.com"
  
  def task_email(task)
    @task = task
    mail(:to => @task.owner.email, :subject => "New Task on AVIS:#{@task.task}")
  end
  
  def late_status_email(users)
    @users = users
    mail(#:bcc => users,
          :to => users,
          :subject => "Catalytic Productions Status Notification")
  end
end

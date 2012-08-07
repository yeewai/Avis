module ProjectsHelper
  def summarize(content, wordcount=50)
    content.split[0..(wordcount-1)].join(" ") + (content.split.size > wordcount ? "... " : "") 
  end
end

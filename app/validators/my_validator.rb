class MyValidator < ActiveModel::Validator
  def validate(record)
    
    if record.content.blank?
      record.errors.add :content, "content should be present!"
    end
    
    
    if record.content.length <= 10
      record.errors.add :content, "content should have more than 10 characters!"
    end
  end
end

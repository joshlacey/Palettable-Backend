class PalateSerializer < ActiveModel::Serializer
  #belongs_to :user
  attributes :id, :data, :creator

  def creator
    User.find_by(id: object.user_id).username
  end
end

def swap(array, index1, index2)
  temp = array[index1]
  array[index1] = array[index2]
  array[index2] = temp
  return array
end

def selection_sort(array)
  min = nil
  mindex = nil

  array.each.with_index do |e,i|
    if min == nil
      min = e
      mindex = i
    end
    if min < e
      
    end
  end
end

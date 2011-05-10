class Interview < ActiveRecord::Base
  has_many :attachments

  validates_presence_of :name
  accepts_nested_attributes_for :attachments
  validates_presence_of :name ,:phoneNumber  ,:total_exp ,:ror_exp ,:doi ,:type_location ,:result,:email
  #validates_uniqueness_of :phoneNumber
  validates_numericality_of :phoneNumber,:total_exp
  def self.pagination(search, page)
    paginate :per_page => 10, :page => page,:order => 'name'
  end

  
end

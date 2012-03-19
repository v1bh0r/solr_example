class ExcelImporter
  def initialize path
    @path = path
  end

  def import
    doc = Excel.new(@path)
    doc.default_sheet = doc.sheets.first
    2.upto(doc.last_row) do |line|
      Candidate.create(
        :name => doc.cell(line, 'A'),
        :email => doc.cell(line, 'B'),
        :alt_phone_numbers => doc.cell(line, 'C'),
        :date_of_birth => doc.cell(line, 'D'),
        :phone_number => doc.cell(line, 'E'),
        :functional_area => doc.cell(line, 'F'),
        :specialization => doc.cell(line, 'G'),
        :industry => doc.cell(line, 'H'),
        :resume_title => doc.cell(line, 'I'),
        :key_skills => doc.cell(line, 'J'),
        :work_experience => doc.cell(line, 'K'),
        :current_employer => doc.cell(line, 'L'),
        :previous_employer => doc.cell(line, 'M'),
        :current_salary => doc.cell(line, 'N'),
        :seniority_level => doc.cell(line, 'O'),
        :location => doc.cell(line, 'P'),
        :preferred_locations => doc.cell(line, 'Q'),
        :education => doc.cell(line, 'R'),
        :education_spl => doc.cell(line, 'S'),
        :education2 => doc.cell(line, 'T'),
        :education2_spl => doc.cell(line, 'U'),
        :last_activity_on => "#{doc.cell(line, 'X')}-#{doc.cell(line, 'Y')}-#{doc.cell(line, 'Z')}",
        :gender => doc.cell(line, 'AA'),
        :address => doc.cell(line, 'AC')
      )
    end
  end
end
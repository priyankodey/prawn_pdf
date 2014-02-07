pdf = Prawn::Document.new

pdf.text "Details of User",:size => 30, :style => :bold
pdf.text "User No: #{@user.id}", :size => 20
pdf.text "User Name: #{@user.name}", :size => 20
pdf.text "User Email: #{@user.email}", :size => 20
pdf.text "User Phone: #{@user.phone}", :size => 20
    
 

 table_data = 
  [[Prawn::Table::Cell::Text.new( pdf, [0,0], :content => "<b>User No</b>",
                                              :inline_format => true),
    Prawn::Table::Cell::Text.new( pdf, [0,0], :content => "#{@user.id}" )
  ]]

  pdf.table (table_data)


   pdf.table(table_data) do
    rows(1..3).width = 72
  end



  pdf.table(table_data) do |table|
    table.rows(1..3).width = 72
  end



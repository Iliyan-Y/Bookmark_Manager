require 'database'

describe DataBase do 
  describe "#connect" do 
    it "connect to the required database" do
      expect(PG).to receive(:connect).with(dbname: 'bookmarks_manager_test')

      DataBase.connect("bookmarks_manager_test")
    end
  end

  describe "current_connection" do 
    it "return the current connection to the database" do 
      connection = DataBase.connect("bookmarks_manager_test")

      expect(DataBase.current_connection).to eq connection
    end
  end

  describe "#query" do 
    it "Execute query via PG" do 
      connection = DataBase.connect('bookmarks_manager_test')

      expect(connection).to receive(:exec).with("SELECT * FROM bookmarks;")

      DataBase.query("SELECT * FROM bookmarks;")
    end
  end

end
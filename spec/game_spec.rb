require ./lib/game.rb
require ./lib/player.rb



    describe "game method tests" do
        let(:player1){Player.new('Lidu' , 'x')}
        let(:Player2){Player.new('Lidya' , 'y')}
        let(:game){Game.new(player1 ,player2)}
        
    it "validates if board is full" do 
        #puts Game.boardfull
        #expects(Game.boardfull).to be(false)
        puts "hello"
    end
    #letter_digits = /^([0-9]*[a-zA-Z][a-zA-Z0-9]*)$/
    #it 'validates name' do
    #     expects(validate.validname(letter_digits)).to be(true)

    # end
    # it 'validates name' do
    #     expects(validate.validname(!letter_digits)).to eql(false)
    # end
    #  it 'validates position between 1 to 9' do
    #     expects(validate.position(10)).to eql(false) 
    #  end
    #  arr =[1,2,3,4,5,6,7,8,9]
    #  it 'validates position between 1 to 9' do
    #     expects(validate.position(1)).to eql(true) 
    #  end
    
    end

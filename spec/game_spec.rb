require './lib/game.rb'
require './lib/player.rb'
require './lib/validate.rb' 




describe "game method tests" do
    let(:player1){Player.new('Lidu' , 'x')}
    let(:player2){Player.new('Lidya' , 'y')}
    let(:game){Game.new(player1 ,player2)}
    let(:validate){Validator.new('lidu')}
     it 'validates name' do
          expect(validate.validname('letter_d')).to be(true)

     end
     it 'validates name' do
        expect(validate.validname('')).not_to eql(true)

   end
   it 'Name of two players should not be the same' do
    expect(validate.validplayer('lidu','lidu')).not_to eql(true)

end
it 'Name of two players should not be the same' do
    expect(validate.validplayer('lidu','lidya')).to eql(true)

end
it 'Validates choice input' do
    expect(game.validchoice('1')).to eql(true)

end
it 'Validates choice input' do
    expect(game.validchoice('10')).not_to eql(false)

end
it 'Validates position' do
    expect(game.valid_pos(8)).to eql(game.board_array(8))

end
describe 'check winner' do
    it 'Vertical' do 
        game.fill_board(1,'x')
        game.fill_board(4 ,'x')
        game.fill_board(7 ,'x')
        expect(player_won).to eql(Lidu)
    end
    it 'Vertical' do 
        game.fill_board(2,'x')
        game.fill_board(5 ,'x')
        game.fill_board(8 ,'x')
        expect(player_won).to eql(Lidu)
    end
    it 'Vertical' do 
        game.fill_board(3,'x')
        game.fill_board(6 ,'x')
        game.fill_board(9 ,'x')
        expect(player_won).to eql(Lidu)
    end
    it 'Vertical' do 
        game.fill_board(1,'x')
        game.fill_board(4 ,'x')
        game.fill_board(7 ,'x')
        expect(player_won).to eql(Lidu)
    end
    it 'Vertical' do 
        game.fill_board(2,'x')
        game.fill_board(5 ,'x')
        game.fill_board(8 ,'x')
        expect(player_won).to eql(Lidu)
    end
    it 'Vertical' do 
        game.fill_board(3,'x')
        game.fill_board(6 ,'x')
        game.fill_board(9 ,'x')
        expect(player_won).to eql(Lidu)
    end
    it 'Vertical' do 
        game.fill_board(1,'x')
        game.fill_board(4 ,'x')
        game.fill_board(7 ,'x')
        expect(player_won).to eql(Lidu)
    end
    it 'Vertical' do 
        game.fill_board(2,'x')
        game.fill_board(5 ,'x')
        game.fill_board(8 ,'x')
        expect(player_won).to eql(Lidu)
    end
    it 'Vertical' do 
        game.fill_board(3,'x')
        game.fill_board(6 ,'x')
        game.fill_board(9 ,'x')
        expect(player_won).to eql(Lidu)
    end
end
    # it 'validates position between 1 to 9' do
    #          expects(validate.position(10)).to eql(false) 
    #      end
  
    it 'board print' do
         game.game_board
    end
    it 'board printbbbbb' do
        game.game_board
   end
end

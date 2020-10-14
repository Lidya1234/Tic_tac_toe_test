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
     expect(validate.validplayer('ade','adewunmi')).to eql(true)

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

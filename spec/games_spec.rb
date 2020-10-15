require './lib/game.rb'
require './lib/player.rb'
require './lib/validate.rb'

describe 'game method tests' do
  let(:player1) { Player.new('Lidu', 'x') }
  let(:player2) { Player.new('Lidya', 'y') }
  let(:game) { Game.new(player1, player2) }
  let(:validate) { Validator.new('lidu') }
  #validates name
  it 'It checks if the name is at least one character long' do
    expect(validate.validname('letter_d')).to be(true)
  end
  #validates name
  it 'It checks if the name is at least one character long' do
    expect(validate.validname('')).not_to eql(true)
  end
  it 'It checks if the name of two players is the same or not' do
    expect(validate.validplayer('lidu', 'lidu')).not_to eql(true)
  end

  it 'It checks if the name of two players is the same or not' do
    expect(validate.validplayer('ade', 'adewunmi')).to eql(true)
  end

  it 'Validates if the user has entered number form one to 9' do
    expect(game.validchoice('1')).to eql(true)
  end

  it 'Validates if the user has entered number form one to 9' do
    expect(game.validchoice('10')).not_to eql(false)
  end

  it 'Checks if the position entered by the user is empty or not' do
    expect(game.valid_pos(8)).to eql(game.board_array(8))
  end
  describe 'check winner' do
    it 'It does vertical check to find a winner' do
      game.fill_board(2, 'x')
      game.fill_board(5, 'x')
      game.fill_board(8, 'x')

      expect(game.winner).to eql('Lidu')
    end
    it 'It does vertical check to find a winner' do
      game.fill_board(2, 'x')
      game.fill_board(5, 'x')
      game.fill_board(8, 'x')
      expect(game.winner).to eql('Lidu')
    end
    it 'It does vertical check to find a winner' do
      game.fill_board(3, 'x')
      game.fill_board(6, 'x')
      game.fill_board(9, 'x')
      expect(game.winner).to eql('Lidu')
    end

    it 'It does horizontal check to find a winner' do
      game.fill_board(1, 'y')
      game.fill_board(2, 'y')
      game.fill_board(3, 'y')
      expect(game.winner).not_to eql('adewunmi')
    end
    it 'It does horizontal check to find a winner' do
      game.fill_board(4, 'x')
      game.fill_board(5, 'x')
      game.fill_board(6, 'x')
      expect(game.winner).not_to eql('adewunmi')
    end
    it 'It does horizontal check to find a winner' do
      game.fill_board(7, 'y')
      game.fill_board(8, 'y')
      game.fill_board(9, 'y')
      expect(game.winner).to eql('Lidya')
    end

    it 'It does diagonal check to find a winner' do
      game.fill_board(3, 'x')
      game.fill_board(5, 'x')
      game.fill_board(7, 'x')
      expect(game.winner).to eql('Lidu')
    end
    it 'It does diagonal check to find a winner' do
      game.fill_board(1, 'y')
      game.fill_board(5, 'y')
      game.fill_board(9, 'y')
      expect(game.winner).not_to eql('Lidu')
    end

end

end

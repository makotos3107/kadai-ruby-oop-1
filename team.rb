class Team
  attr_accessor :name, :win, :lose, :draw
  
  def initialize(name:, win:, lose:, draw:)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end
  # 勝率計算
  def calc_win_rate
    win_rate = self.win.to_f / (self.win + self.lose)
  end
  # 成績表示
  def show_team_result
    puts "#{self.name} の2020年の成績は#{self.win}勝#{self.lose}敗#{self.draw}分,勝率は#{calc_win_rate}です。"
  end
end

giants = Team.new(name:'Giants', win:67, lose:45, draw:8)
tigers = Team.new(name:'Tigers', win:60, lose:53, draw:7)
dragons = Team.new(name:'Dragons', win:60, lose:55, draw:5)
bayStars = Team.new(name:'BayStars', win:56, lose:58, draw:6)
carp = Team.new(name:'Carp', win:52, lose:56, draw:12)
swallows = Team.new(name:'Swallows', win:41, lose:69, draw:10)
giants.show_team_result
tigers.show_team_result
dragons.show_team_result
bayStars.show_team_result
carp.show_team_result
swallows.show_team_result
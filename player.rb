require 'music_theory'


middle_c = 261.6 # Middle C
middle_d = 293.665 # Middle D
middle_e = 329.628
middle_f = 349.228 # Middle F
middle_g = 392.00 # Middle G
middle_a = 440 # A

frequency = [middle_c, middle_d, middle_e, middle_f, middle_g, middle_a ].sample

melody1 = [MusicTheory::Note.new( frequency: middle_c, duration: 0.25 ),
MusicTheory::Note.new( frequency: middle_c, duration: 0.25 ),
MusicTheory::Note.new( frequency: middle_g, duration: 0.25 ),
MusicTheory::Note.new( frequency: middle_g, duration: 0.25 ),
MusicTheory::Note.new( frequency: middle_a, duration: 0.25 ),
MusicTheory::Note.new( frequency: middle_a, duration: 0.25 ),
MusicTheory::Note.new( frequency: middle_g, duration: 0.50 ),
MusicTheory::Note.new( frequency: middle_f, duration: 0.25 ),
MusicTheory::Note.new( frequency: middle_f, duration: 0.25 ),
MusicTheory::Note.new( frequency: middle_e, duration: 0.25 ),
MusicTheory::Note.new( frequency: middle_e, duration: 0.25 ),
MusicTheory::Note.new( frequency: middle_d, duration: 0.25 ),
MusicTheory::Note.new( frequency: middle_d, duration: 0.25 ),
MusicTheory::Note.new( frequency: middle_c, duration: 0.50 ),]

melody2 = [MusicTheory::Note.new( frequency: middle_g, duration: 0.25 ),
MusicTheory::Note.new( frequency: middle_g, duration: 0.25 ),
MusicTheory::Note.new( frequency: middle_f, duration: 0.25 ),
MusicTheory::Note.new( frequency: middle_f, duration: 0.25 ),
MusicTheory::Note.new( frequency: middle_e, duration: 0.25 ),
MusicTheory::Note.new( frequency: middle_e, duration: 0.25 ),
MusicTheory::Note.new( frequency: middle_d, duration: 0.50 )]

p = MusicTheory::Play.new melody1 + melody2 + melody2 + melody1


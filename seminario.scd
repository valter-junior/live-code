
//Experimentar no supercollider baixar o programa e executar o command line SuperDirt.start;

s.boot;


p = ProxySpace.new.push;



~sig.play;


//Manipulação de sinais sinusoidais
~sig = {SinOsc.ar(440!2) * 0.2};


~sig = {SinOsc.ar([440,443]) * 0.2};


~sig = {SinOsc.ar([440,443] * -2.midiratio) * 0.2};
~sig = {SinOsc.ar([440,443] * -5.midiratio) * 0.2};


//Alteração da amplitude
~sig = {SinOsc.ar([440,443] * -5.midiratio) * 0.1};



~sig = {SinOsc.ar([440,443] * -5.midiratio) * -10.dbamp};
~sig = {SinOsc.ar([440,443] * -5.midiratio) * -20.dbamp};



~sig = {SinOsc.ar([440,443] * -5.midiratio) * -20.dbamp * LFPulse.kr(6, 0, 0.3)};


//Adição de Ruido
~sig = {PinkNoise.ar(1!2) * -20.dbamp};
~sig = {SinOsc.ar([440,443] * -5.midiratio) * -20.dbamp * LFPulse.kr(6, 0, 0.3)};



~sig = {SinOsc.ar([440,443] * -5.midiratio) * 0 * LFPulse.kr(6, 0, 0.3)};


~sig = {SinOsc.ar([440,443] * -5.midiratio) * -20.dbamp * LFPulse.kr(6, 0, 0.3)};


~sig = nil;

~sig = {SinOsc.ar([440,443] * -5.midiratio) * 0.1 * LFPulse.kr(6, 0, 0.3)};

~sig.stop(3);

~sig.play;

~sig.clear(5);


~sig.play;
~sig = {SinOsc.ar([440,443] * -5.midiratio) * 0.1 * LFPulse.kr(6, 0, 0.3)};
~sig = {PinkNoise.ar(0.1!2)};
~sig = nil;

~sig.fadeTime;

~sig.fadeTime = 2;

~sig = {SinOsc.ar([440,443] * -5.midiratio) * 0.1 * LFPulse.kr(6, 0, 0.3)};
~sig = {PinkNoise.ar(0.1!2)};
~sig = nil;

//____________________________________________
//____________________________________________


//Utilização do buffer de um áudio

b = ();

b.put(\drone, Buffer.read(s, "/Users/valterjunior/Desktop/sound.wav")); //replace this path with a path to a file on your own computer

b.drone.numChannels;
b.drone.duration;
b.drone.play;

//b.put(\drone2, Buffer.read(s, "/Users/valterjunior/Desktop/sound.wav")); //etc.


~buf.play;

~buf = {PlayBuf.ar(1, b.drone) * -12.dbamp!2};

~buf = {PlayBuf.ar(1, b.drone, 2) * -12.dbamp!2};


~buf = {PlayBuf.ar(1, b.drone, 0.5) * -12.dbamp!2};


~buf = {PlayBuf.ar(1, b.drone, -1.midiratio) * -12.dbamp!2};
~buf = {PlayBuf.ar(1, b.drone, -2.midiratio) * -12.dbamp!2};
~buf = {PlayBuf.ar(1, b.drone, -3.midiratio) * -12.dbamp!2};


~buf.fadeTime = 3;

~buf = {PlayBuf.ar(1, b.drone, -3.midiratio, loop:1) * -12.dbamp!2};

~sig = {SinOsc.ar([440,443] * -5.midiratio) * 0.1 * LFPulse.kr(6, 0, 0.3)};


~sig = {SinOsc.ar([440,443] * -7.midiratio) * 0.1 * LFPulse.kr(6, 0, 0.3)};

~buf = {PlayBuf.ar(1, b.drone, -3.midiratio, loop:1) * -15.dbamp!2};

~sig = {SinOsc.ar([440,443] * 5.midiratio) * 0.1 * LFPulse.kr(6, 0, 0.3)};

~sig = {SinOsc.ar([440,443] * 5.midiratio) * 0.1 * LFPulse.kr([6,6.1], 0, 0.3)};

~sig2.play;

~sig2.fadeTime = 5;

~sig2 = {SinOsc.ar([440,443] * 12.midiratio) * 0.06 * LFPulse.kr([7,7.1], 0, 0.2)};


p.clear(8);


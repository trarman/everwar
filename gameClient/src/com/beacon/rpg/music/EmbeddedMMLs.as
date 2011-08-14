package com.beacon.rpg.music
{
	public class EmbeddedMMLs
	{
	
		public static const BGM1:String = "#TITLE{BGM1};t100;"+
			"#EFFECT1{delay450,30};"+
			"#EFFECT2{delay450,50autopan};"+
			"%5@0q0s36,-128v28o4$[c8.]4c;"+
			"%2@1q0s32@f64,2$rc;"+
			"%2@3q0s38v4l32$cc[c16]15;"+
			"@v64,16%5@1q4s63o3@f48$[ccrr8|g8]r8;"+
			"@v0,0,64%5@7q0o6l16v5p0$cgfb-r<c>gfe-d>b-fr;";

		public static const enemyEncounter:String = "%3@7 > d2&g2&f8&e2&c2;>> a2&d2&d8&g2&e2;";
		public static const neutralEncounter:String = "%3@7 f8f8r16 f8f8r16 g8g8 d2;";
		public static const friendlyEncounter:String = "%3@7 < c16 d16 d+16 e16 c16 > g2 a2;";

		/* Asteka
#TITLE{太陽の神殿 ASTEKA Ⅱ / 太陽の神殿  Templo del Sol};

#EFFECT1{hf20 lf3000 delay200,50,1 reverb230,50,50,100};

t96
%11 @0,48,48,0,0,20s11@f90
o4l8q6@v80,48
 g64a16..<c
$
 d^^^^^f^ e^^^^^<c64>c16..>g g^^a^^^^ r^^^^^a<c
 d^^^^^f^ e^^^^^cd  e^^^^^@v60g64g+64@v80g16.r g^^f^^>a<c
 d^^^^^<a64>a16..^ grer^^cr  c^^d^^^^ r^^^^^>g64a16..<c
;

%11 @0,48,48,2,57,16s4@f50
o5l8q7@v50,48
 r^
$
 afdfafdf <c>geg<c>gec ec>a<fd>afa  da<edd>a<fd
 afdfafdf <c>geg<c>gec <c>geg<c>gec ec>a<d^>a<fd
 afdfafdf ercr^^>ar<   gecfd>afa    defa<defa
;

%11 @0,48,40,6,59,18s29@f90
o3l8q7@v45,48
 r^
$
 [b-^^b-b-^^b-]
 [d^^dd^^d]
 [b-^^b-b-^^b-]
 a^^aa^^a d^^dd^<dc>
 b-^^b-b-^^b-
 arar^^ar
 [d^^dd^^d]
;
*/		

/* Street Locos
#TITLE{Street locos};t100;
#EFFECT1{delay450,80};
#EFFECT2{delay450,50autopan};
#EFFECT3{delay850,50autopan};
%5@0q0s36,-128v28o4$[c8.][r16];
//4c;
@1q0s30@f20,2$r.c8r.c8r.c8r.c8;
//%2@3q0s38v4l32$cc[c16]15;
@v64,16%5@1q4s53o3@f48$[c8.]r[g16][r16]r.rrr;
@v10%5@-880o4FjFG@l6$2c;
@v10,5,2%5@889o4FjFGl6$ejhk<ced-ce<ced-e<ce
//@v10,10,10,00%5@8o4FjFG16$ejhk<ced-ce<ced-e<ce
*/

/* quiet peaceful
#TITLE{gontiti / 放課後の音楽室 CM-Version};
#REV;
#EFFECT0{reverb70,40,60,45};

t75;

#A= %11 @0,44,46,0,0,20 s16 @f60 o5 q8 v16 l4;
#A+= r1 [[dgeg af+g2 | bbbb baa2] gbag gf+g2];
#A+= ba>c<b f+ag2 gggg gfd2 aga+a ef+16&g8.f4..((q4f16))q8 ffff fd+f+2;
#A+= [dgeg af+g2 | bbb l16 q7br>q5dc<bagq6f+agf+eq7gf+ed4r l4q8] gbag gf+g2;

A;

#I=%t1 %11 @0,40,46,10,60,20 s12 @f60,0;
#B= I o4 q8 v11 l8 k4;
#C= I o4 q8 v11 l8 k2;
#D= I o4 q8 v11 l8 k-2;
#E= I o3 q8 v11 l8;

#B+= r4.d8  r32b4...;
#C+= r4g4   r64g4....;
#D+= r8d4r8 r64d4....;
#E+= g4r4   g2;

#B+=[[rrrd4r>c4rrrd+4rr<g4rrg4rrg4rra>|f+2<]rrrd];
#C+=[[rrg4rrrg4ra4rrb4rrb4rr>c4rrc4|r64c16..c4r<]rrg4];
#D+=[[rd4rrg4rrd+4rrg4rrg4rrg4rra4r|r64a16..ra4]rd4r];
#E+=[[g2>c2<b2e2>c2<a2>d2|r32d16.^4d<]g2];

#B+=rrrb4rr>f+4rr<b4rre4rra+4rra+4rra4rrd;
#C+=rrg4rr>d4rr<a4rrg4rr>d4rrd4rrg4rrd4;
#D+=re4rra4rrd+4rre4rra+4rra+4r>rd+4r<ra4r;
#E+=a2>d2<b2e2>d+2c2f2a+2;

#B+=o4rrrf4rra+4rr>e4rrd4rr<g+4rrg+4>rf4rrrd;
#C+=o4rra+4rr>e4rrc+4rrf4rrc4rrc+4rc+4rrrc4;
#D+=o4rf4rra+4rre4rra4rrg+4rrg+4rrrrg4f+4r;
#E+=o3g2>c2<a2>d2c+2<a+2>d+2d2;

#B+=o4[rrrd4r>c4rrrd+4rr<g4rrg4rrg4rra>|f+2<]rrr<do4d1;
#C+=o4[rrg4rrrg4ra4rrb4rrb4rr>c4rrc4|r64c16..c4r<]rr<gro4r32g1;
#D+=o4[rd4rrg4rrd+4rrg4rrg4rrg4rra4r|r64a16..ra4]rbrro4r16b1;
#E+=o3[g2>c2<b2e2>c2<a2>d2|r32d16.^4d<]g2o3r8g1;

B; C; D; E;
*/

/*  Cool title screen music */
public static const TITLE_MUSIC:String = 
"#TITLE{聖剣伝説2 / 天使の怖れ};"+
"#REV;"+
"t80;"+
"#OPM@1 {"+
"2,  7, "+
"31,  1,  1,  4,  1, 35,  0,  1, -1,  0,  0;"+
"18, 15,  2,  8,  3, 59,  0, 10,  2,  0,  0;"+
"31, 12,  4,  4,  2, 31,  0,  0,  6,  0,  0;"+
"20,  6,  4,  8,  1,  0,  0,  1,  1,  0,  0;"+
"};"+
"#OPM@028 {"+
"4,  3,"+
"18,  1,  0,  6,  1, 40,  0,  2,  0,  0,  0;"+
"18,  0,  0,  6,  0,  2,  0,  1,  0,  0,  0;"+
"10,  0,  0,  6,  0, 38,  0,  2,  0,  0,  0;"+
"10,  1,  0,  6,  0,  0,  0,  6,  0,  0,  0;"+
" };"+
"#OPM@29{"+
"4,  7,"+
"28, 20,  5,  3,  2, 38,  2,  4,  2,  0,  0;"+
"28, 18,  5,  4,  2,  5   1,  4,  2,  0,  0;"+
"30, 20,  5,  3,  2, 40,  1,  8,  4,  0,  0;"+
"28, 18,  5,  4,  2,  5,  1,  4,  4,  0,  0;"+
"};"+
"#OPM@58{"+
"3, 7;"+
"26, 10,  2,  5,  2, 50,  2,  2,  0,  0,  0;"+
"20,  8,  2,  5,  1, 45,  1,  2,  0,  0,  0;"+
"18, 10,  1,  4,  0, 38,  0,  1,  0,  0,  0;"+
"16, 20,  1,  6,  1,  0,  0,  1,  0,  0,  0;"+
"};"+
"#OPM@60{"+
"4,  7;"+
"20,  2,  1,  5,  1, 34,  0,  2,  1,  0,  0;"+
"10,  2,  1,  5,  1, 12,  3,  4,  2,  0,  0;"+
"20,  2,  1,  4,  1, 34,  0,  2,  0,  0,  0;"+
"10,  2,  1,  5,  1,  8,  0,  4,  7,  0,  0;"+
"} @lfo30 mp2,6,24,30;"+
"#OPM@2{"+
"6,  0;"+
"10,  2,  1, 10,  60, 70, 0, 0, 0, 0, 0;"+
"12,  2,  2,  8,  60, 20, 0, 3, 3, 0, 0;"+
"12,  1,  1,  8,  60,  0, 0, 2, 7, 0, 2;"+
"12,  1,  2,  8,  60, 10, 1, 1, 0, 0, 1;"+
"} @lfo11 mp2,24,24,60 ma2,24,2,30;"+
"#OPM@13{"+
"4,  6;"+
"20,  4,  0,  8,  0, 27,  0,  1,  1,  0,  0;"+
"18,  3,  1,  8,  1, 10,  0,  1,  1,  0,  0;"+
"15,  3,  0,  8,  2, 30,  0,  1,  7,  0,  0;"+
"13,  3,  0,  8,  3,  0,  0,  1,  3,  0,  0;"+
"};"+
"#OPM@3{"+
"4,  4;"+
"20,  5,  1,  9,  0, 30,  0,  1,  1,  0,  0;"+
"18,  5,  1, 10,  2, 20,  0,  1,  1,  0,  0;"+
"15,  2,  1,  9,  2, 30,  0,  1,  7,  0,  0;"+
"13,  2,  1, 10,  3, 10,  0,  2,  3,  0,  0;"+
"};"+
"#OPM@10{"+
"4,  7;"+
"18,  0,  0,  0,  0,  5, 0,  1, 7, 1, 2;"+
"18,  3,  9,  0,  0,  2, 1,  1, 0, 0, 2;"+
"18,  3,  5,  0,  0,  2, 0,  0, 3, 2, 1;"+
"18,  0,  0,  0,  0, 10, 1,  9, 0, 0, 1;"+
"} @lfo10 ma2,20,0,10;"+
"#I= %6@29 @v120 v16 o5  l12 q5;"+
"#J=%6@29 @v110 v14 o5 k-3 l12  q5 r12;"+
"#A= e(8e(5e)13 < a(8a(5a)13 > g(8g(5g(3g8)16 c8 d(8d(5d)13 d8 e8 < a(5a(5a(3a(a(a)15 >;"+
"#A+=e(8e(5e)13 < a(8a(5a)13 > g(8g(5g(3g8)16 c8d8e8d8c8 d(5d(5d(5d8)15 e8;"+
"#A+=f(8f(5f)13  c(8c(5c)13 a(8a(5a(3a8)16 f8g8e8d8e8 c(5c(5c(5c8)15; "+
"#A+=c8e-8c8<b-8>c8<g(5g(5g(5g8)15f8 [g(2]9r4;"+
"#K= %6@58 @v110 v12 o7 @lfo11 mp2,12,24,60  q6;"+
"#B= @q6e4<@q5a4>@q4g4.q6c8@q3d4q5d8q6e8q7<a2>;"+
"#B+= @q6e4<@q5a4>@q4g4.q6c8@q4d8e8d8c8d4.e8;"+
"#B+= @q6f4 @q5c4 @q4a4.q6f8@q3g8q7e8d8e8q7c4.q6c8;"+
"#B+= @q4e-8c8<b-8>c8<g4.b-8>q7c1;"+
"#S=  %6@60 @v110 o5 l4 q7;"+
"#S+= r<c<b>c> r<c<b>c> r<c<b>c> r<c<b>c;"+
"#S+= c<bag ebag ebag;"+
"#S+= eba;"+
"#L= [[p4c12&(2p3c24)2 p4d16&(2p3d16)2 ]8 ] [p4e12&(2p3e24)2 p4f+16&(2p3f+16)2 ]4 [p4f+12&(2p3f+24)2 p4g16&(2p3g16)2 ]4 [p4g12&(2p3g24)2 p4a16&(2p3a16)2 ]4 l8 p3bagf+gf+edp4;"+
"#M= [[p4a12&(2p5a24)2 p4b16&(2p5b16)2 ]8 ]  > [p4c12&(2p3c24)2 p4d16&(2p5d16)2 ]4 [p4d12&(2p5d24)2 p4e16&(2p5e16)2 ]4 [p4e12&(2p5e24)2 p4f+16&(2p5f+16)2 ]4 l8 p5gf+ededc<bp4;"+
"#L+= t80 %6@2 @v124 v15 o5 q7;"+
"#L+= f8e8d8c8d4.<a8>c4d4<g4a4 b4.>c8<a1^4;"+
"#L+= q8g2&(g32&(g32&(g32&(g32& (g32&(g32&(g32&(g32& (g32&(g32&(g32&(g32;"+
"#M+= %6@3 @v120 v15 o5 q7;"+
"#M+=r16 f8e8d8c8d4.<a8>c4d4<g4a4 b4.>c8<a1^8.;"+
"#M+= q7e2&(e8&(e32&e32&(e32&e32& (e32&e32&(e32&e32& (2e32&e32&(2e32&e32& (2e32&e32&(2e32&e32& (2e32&e32&(2e32&e32& (2e32&e32&(2e32&e32& (2e32&e32&(2e32&e32;"+
"IAKB t160 Sg4>> q8 L;"+
"JAK v9 B Sg6> q8 M;"+
"#K= %6@60 @v80 v0 o4 k3 q7;"+
"#L= %6@60 @v70 v0 o4 k6 q7;"+
"#M= %6@60 @v100 v0 o3 k1 q7;"+
"#C= c16&)2c16&)2c16&)2c16&)2c2 d8e8 d2.< a8b8 > c2. d8e8  f4)2b-8)2a8)2g4.e8;"+
"#D= e16&)2e16&)2e16&)2e16&)2e2. f+1 e1 d1;"+
"#E= a16&)2a16&)2a16&)2a16&)2a2. a1a1b-1;"+
"#C+=f2. e8d8 <g2. g8a8 b-2 f4.a-8;"+
"#D+=c1 e1 c1;"+
"#E+=a1 >c1  e-1;"+
"#F+=  v8 o4  c1 d1  c1 f1;"+
"#G+= v8  o4 e1 f+1 e1 d1;"+
"#H+= v8  o3 a1 a1  a1 b-1;"+
"#F+=  f1 <g1 a-2  f2  g4> )6  l32 d(6d)6e(6e)6f(6f)6g(6g)6 c(6c)6f(6f)6g(6g)6a(6a)6 g(6g)6a(6a)6b(6b)6>c(6c)6;"+
"#G+= c1  e1 c2  <b-2>c1;"+
"#H+=  a1 >c1 e-2  d2  e1;"+
"#T=%6@60@v90 v15 o5 k3 q7;"+
"#U= c1d1c1d1  e1f+1g1f+1;"+
"#S= a1b1a1b1 >c1d1 e1d1 <;"+
"#V= c1d1c1d1  e1f+1e1f+1;"+
"#X= c1d1c1d1  e1f+1e1f+2...;"+
"#W= a1b1a1b1 >c1d1 c1d1 <;"+
"KCg1F  Tp3UVK v9 o5 q7            p3 c2..<b8 a1 g2 f1^16 r8. q7c2^4&(c32&c32&(c32&c32& (c32&c32&(c32&c32& (c32&c32&(c32&c32& (c32&c32&(c32&c32& (c32&c32&(c32&c32;"+
"LD<b1G T v4 k7 p4 r16UXL v9 o4 q7 p4 a2.. g8 f1 e2 d1^16 r8.<q7g2^4&(g32&g32&(g32&g32& (g32&g32&(g32&g32& (g32&g32&(g32&g32& (g32&g32&(g32&g32& (g32&g32&(g32&g32;"+
"MEd1H  T %6@3 o5 SWM  v9 o4 q7    p5 f2.. e8 c1 c2<a1^16 r8. q7e2^4&(e32&e32&(e32&e32& (e32&e32&(e32&e32& (e32&e32&(e32&e32& (e32&e32&(e32&e32& (e32&e32&(e32&e32;"+
"#N= %6@29 @v100 o5 p4 l8 q4;"+
"#O= p2ap6dp4ep6gp2ap4dp2ep6g  p4ap6cp2f+p4g p2f+p6dp4c p6e;"+
"#O+=p2ap4dp2ep6gp4ap6dp2e>p4c< p2b-p6ep4f p6g p2b-p4ep2f p6g;"+
"#O+=p4ap6fp2gp4dp2ap6fp4g p6d  p2g p4cp2d<p6b>p4g p6cp2d<p4g>;"+
"#O+= e-<b->cfb-e-f<b->> c12< g12 b-12 f12 g12 d12 c16f16g16a16 f32g32a32b32;"+
"#Q= l24 q7[p2c(4c)4p6d(4d)4<p4b(4b)4>p6c(4c)4<p2a(4a)4p4b(4b)4p2g(4g)4p6a(4a)4p4f(4f)4>]4;"+
"#Q+= p6c(4c)4p2d(4d)4<p4b(4b)4>p2c(4c)4<p6a(4a)4p4b(4b)4p6g(4g)4p2a(4a)4p4f(4f)4p2g(4g)4p6e(4e)4p4f(4f)4;"+
"#Q+=[p2g(4g)4p6a(4a)4p4f+(4f+)4p6g(4g)4p2e(4e)4p4f+(4f+)4p2d(4d)4p6e(4e)4p4c(4c)4]4;"+
"#Q+= p6g(4g)4p2a(4a)4p4f+(4f+)4p2g(4g)4p6e(4e)4p4f+(4f+)4p6d(4d)4p2e(4e)4p4f+(4f+)4p2g(4g)4p6a(4a)4p4b(4b)4>;"+
"#Q+= [p2c(4c)4p6d(4d)4<p4b(4b)4>p6c(4c)4<p2a(4a)4p4b(4b)4p2g(4g)4p6a(4a)4p4f(4f)4>]4;"+
"#Q+= p6c(4c)4p2d(4d)4<p4b(4b)4>p2c(4c)4<p6a(4a)4p4b(4b)4p6g(4g)4p2a(4a)4p4b(4b)4>p2c(4c)4p6d(4d)4p4f+(4f+)4;"+
"#Q+= [p2e(4e)4p6f+(4f+)4p4d(4d)4p6e(4e)4p2c(4c)4p4d(4d)4<p2b(4b)4>p6c(4c)4<p4a(4a)4>]4;"+
"#Q+= p6<b(4b)4p2g(4g)4p4a(4a)4p2f+(4f+)4p6g(4g)4p4e(4e)4p6f+(4f+)4p2d(4d)4p4e(4e)4p2c(4c)4p6d(4d)4<p4b(4b)4;"+
"#P= %6@2 @v120 v16 k1 o5 q7;"+
"#P+= g1a1g1a1 g1a1g1a1;"+
"#P+= %6@3 c1d1c1d1 e1f+1e1f+1;"+
"#R= %6@58 @v110 v12 o6 @lfo11 mp2,12,24,60 q6 p4;"+
"#W= f8e8d8c8d4.<a8 g4a4>c4d4 q7e4.q2f16e16 q7 d2;"+
"#V= %6@29 p4 o5 q7;"+
"#V+= e16f16>c12(3c12(3c12 (2c12(2c12(2c12 (2c24(2c24(2c24;"+
"Kr16@v60Cg2... N v10 k2 O a32b32>c32r32 p4 Q RW  v15 V;"+
"Lr16@v60D<b2... N v8 k4 r16 O a32b32 P R v9 k5p5 r12W  v9 V;"+
"#H= v13)3a2^>(2e>(ced2^<bgd<;"+
"#H+=)3a2^>(2e(a>c<b-2^>fed;"+
"#H+=c2^<bgdc2^>c<ge;"+
"#H+=a-2b-4.dc4.>c<c16f16g16>c16<f16g16>c16f16<;"+
"#H+=(g2)<f2>(g2)<f2>(g2)<f2>(g2)<f2>;"+
"#H+=[a4<a4>a<aa4]3 a4<a4>cg>cf;"+
"#H+=(g2)<f2>(g2)<f2>(g2)<f2>(g2)<f2>;"+
"#H+=[a4<a4>>a4<<a4]3 a4<a4>>ae<ag;"+
"#H+=f2..ed2<g4a4> c6g6>c6 d1^4 < q7 a2&(2a2&a32&(2a32&a32& (2a32&a32&(2a32&a32&(2a32&a32&(2a32&(2a32;"+
"Mr16@v70Ed2... %6@1 @v124 v12 o3 k-7  p4 l8 q7H;"+
"%6@10 v3 q7 p3 o6 k2 l16 [r1]7 r2(c)c)c)2c)2c)2c c(c(c(c(c(c(c(c(c(c(c   r1r4.r [r1]5 v2 (cccc)c)c)c)c)c)c)c)c cccccccc(ccc(cc(c(cc(cc(cc(cc(cc(c   r1r4r8;"+
"%6@10 v3 q7 p5 o6 k-2 l16 [r1]7 r2(r32c)c)c)2c)2c)2c c(c(c(c(c(c(c(c(c(c(c1 r4.r32r [r1]5 v2 (r32cccc)c)c)c)c)c)c)c)c cccccccc(ccc(cc(c(cc(cc(cc(cc(cc(c1 r4.r32;"+
"#END;";

		public function EmbeddedMMLs()
		{
		}
		
	}
}
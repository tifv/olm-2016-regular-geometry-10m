import geometry;

size(5cm);

point
    pA = (0,0), pB = (4,0), pC = (3,3),
    pP = masscenter(mass(pA, 3), mass(pB, 2), mass(pC, 3)),
    pA1 = extension(pA, pP, pB, pC),
    pB1 = extension(pB, pP, pC, pA),
    pC1 = extension(pC, pP, pA, pB),
    pT = extension(pA, pP, pB1, pC1);

//draw(triangle(pA, pP, pC1), linewidth(1));
draw(triangle(pA, pP, pC1));
draw(pA--pC ^^ pB1--pB ^^ pC1--pB1);
draw(pC1--pB ^^ pP--pC);

dot(Label("$P$", pA, SW));
dot(Label("$Q$", pB, SE));
dot(Label("$R$", pC, N));
dot(Label("$S$", pP, S+SSE));
//dot(Label("$M$", pA1, NE));
dot(Label("$N$", pB1, WNW));
dot(Label("$K$", pC1, S));
dot(Label("$L$", pT, S+SW));


R = 6000; %range(mile)
E_loiter = 0.5; %Endurance in loiter phase(h)
Cj_cruise = 0.6; %specific fuel consumption in cruise phase
Cj_loiter = 0.45;%specific fuel consumption in loiter phase
V_cruise = 500;%cruise speed(knot)
LD = 0.25; %L/D
LD_cruise = 14;%L/D in cruise phase 
LD_loiter = 16;%L over D in loiter phase

W1_TO = 0.99;%W1/WTO(engine start, warm up)
W2_W1 = 0.99;%W2/W1(taxi)
W3_W2 = 0.99;%W3/W2(take-off)
W4_W3 = 0.988;%W4/W3(climb)
W5_W4 = 0.653;%W5/W4(cruise)
W6_W5 = 0.99;%W6/W5(descent)
W7_W6 = 0.986;%W7/W6(loiter)
W8_W7 = 0.99;%W12/W11(landind,taxi,shut down)

reserved = 5;%pecentage of reserved fuel
trapped = 0.5;%pecentage of trapped fuel
W_TO = linspace(0,300);%maximum take off weight(lb) 

Mff = 0.605;
Wf_flight = W_TO*(1-Mff);%the weight of fuel consumed during the flight(lb)
W_fuel = (1+reserved/100+trapped/100)*Wf_flight; %t
W_crews =  0.3 ;%(t)%weight of crew
W_payload = 40 ;%(t)%weight of payload

W_empty = W_TO-W_fuel-W_crews-W_payload; %(t)%empty weight(lb)
plot(W_TO,W_empty)
hold on

ylabel (' empty weight(t)')
xlabel ('take off weight(t)')


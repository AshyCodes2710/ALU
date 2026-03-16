  % To simulate the 3-Bit ALU we're making for our project.
function ALU_()
  % we have 2 types of inputs: bit input and operation input.
  % for the sake of readability we're gonna be calling them A,B and opIn.
  % opIn will look like 000, 001, 010, 011, 100, 101, 110, 111.

  opIn = randi([0,7]);
  op = dec2bin(opIn,3) - '0';

  % WHY ARE WE SUBTRACTING '0'?
  % dec2bin converts opIn to something like "011".
  % characters '0' and '1' have ASCII values 48 and 49.
  % subtracting '0' converts them into numeric bits.

  % A and B will also look like opIn, but we perform operations on them.
  % simulating random A and B inputs by using randi.

  A = randi([0 1],1,3);
  a = bin2dec(num2str(A));

  B = randi([0 1],1,3);
  b = bin2dec(num2str(B));

  switch(opIn)

  case 0
      opName = "ADD";
      out = dec2bin(mod(a+b,8),3) - '0';
      % "mod" helps us drop the carry. To keep our output a three bit binary.

  case 1
      opName = "SUB";
      out = dec2bin(mod(a-b,8),3) - '0';

  case 2
      opName = "AND";
      out = bitand(A,B);

  case 3
      opName = "OR";
      out = bitor(A,B);

  case 4
      opName = "NOT";
      out = bitxor(A,[1 1 1]); % we don't actually have a "not" so we do this instead.
  % xor of A against 1 is NOT.

  case 5
      opName = "NAND";
      out = bitxor(bitand(A,B),[1 1 1]);
  % same thing for NAND. But NAND is just

  case 6
      opName = "NOR";
      out = bitxor(bitor(A,B),[1 1 1]);

  case 7
      opName = "PASS";
      out = A; % buffer :)

  end

  printf("Operation Name: %s\n", opName);
  printf("A: %s\n", num2str(A));

  printf("B: %s\n", num2str(B));

  printf("OpIn: %s\n", num2str(op));

  printf("OUT: %s\n", num2str(out));
 end

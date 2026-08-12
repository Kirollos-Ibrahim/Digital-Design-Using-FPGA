module Automatic_Task;
  task automatic fixed_task;
    input  [3:0] delay;
    reg    [3:0] local_delay;
    begin
      local_delay = delay;
      #(local_delay);
      $display("delay=%0d @t=%0t", local_delay, $time);
    end
  endtask

  initial fixed_task(5);
  initial fixed_task(2);
endmodule
# Counter
The Code here contains the vhdl code for a counter chip with maximum 63. When the counter reaches 63 warning signal will
be turned on to notify the user. X signal adds to counter and Y signal substracts one from it. there is also a reset signal
in order to reset the count


## Signal Table
<table>
<tr>
    <td>X</td>
    <td>Adds one to the count on the rising edge</td>
</tr>
<tr>
    <td>Y</td>
    <td>removes one from the count on the rising edge</td>
</tr>
<td>
    <td>reset</td>
    <td>reset the count to 0</td>
</td>
<td>
    <td>Warn</td>
    <td>It is turned to one when count reaches maximum(63) </td>
</td>
<td>
    <td>clk</td>
    <td>clock for the chip</td>
</td>
</table>
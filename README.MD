# Counter VHDL Code with Finite State Design Model
This VHDL code implements a counter chip with a maximum value of 63, utilizing a finite state design model. The machine operates through three distinct states.

## State Table
<table>
<tr>
    <th>State</th>
    <th>Description</th>
    <th>Action</th>
</tr>
<tr>
	<td>init</td>
	<td>Triggered by the reset signal</td>
	<td>Sets the counter register to zero and the maximum occupancy register to the received signal value.</td>
</tr>
<tr>
	<td>idle</td>
	<td>Normal state of the machine</td>
	<td>Waits for incoming signals to initiate a change.</td>
</tr>
<tr>
	<td>change</td>
	<td>Triggered when X or Y is turned on</td>
	<td>Enters a signed adder state, incrementing or decrementing based on the activating signal. Does not activate if both X and Y are on or if count_reg has reached its maximum and X is on.</td>
</tr>
</table>

## Signal Table
<table>
<tr>
    <th>Signal</th>
    <th>Description</th>
</tr>
<tr>
    <td>Result</td>
    <td>Synchronized with the data stored in the register.</td>
</tr>
<tr>
    <td>X</td>
    <td>Increments the count</td>
</tr>
<tr>
    <td>Y</td>
    <td>Decrements the count</td>
</tr>
<tr>
    <td>reset</td>
    <td>Initialize the machine.</td>
</tr>
<tr>
    <td>Z</td>
    <td>Warning Signal</td>
</tr>
<tr>
    <td>max_occupancy</td>
    <td>Sets the maximum value for the counter.</td>
</tr>
</table>

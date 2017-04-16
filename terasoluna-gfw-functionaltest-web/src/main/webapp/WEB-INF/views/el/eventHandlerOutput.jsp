   <h2>EventHandler f:hjs()</h2>

<script type="text/javascript">
	function display(value) {
        document.getElementById("text").innerHTML = value;
	}
</script>

<input id="write" type="button" value="write" class="mainbtn"
	onclick="display('input ${f:hjs(xssAttack)}');">

<br>

<span id="text"></span>

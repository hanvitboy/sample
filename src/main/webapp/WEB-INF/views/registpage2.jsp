<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>signup-form2</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="resources/css/signup-form2.css" />
  <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
 <style>
 
 * {
  box-sizing: border-box;
  margin: 0;
}


body {
  font-family: "DM Sans", sans-serif;
  
}

/* Reset CSS */
a {
  color: inherit;
  text-decoration: none;
}

button,
input,
textarea {
  font-family: "DM Sans", sans-serif;
  font-size: 16px;
}

button:focus,
button:active,
input:focus,
input:active,
textarea:focus,
textarea:active {
  outline: none;
  box-shadow: none;
}

ol,
ul,
li {
  list-style-type: none;
  padding-left: 0;
  margin-left: 0;
}

/* signup-form2 */
.signup-form2 {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 100vh;
  width: 100%;
  background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
       url(resources/assets/login.jpg);
  background-repeat: no-repeat;
  background-size: cover;
}

html, body{
overflow-x: hidden;
overflow-y: hidden;

}

.signup-form2 h1 {
  font-size: 32px;
  letter-spacing: 0.3em;
  color: #fff;
  text-align: center;
  margin-bottom: 8px;
}

.signup-form2 h2 {
  font-size: 23px;
  letter-spacing: 0.3em;
  color: #fff;
  text-align: center;
  margin-bottom: 60px;
}

.signup-form2 h1 span {
  color: #f7ca18;
}

.information {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 100%;
}

.information input {
  color: #fff;
  border: none;
  border-bottom: 2px solid #f7ca18;
  border-radius: 5px;
  background-color: transparent;
}

#age-info,
#height-info,
#weight-info,
#activity-info,
#gender-info {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: left;
  width: 600px;
  position: relative;
  margin-top: 20px;
}

#age-info h4,
#height-info h4,
#weight-info h4,
#activity-info h4,
#gender-info h4 {
  color: #999;
}

#age-info:first-child {
  margin-top: 0;
}

#height-info span,
#weight-info span {
  color: #fff;
  position: absolute;
  right: -35px;
}

#height-info,
#weight-info,
.input-cm-kg {
  display: flex;
  align-items: center;
  position: relative;
}

.activity-option {
  display: flex;
  justify-content: space-between;
  margin-left: 50px;
}

.activity-option .form-radio {
  display: flex;
  align-items: center;
  color: #999;
  margin-right: 40px;
}

.box {
  height: 20px;
  width: 160px;
  color: #17202a;
  border-radius: 5px;
  outline: none;
  border: none;
  padding: 9px;
}

.signup-form2 .sub1 {
  width: 20%;
  height: 50px;
  background: #166cea;
  color: #fff;
  font-size: 20px;
  letter-spacing: 0.05em;
  border: none;
  border-radius: 25px;
}

.genderForm {
  width: 268px;
}
.genderoption {
  display: flex;
  justify-content: space-between;
}

.genderoption label {
  color: #999;
}

.manoption {
  margin-right: 40px;
}

.form-radio::before {
  content: "";
  display: inline-block;
  width: 10px;
  height: 10px;
  background: #ffffff;
  border: 1px solid #e0e0e0;
  margin-right: 8px;
}
.form-radio::before {
  border-radius: 50%;
}
.input-chek,
.input-radio {
  display: none;
}
.input-chek:checked + .form-chek::before,
.input-radio:checked + .form-radio::before {
  background: #f7ca18;
  transition: all 0.5s;
}
.input-chek:checked + .form-chek,
.input-radio:checked + .form-radio {
  color: #f7ca18;
  transition: all 0.5s;
}

#btn-area .btn-next {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 200px;
  height: 40px;
  line-height: 40px;
  border: 2px solid #f7ca18;
  border-radius: 5px;
  margin: 15px auto;
  font-size: 20px;
  text-align: center;
  cursor: pointer;
  color: #999;
  transition: all 0.9s, color 0.3;
}

#btn-area .btn-next:hover {
  color: #fff;
  box-shadow: 200px 0 0 0 #f7ca18 inset;
  background-color: #f7ca18;
  transition: all 0.5s;
}
 
 #btn-area .btn-next {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 200px;
  height: 40px;
  line-height: 40px;
  border: 2px solid #f7ca18;
  border-radius: 5px;
  margin: 15px auto;
  font-size: 20px;
  text-align: center;
  cursor: pointer;
  color: #999;
 background-color : rgb(99,98,80);
  transition: all 0.9s, color 0.3;
}
 

 /* <=786px (mobile) */

@media screen and (max-width:768px) {
  #age-info h4,
  #height-info h4,
  #weight-info h4,
  #activity-info h4,
  #gender-info h4 {
    font-size: 18px;
    text-align: center;
  }
  
  #height-info span,
  #weight-info span{
    position: absolute;
    right: -15%;
    font-size: 15px;
  }
}
 
 
 </style>
  </head>
  <body>
    <section class="signup-form2">
      <h1>
        <form id="actionForm" action="loginpage" method="post">
           <a id="home" href="http://localhost:9090/controller/"><strong><span>fit</span>ness</strong></a>
      	</form>
      </h1>
      <h2>SIGNUP</h2>
      <div class="information">
      <form class="actionForm" action="/controller/register" method="post">
      
      <input type="hidden" name="name" value="${member.name }">
      <input type="hidden" name="id" value="${member.id }">
      <input type="hidden" name="pw" value="${member.pw }">
      
        <div id="age-info">
          <h4>How old are you?</h4>
          <input
            type="number"
            class="box"
            list="Age"
            name="age"
            placeholder="age"
            required
          />
          <datalist id="Age">
            <option value="18">18</option>
            <option value="19">19</option>
            <option value="20">20</option>
            <option value="21">21</option>
            <option value="22">22</option>
            <option value="23">23</option>
            <option value="24">24</option>
            <option value="25">25</option>
            <option value="26">26</option>
            <option value="27">27</option>
            <option value="28">28</option>
            <option value="29">29</option>
            <option value="30">30</option>
            <option value="31">31</option>
            <option value="32">32</option>
            <option value="33">33</option>
            <option value="34">34</option>
            <option value="35">35</option>
            <option value="36">36</option>
            <option value="37">37</option>
            <option value="38">38</option>
            <option value="39">39</option>
            <option value="40">40</option>
            <option value="41">41</option>
            <option value="42">42</option>
            <option value="43">43</option>
            <option value="44">44</option>
            <option value="45">45</option>
            <option value="46">46</option>
            <option value="47">47</option>
            <option value="48">48</option>
            <option value="49">49</option>
            <option value="50">50</option>
            <option value="51">51</option>
            <option value="52">52</option>
            <option value="53">53</option>
            <option value="54">54</option>
            <option value="55">55</option>
            <option value="56">56</option>
            <option value="57">57</option>
            <option value="58">58</option>
            <option value="59">59</option>
            <option value="60">60</option>
            <option value="61">61</option>
            <option value="62">62</option>
            <option value="63">63</option>
            <option value="64">64</option>
            <option value="65">65</option>
          </datalist></div>
          <div id="height-info">
        
          <h4>How tall are you?</h4>
          <div class="input-cm-kg">
            <input
              type="number"
              class="box"
              list="Height"
              name="height"
              placeholder="height"
              required
            />
            <datalist id="Height">
              <option value="140">140</option>
              <option value="141">141</option>
              <option value="142">142</option>
              <option value="143">143</option>
              <option value="144">144</option>
              <option value="145">145</option>
              <option value="146">146</option>
              <option value="147">147</option>
              <option value="148">148</option>
              <option value="149">149</option>
              <option value="150">150</option>
              <option value="151">151</option>
              <option value="152">152</option>
              <option value="153">153</option>
              <option value="154">154</option>
              <option value="155">155</option>
              <option value="156">156</option>
              <option value="157">157</option>
              <option value="158">158</option>
              <option value="159">159</option>
              <option value="160">160</option>
              <option value="161">161</option>
              <option value="162">162</option>
              <option value="163">163</option>
              <option value="164">164</option>
              <option value="165">165</option>
              <option value="166">166</option>
              <option value="167">167</option>
              <option value="168">168</option>
              <option value="169">169</option>
              <option value="170">170</option>
              <option value="171">171</option>
              <option value="172">172</option>
              <option value="173">173</option>
              <option value="174">174</option>
              <option value="175">175</option>
              <option value="176">176</option>
              <option value="177">177</option>
              <option value="178">178</option>
              <option value="179">179</option>
              <option value="180">180</option>
              <option value="181">181</option>
              <option value="182">182</option>
              <option value="183">183</option>
              <option value="184">184</option>
              <option value="185">185</option>
              <option value="186">186</option>
              <option value="187">187</option>
              <option value="188">188</option>
              <option value="189">189</option>
              <option value="190">190</option>
              <option value="191">191</option>
              <option value="192">192</option>
              <option value="193">193</option>
              <option value="194">194</option>
              <option value="195">195</option>
              <option value="196">196</option>
              <option value="197">197</option>
              <option value="198">198</option>
              <option value="199">199</option>
              <option value="200">200</option>
            </datalist>
            <span>cm</span>
          </div>
        </div>
       <div id="weight-info">
          <h4>How much do you weight?</h4>
          <div class="input-cm-kg">
            <input
              type="number"
              class="box"
              list="Weight"
              name="weight"
              placeholder="weight"
              required
            />
            <datalist id="Weight">
              <option value="45">45</option>
              <option value="46">46</option>
              <option value="47">47</option>
              <option value="48">48</option>
              <option value="49">49</option>
              <option value="50">50</option>
              <option value="51">51</option>
              <option value="52">52</option>
              <option value="53">53</option>
              <option value="54">54</option>
              <option value="55">55</option>
              <option value="56">56</option>
              <option value="57">57</option>
              <option value="58">58</option>
              <option value="59">59</option>
              <option value="61">61</option>
              <option value="62">62</option>
              <option value="63">63</option>
              <option value="64">64</option>
              <option value="65">65</option>
              <option value="66">66</option>
              <option value="67">67</option>
              <option value="68">68</option>
              <option value="69">69</option>
              <option value="70">70</option>
              <option value="71">71</option>
              <option value="72">72</option>
              <option value="73">73</option>
              <option value="74">74</option>
              <option value="75">75</option>
              <option value="76">76</option>
              <option value="77">77</option>
              <option value="78">78</option>
              <option value="79">79</option>
              <option value="81">81</option>
              <option value="82">82</option>
              <option value="83">83</option>
              <option value="84">84</option>
              <option value="85">85</option>
              <option value="86">86</option>
              <option value="87">87</option>
              <option value="88">88</option>
              <option value="89">89</option>
              <option value="90">90</option>
              <option value="91">91</option>
              <option value="92">92</option>
              <option value="93">93</option>
              <option value="94">94</option>
              <option value="95">95</option>
              <option value="96">96</option>
              <option value="97">97</option>
              <option value="98">98</option>
              <option value="99">99</option>
              <option value="101">101</option>
              <option value="102">102</option>
              <option value="103">103</option>
              <option value="104">104</option>
              <option value="105">105</option>
              <option value="106">106</option>
              <option value="107">107</option>
              <option value="108">108</option>
              <option value="109">109</option>
              <option value="110">110</option>
              <option value="111">111</option>
              <option value="112">112</option>
              <option value="113">113</option>
              <option value="114">114</option>
              <option value="115">115</option>
              <option value="116">116</option>
              <option value="117">117</option>
              <option value="118">118</option>
              <option value="119">119</option>
              <option value="120">120</option>
            </datalist>
            <span>kg</span>
          </div>
          </div>
     <div id="activity-info">
          <h4>How much activity do you have in a day?</h4>
          <div class="activity-option">
            <input
              type="radio"
              id="few"
              name="actindex"
              class="input-radio"
              value="25"
              required
            />
            <label for="few" class="form-radio">few</label>
            <input
              type="radio"
              id="usual"
              name="actindex"
              class="input-radio"
              value="33"
              required
            />
            <label for="usual" class="form-radio">usual</label>
            <input
              type="radio"
              id="many"
              name="actindex"
              class="input-radio"
              value="40"
              required
            />
            <label for="many" class="form-radio">many</label>
          </div>
          </div>
        <div id="gender-info">
          <h4>What's your gender?</h4>
          <div class="genderoption">
            <div class="manoption">
              <input
                type="radio"
                id="Man"
                name="gender"
                class="input-radio"
                value="MAN"
                required
              />
              <label for="Man" class="form-radio">Man</label>
            </div>
            <div class="womanoption">
              <input
                type="radio"
                id="Woman"
                name="gender"
                class="input-radio"
                value="WOMAN"
                required
              />
              <label for="Woman" class="form-radio">Woman</label>
            </div>
          </div>
        </div>
        <div id="btn-area">
           <button class="btn-next" type="submit">REGIST</button>
        </div>
        </form>
      </div>
    </section>
      <script type="text/javascript">
      
            	 
  const pointAge = document.getElementById("age-info");
  const blankAge = document.querySelector("#age-info input");

  function resetAge(event) {
    blankAge.value = "";
  }

  pointAge.addEventListener("click", resetAge);

  const pointheight = document.getElementById("height-info");
  const blankheight = document.querySelector("#height-info .input-cm-kg input");

  function resetheight(event) {
    blankheight.value = "";
  }

  pointheight.addEventListener("click", resetheight);

  const pointweight = document.getElementById("weight-info");
  const blankweight = document.querySelector("#weight-info .input-cm-kg input");

  function resetweight(event) {
    blankweight.value = "";
  }

  pointweight.addEventListener("click", resetweight);

  var actionForm = $(".actionForm");
  
  $(document).ready(function(){
	 
		$(".btn-next").on("click",function(){
		
			 if($('input:radio[name=gender]').is(':checked')) {
				  if($('input:radio[name=actindex]').is(':checked')) {
					  $(".actionForm").submit();
					  return true;
				  }						
				  alert('必ず全て入力してください。');
				  return false; 
				  }
				  alert('必ず全て入力してください。');
				  return false;
				  		
		})
		
		
			$("#home").on("click",function(e){
            			e.preventDefault();
            			actionForm.attr("action", "/controller/home").attr("method", "post");
            			actionForm.submit();
            		})
	  


  })
		
  
  
  
            	</script>
   
  </body>
</html>
	
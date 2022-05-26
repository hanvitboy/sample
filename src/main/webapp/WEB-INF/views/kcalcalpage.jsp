<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<%@ include file="header.jsp" %>
    <link rel="stylesheet" href="resources/css/style.css" />
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
  <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
     <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css" />
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<style>

.TodayKcal,
.recommendedKcal{
  display: flex;
  justify-content: center;
  align-items: center;
 font-family: "Noto Sans JP", sans-serif;
}

.calSubmit{
  display: flex;
  justify-content: center;
  align-items: center;
}
.calSumit_btn {
  background-color: transparent;
  display: flex;
  justify-content: center;
  align-items: center;
  width: 200px;
  height: 40px;

  border: 3px solid #f7ca18;
  border-radius: 5px;
  margin: 15px auto;
  font-size: 20px;
  text-align: center;
  cursor: pointer;
  color: #999;
  transition: all 0.9s, color 0.3;
  font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif
}

.fixedCalBox{
width:250px;
height: 300px;


font-size: 13px;
font-weight: 600;
display: flex;
flex-direction: column;
justify-content: space-evenly;
align-items: center;
background-color: black;
color:white;
border-radius: 30px;
box-shadow:10px 20px 50px rgba(0,0,0,0.10), 0 10px 10px rgba(0,0,0,0.10);
border: 4px solid yellow;

position:fixed;
bottom:40px;
right:50px;
overflow: hidden;

}
.exampleBox{
width:250px;
height: 350px;


font-size: 13px;
font-weight: 600;
display: flex;
flex-direction: column;
justify-content: space-evenly;
align-items: center;
background-color: black;
color:white;
border-radius: 30px;
box-shadow:10px 20px 50px rgba(0,0,0,0.10), 0 10px 10px rgba(0,0,0,0.10);
border: 4px solid yellow;

position:fixed;
bottom:50px;
left:50px;
overflow: hidden;

}


.calSumit_btn:hover {
  color: #fff;
  box-shadow: 200px 0 0 0 #f7ca18 inset;
  background-color: #f7ca18;
  transition: all 0.5s;
}


#kcalFromBack1,
#kcalFromBack2{
 
  height: 100%;
  width: 16%;
  background: none;
   color: inherit;
   border: none;
   padding: 0;
   font: inherit;
   cursor:default;
  pointer-events: none;
   outline: inherit;
  font-weight: 700;
  font-size: 17px;
  text-shadow: 2px 2px blueviolet;
}



</style>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	/* $("button").on("click", function(e) {
		e.preventDefault();
		$("input[type='checkbox']:checked").each(function(){
			const value = $(this).val();
			console.log(value);
			
		})
	})*/
	
	$("input[type='checkbox']").on("click", function() {
		
		var value = $("#kcalFromBack1").val();
		
		$("input[type='checkbox']:checked").each(function(){
			value -= parseInt($(this).val());
			
		})
		/*
		$("input[type='checkbox']:checked").each(function(){
			value += parseInt($(this).val());
			
		})
		*/
		var saveData = $("#kcalFromBack2").val(value);
		
	})
	
})
</script>
 <link href="resources/css/calstyle.css" rel="stylesheet">
<body>


<main class="Boxes">
      <section class="Box1">
        <div class="BoxTitle">
          <span><i class="fa-solid fa-person"></i>Activity</span>
        </div>
        <div class="checkbox-group">
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-400" />
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-dumbbell"></i>
                </span>
                <span class="checkbox-label">work-out</span>
                <div class="showUp">400 kcls</div>
              </span>
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-100" />
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-briefcase"></i>
                </span>
                <span class="checkbox-label">work</span>
                <div class="showUp">100 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-200" />
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-walking"></i>
                </span>
                <span class="checkbox-label">walk</span>
                <div class="showUp">200 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-500" />
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-running"></i>
                </span>
                <span class="checkbox-label">running</span>
                <div class="showUp">500 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-600"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-biking"></i>
                </span>
                <span class="checkbox-label">cycling</span>
                <div class="showUp">600 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-400"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-bed"></i>
                </span>
                <span class="checkbox-label">sleep</span>
                <div class="showUp">400 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-60" />
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-mobile-alt"></i>
                </span>
                <span class="checkbox-label">phone</span>
                <div class="showUp">60 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-120"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-book-open"></i>
                </span>
                <span class="checkbox-label">study</span>
                <div class="showUp">120 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-600"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-futbol"></i>
                </span>
                <span class="checkbox-label">soccer</span>
                <div class="showUp">600 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-400"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-basketball-ball"></i>
                </span>
                <span class="checkbox-label">basketball</span>
                <div class="showUp">400 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-500"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-swimmer"></i>
                </span>
                <span class="checkbox-label">swim</span>
                <div class="showUp">500 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-350"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-venus-mars"></i
                ></span>
                <span class="checkbox-label">yas</span>
                <div class="showUp">350 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-200"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-bowling-ball"></i>
                </span>
                <span class="checkbox-label">bowlinng</span>
                <div class="showUp">200 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-400"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-table-tennis"></i>
                </span>
                <span class="checkbox-label">ping-pong</span>
                <div class="showUp">400 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-150"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"> <i class="fas fa-music"></i></span>
                <span class="checkbox-label">sing</span>
                <div class="showUp">150 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-500"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-mountain"></i
                ></span>
                <span class="checkbox-label">climbing</span>
                <div class="showUp">500 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-300"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-golf-ball"></i
                ></span>
                <span class="checkbox-label">golf</span>
                <div class="showUp">300 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-280"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-skating"></i
                ></span>
                <span class="checkbox-label">skating</span>
                <div class="showUp">280 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-350"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-skiing"></i></span>
                <span class="checkbox-label">skiing</span>
                <div class="showUp">350 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-220"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-baseball"></i
                ></span>
                <span class="checkbox-label">baseball</span>
                <div class="showUp">220 kcls</div></span
              >
            </label>
          </div>
        </div>
      </section>
      <section class="Box2">
        <div class="BoxTitle">
          <span
            ><i class="fa-solid fa-spoon"></i>Consume calories for
            Breakfast</span
          >
        </div>
        <div class="checkbox-group">
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="155"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-egg"></i>
                </span>
                <span class="checkbox-label">egg</span>
                <div class="showUp">155 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="264"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fa-solid fa-bread-slice"></i
                ></span>
                <span class="checkbox-label">bread</span>
                <div class="showUp">264 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="600"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-pizza-slice"></i>
                </span>

                <span class="checkbox-label">pizza</span>
                <div class="showUp">600 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="100"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fa-solid fa-apple-whole"></i
                ></span>
                <span class="checkbox-label">apple</span>
                <div class="showUp">100 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="580"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fa-solid fa-burger"></i>
                </span>
                <span class="checkbox-label">burger</span>
                <div class="showUp">580 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="500" />
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-hotdog"></i></span>
                <span class="checkbox-label">hotdog</span>
                <div class="showUp">500 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input"  value="150"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-seedling"></i
                ></span>
                <span class="checkbox-label">salad</span>
                <div class="showUp">150 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="300"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-fish"></i></span>
                <span class="checkbox-label">grilled-fish</span>
                <div class="showUp">300 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="550"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-cookie"></i>
                </span>
                <span class="checkbox-label">snack</span>
                <div class="showUp">550 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="600"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-cheese"></i>
                </span>
                <span class="checkbox-label">cake</span>
                <div class="showUp">600 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="220"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-ice-cream"></i>
                </span>
                <span class="checkbox-label">ice-cream</span>
                <div class="showUp">220 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="750"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-bacon"></i> </span>
                <span class="checkbox-label">pork-belly</span>
                <div class="showUp">750 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="800"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-drumstick-bite"></i>
                </span>
                <span class="checkbox-label">chicken</span>
                <div class="showUp">800 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="100"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-candy-cane"></i>
                </span>
                <span class="checkbox-label">candy</span>
                <div class="showUp">100 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="444"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-beer"></i> </span>
                <span class="checkbox-label">alcohol</span>
                <div class="showUp">444 kcls</div></span
              >
            </label>
          </div>
        </div>
      </section>
      <section class="Box3">
               <div class="BoxTitle">
          <span
            ><i class="fa-solid fa-spoon"></i>Consume calories for
            Lunch</span
          >
        </div>
        <div class="checkbox-group">
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="155"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-egg"></i>
                </span>
                <span class="checkbox-label">egg</span>
                <div class="showUp">155 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="264"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fa-solid fa-bread-slice"></i
                ></span>
                <span class="checkbox-label">bread</span>
                <div class="showUp">264 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="600"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-pizza-slice"></i>
                </span>

                <span class="checkbox-label">pizza</span>
                <div class="showUp">600 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="100"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fa-solid fa-apple-whole"></i
                ></span>
                <span class="checkbox-label">apple</span>
                <div class="showUp">100 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="580"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fa-solid fa-burger"></i>
                </span>
                <span class="checkbox-label">burger</span>
                <div class="showUp">580 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="500" />
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-hotdog"></i></span>
                <span class="checkbox-label">hotdog</span>
                <div class="showUp">500 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input"  value="150"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-seedling"></i
                ></span>
                <span class="checkbox-label">salad</span>
                <div class="showUp">150 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="300"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-fish"></i></span>
                <span class="checkbox-label">grilled-fish</span>
                <div class="showUp">300 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="550"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-cookie"></i>
                </span>
                <span class="checkbox-label">snack</span>
                <div class="showUp">550 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="600"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-cheese"></i>
                </span>
                <span class="checkbox-label">cake</span>
                <div class="showUp">600 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="220"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-ice-cream"></i>
                </span>
                <span class="checkbox-label">ice-cream</span>
                <div class="showUp">220 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="750"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-bacon"></i> </span>
                <span class="checkbox-label">pork-belly</span>
                <div class="showUp">750 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="800"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-drumstick-bite"></i>
                </span>
                <span class="checkbox-label">chicken</span>
                <div class="showUp">800 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="100"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-candy-cane"></i>
                </span>
                <span class="checkbox-label">candy</span>
                <div class="showUp">100 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="444"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-beer"></i> </span>
                <span class="checkbox-label">alcohol</span>
                <div class="showUp">444 kcls</div></span
              >
            </label>
          </div>
        </div>
      </section>
      <section class="Box4">
               <div class="BoxTitle">
          <span
            ><i class="fa-solid fa-spoon"></i>Consume calories for
            Dinner</span
          >
        </div>
        <div class="checkbox-group">
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="155"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-egg"></i>
                </span>
                <span class="checkbox-label">egg</span>
                <div class="showUp">155 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="264"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fa-solid fa-bread-slice"></i
                ></span>
                <span class="checkbox-label">bread</span>
                <div class="showUp">264 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="600"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-pizza-slice"></i>
                </span>

                <span class="checkbox-label">pizza</span>
                <div class="showUp">600 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="100"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fa-solid fa-apple-whole"></i
                ></span>
                <span class="checkbox-label">apple</span>
                <div class="showUp">100 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="580"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fa-solid fa-burger"></i>
                </span>
                <span class="checkbox-label">burger</span>
                <div class="showUp">580 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="500" />
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-hotdog"></i></span>
                <span class="checkbox-label">hotdog</span>
                <div class="showUp">500 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input"  value="150"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-seedling"></i
                ></span>
                <span class="checkbox-label">salad</span>
                <div class="showUp">150 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="300"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-fish"></i></span>
                <span class="checkbox-label">grilled-fish</span>
                <div class="showUp">300 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="550"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-cookie"></i>
                </span>
                <span class="checkbox-label">snack</span>
                <div class="showUp">550 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="600"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-cheese"></i>
                </span>
                <span class="checkbox-label">cake</span>
                <div class="showUp">600 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="220"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-ice-cream"></i>
                </span>
                <span class="checkbox-label">ice-cream</span>
                <div class="showUp">220 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="750"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-bacon"></i> </span>
                <span class="checkbox-label">pork-belly</span>
                <div class="showUp">750 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="800"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-drumstick-bite"></i>
                </span>
                <span class="checkbox-label">chicken</span>
                <div class="showUp">800 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="100"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-candy-cane"></i>
                </span>
                <span class="checkbox-label">candy</span>
                <div class="showUp">100 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="444"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-beer"></i> </span>
                <span class="checkbox-label">alcohol</span>
                <div class="showUp">444 kcls</div></span
              >
            </label>
          </div>
        </div>
      </section>
        <footer>
      <div class="property">
        <p>
          © 2022 fitness Pty Ltd. Trademarks and brands are the property of
          their respective owners.
        </p>
      </div>
      <div class="number">
        <p>利用規約</p>
        <p>問い合わせ:090-0000-0000</p>
      </div>
    </footer>
      
    </main>
    
      <form action="/controller/savekcal" method="post">
    <div class="fixedCalBox">
      <div class="recommendedKcal">
        <span>一日摂取可能量:</span> <input type="text" id="kcalFromBack1" value="${login_user.onedaykcal}" readonly/>
        <span>kcals</span>
      </div>
      <div class="TodayKcal">
        <span>まだ食べれるカロリー:</span> <input type="text" id="kcalFromBack2" name="cal" value="${login_user.onedaykcal}" readonly/>
        <span>kcals</span>
      </div>
      <div class="calSubmit">
        <input class="calSumit_btn" type="submit" value="SAVE" />
      </div>  
    </div> </form>
      
      <div class="exampleBox">
      <div class="recommendedKcal">
         <span>結果値がプラスならダイエット成功</span>
      </div>
      <div class="recommendedKcal">
        <span>１回目やせたカロリー</span> <input type="text" id="kcalFromBack1" value="${user_kcal.d1}"   <c:if test='${user_kcal.next == 2}'>style="background-color: #f7ca18;"</c:if> readonly/>
        <span>kcals</span>
      </div>
      <div class="TodayKcal">
        <span>２回目やせたカロリー</span> <input type="text" id="kcalFromBack2" name="cal" value="${user_kcal.d2}"   <c:if test='${user_kcal.next == 3}'>style="background-color: #f7ca18;"</c:if> readonly/>
        <span>kcals</span>
      </div>
      <div class="TodayKcal">
        <span>３回目やせたカロリー</span> <input type="text" id="kcalFromBack2" name="cal" value="${user_kcal.d3}"   <c:if test='${user_kcal.next == 4}'>style="background-color: #f7ca18;"</c:if>  readonly/>
        <span>kcals</span>
      </div>
      <div class="TodayKcal">
        <span>４回目やせたカロリー</span> <input type="text" id="kcalFromBack2" name="cal" value="${user_kcal.d4}"   <c:if test='${user_kcal.next == 5}'>style="background-color: #f7ca18;"</c:if> readonly/>
        <span>kcals</span>
      </div>
      <div class="TodayKcal">
        <span>５回目やせたカロリー</span> <input type="text" id="kcalFromBack2" name="cal" value="${user_kcal.d5}"   <c:if test='${user_kcal.next == 6}'>style="background-color: #f7ca18;"</c:if> readonly/>
        <span>kcals</span>
      </div>
      <div class="TodayKcal">
        <span>６回目やせたカロリー</span> <input type="text" id="kcalFromBack2" name="cal" value="${user_kcal.d6}"    <c:if test='${user_kcal.next == 7}'>style="background-color: #f7ca18;"</c:if> readonly/>
        <span>kcals</span>
      </div>
      <div class="TodayKcal">
        <span>７回目やせたカロリー</span> <input type="text" id="kcalFromBack2" name="cal" value="${user_kcal.d7}"   <c:if test='${user_kcal.next == 1}'>style="background-color: #f7ca18;"</c:if> readonly/>
        <span>kcals</span>
      </div>
   
    </div>
 
    <script
      src="https://kit.fontawesome.com/99b96296a9.js"
      crossorigin="anonymous"
    ></script>
    <script
      type="module"
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
    ></script>
    <script
      nomodule
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
    ></script>
    
    <script>
     var actionForm = $(".actionForm");
            	$(document).ready(function(){
            		$(".button-login").on("click",function(e){
            			e.preventDefault();
            			actionForm.attr("action", "/controller/loginpage").attr("method", "post");
            			actionForm.submit();
            		})
            		$(".button-signup").on("click",function(e){
            			e.preventDefault();
            			actionForm.attr("action", "/controller/registpage").attr("method", "post");
            			actionForm.submit();
            		})
            		$(".button-logout").on("click",function(e){
            			e.preventDefault();
            			actionForm.attr("action", "/controller/logout");
            			actionForm.submit();
            		})
            		$(".button-info").on("click",function(e){
            			e.preventDefault();
            			actionForm.attr("action", "/controller/infopage").attr("method", "post");
            			actionForm.submit();
            		})
            		$(".button-list").on("click",function(e){
            			e.preventDefault();
            			actionForm.attr("action", "/controller/listpage");
            			actionForm.submit();
            		})
            		
            			$(".button-home").on("click",function(e){
            			e.preventDefault();
            			actionForm.attr("action", "/controller/home").attr("method", "post");
            			actionForm.submit();
            		})
            		$("#calo").on("click",function(e){
            			e.preventDefault();
            			actionForm.attr("action", "/controller/kcalcalpage").attr("method", "post");
            			actionForm.submit();
            		})
            		$("#nav-listboard").on("click",function(e){
            			e.preventDefault();
            			actionForm.attr("action", "/controller/board/boardpage").attr("method", "get");
            			actionForm.submit();
            		})
            	})
            	</script>
  </body>
</html>

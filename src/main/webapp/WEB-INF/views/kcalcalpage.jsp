<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<%@ include file="header.jsp" %>
    
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
  <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@400;700&display=swap"
      rel="stylesheet"
    />
     <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css" />
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <link rel="stylesheet" href="resources/css/style.css" />
    <link href="resources/css/calstyle.css" rel="stylesheet">
    <link href="resources/css/calstyle2.css" rel="stylesheet">
    
    <style>
    
    .fixedCalBox{
      display: flex;
      width:230px;
      height: 240px;
      font-size: 12px;
      font-weight: 600;
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
      overflow: hidden;}
      
      .fixedGraphBox{
  display:flex;  
  justify-content: space-evenly;
  flex-direction: column;
  border-radius: 30px;
  box-shadow:10px 20px 50px rgba(0,0,0,0.10), 0 10px 10px rgba(0,0,0,0.10);
  border: 4px solid yellow;
  height: 350px;
  width: 370px;
  background-color: black;
  color: white;

  position:fixed;
  bottom:40px;
  left:50px;
  overflow: hidden;

}
    
    .checkbox-tile::before {
  content: "";
  position: absolute;
  width: 1.25rem;
  height: 1.25rem;
  border: 3px solid var(--darker-color);
  border-radius: 50%;
  top: 0.25rem;
  left: 00.25rem;
  transition: 0.25s ease;
  background-image: url("resources/assets/check.png");
  background-size: 35px;
  background-position: 50%;
  transform: scale(0);
}
 
 
     .hidden-btn-calBox{
      position:absolute;
      border:none;
      bottom:50px;
      right:50px;
     display: flex;
     justify-content: center;
     align-items: center;
     height:80px;
     width:80px;
     font-size: 40px;
     border-radius: 20px;
     background-color: orange;
     cursor:pointer;

    }



    .hidden-btn-graphBox{
      position:absolute;
      border:none;
      bottom:50px;
      left:50px;
     display: flex;
     justify-content: center;
     align-items: center;
     height:80px;
     width:80px;
     font-size: 40px;
     border-radius: 20px;
     background-color: orange;
     cursor:pointer;
   
    
    }
    
    
        .hidden-calBox__back-btn{
      display:flex;
      justify-content: center;
      align-items: center;
      border-radius: 10px;
      width:28px;
      height:28px;
      position: absolute;
      left:7px;
      top:7px;
      border: 2px solid yellow;
      background-color: black;
      color:white;
      cursor: pointer;

    }
    .hidden-GraphBox__back-btn
    {display:flex;
    justify-content: center;
    align-items: center;
      border-radius: 10px;
      width:28px;
      height:28px;
      position: absolute;
      left:7px;
      top:7px;
      border: 2px solid yellow;
      background-color: black;
      color:white;
      cursor: pointer;
   }

   .hidden-calBox__back-btn:hover,
   .hidden-GraphBox__back-btn:hover {
    color: #fff;
    box-shadow: 200px 0 0 0 #f7ca18 inset;
    background-color: #f7ca18;
    transition: all 0.7s;
  }
  
  #kcalFromgoal
  {
 
  height: 100%;
  width: 22%;
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

#redinfo{
color: tomato;


}
  ::-webkit-scrollbar {
display: none;
}
  
          @media screen and (max-width: 768px){
     	
     	footer{
     	display:none;
     	}
     
    
        .Boxes{
    
          width: 100%;
        }

     

        .ad-box1,
        .ad-box2{

          display: none;
        }
    

 

        .fixedGraphBox{
          flex-direction: column;
          justify-content:space-evenly;
          align-items: center;
          border-radius: 30px;
          box-shadow:10px 20px 50px rgba(0,0,0,0.10), 0 10px 10px rgba(0,0,0,0.10);
          border: 4px solid yellow;
          height: 350px;
          width: 270px;
          background-color: black;
          color: white;
          position:fixed;
          bottom:10px;
          left:10px;
          overflow: hidden;
          z-index: 99;
          display: none;
  
        }

    

        .fixedCalBox{
          width:200px;
          height: 240px;
          font-size: 12px;
          font-weight: 600;
          flex-direction: column;
         justify-content: space-evenly;
          align-items: center;
          background-color: black;
          color:white;
          border-radius: 30px;
          box-shadow:10px 20px 50px rgba(0,0,0,0.10), 0 10px 10px rgba(0,0,0,0.10);
          border: 4px solid yellow;
          position:fixed;
          bottom:10px;
          right:18px;
          overflow:visible;
          z-index:99;
          display: none;
      


        }



        .hidden-btn-graphBox{
        position:absolute;
        border:none;
        bottom:10px;
        left:20px;
       display: flex;
       justify-content: center;
       align-items: center;
       height:50px;
       width:50px;
       font-size: 22px;
       border-radius: 20px;
       background-color: orange;
       cursor:pointer;

        }


        .hidden-btn-calBox{
          position:absolute;
          border:none;
          bottom:10px;
          right:40px;
         display: flex;
         justify-content: center;
         align-items: center;
         height:50px;
         width:50px;
         font-size: 22px;
         border-radius: 20px;
         background-color: orange;
         cursor:pointer;
      }
      
      .Boxes{

  scroll-snap-type: none;
  overflow-y:none;

}

.navbar{
flex-direction: row;
}
      
      }
  
    
    </style>

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	/* $("button").on("click", function(e) {
		e.preventDefault();
		$("input[type='checkbox']:checked").each(function(){
			const value = $(this).val();
			
		})
	})*/
	
	$("input[type='checkbox']").on("click", function() {
		
		var value = $("#kcalFromBack1").val();
		
		$("input[type='checkbox']:checked").each(function(){
			value -= parseInt($(this).val());
			
		})
	
		var saveData = $("#kcalFromBack2").val(value);
		$(".kcalFromBack2-hidden").val(value);

		if($("#kcalFromBack2").val() < 0){
			$("#kcalFromBack2").css("text-shadow", "2px 2px tomato");
			$(".kcalFromBack2-hidden").css("text-shadow", "2px 2px tomato");
			
		}
		
		if($("#kcalFromBack2").val() > 0){
			$("#kcalFromBack2").css("text-shadow", "2px 2px #44bd32");
			$(".kcalFromBack2-hidden").css("text-shadow", "2px 2px #44bd32");
			
		}
	})
	
})
</script>
 
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
                 <i class="fas fa-dog"></i></span>
                <span class="checkbox-label">dog walking</span>
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
    
      
    <div class="fixedCalBox">
     <button class="hidden-calBox__back-btn" onclick="hideCalBox()">
        <i class="fas fa-times"></i>
      </button>
      <form action="/controller/savekcal" method="post">
      <div class="recommendedKcal">
        <span id="redinfo">セーブデーターが✙数値なら成功</span>
      </div>
      <div class="recommendedKcal">
        <span>一日摂取可能量:</span> <input type="text" id="kcalFromBack1" value="${login_user.onedaykcal}" readonly/>
        <span>kcals</span>
      </div>
      <div class="TodayKcal">
        <span>まだ食べれる熱量:</span> <input type="text" id="kcalFromBack2" name="cal" value="${login_user.onedaykcal}" readonly/>
        <span>kcals</span>
      </div>
      <div class="calSubmit">
        <input class="calSumit_btn" type="submit" value="SAVE" />
      </div>
      </form>
        
    </div>     
    
    <section class="fixedGraphBox">
      <button class="hidden-GraphBox__back-btn" onclick="hideGraphBox()">
        <i class="fas fa-times"></i>
      </button>
    <div class="graph-whole-wrapper">
      <div class="graph-wrapper">
        <div class="emoticon__day1"></div>
        <div class="graph-stack1">
          <div class="graph-day1"></div>
        </div>
        <div class="cal-day1">0%</div>
        <div class="cal-date__day1">Day1</div>
      </div>

      <div class="graph-wrapper">
        <div class="emoticon__day2"></div>
        <div class="graph-stack2">
          <div class="graph-day2"></div>
        </div>
        <span class="cal-day2">0%</span>
        <div class="cal-date__day2">Day2</div>
      </div>

      <div class="graph-wrapper">
        <div class="emoticon__day3"></div>
        <div class="graph-stack3">
          <div class="graph-day3"></div>
        </div>
        <span class="cal-day3">0%</span>
        <div class="cal-date__day3">Day3</div>
      </div>

      <div class="graph-wrapper">
        <div class="emoticon__day4"></div>
        <div class="graph-stack4">
          <div class="graph-day4"></div>
        </div>
        <span class="cal-day4">0%</span>
        <div class="cal-date__day4">Day4</div>
      </div>

      <div class="graph-wrapper">
        <div class="emoticon__day5"></div>
        <div class="graph-stack5">
          <div class="graph-day5"></div>
        </div>
        <span class="cal-day5">0%</span>
        <div class="cal-date__day5">Day5</div>
      </div>

      <div class="graph-wrapper">
        <div class="emoticon__day6"></div>
        <div class="graph-stack6">
          <div class="graph-day6"></div>
        </div>
        <span class="cal-day6">0%</span>
        <div class="cal-date__day6">Day6</div>
      </div>

      <div class="graph-wrapper">
        <div class="emoticon__day7"></div>
        <div class="graph-stack7">
          <div class="graph-day7"></div>
        </div>
        <span class="cal-day7">0%</span>
        <div class="cal-date__day7">Day7</div>
      </div><br>
    </div>
      <form class="reset-row" action="deletekcal" method="post">
 
        <div class="cal-refresh-detail">直前回のデーターを削除</div>
        <input class="cal-refresh__btn" type="submit" value="DELETE" />

       </form>
       </section>
       
       <div class="ad-box1" onclick="hideAdBox1()">
      広告
      <button class="ad__back-btn"><i class="fas fa-times"></i></button>
    </div>
    <div class="ad-box2" onclick="hideAdBox2()">
     広告
      <button class="ad__back-btn"><i class="fas fa-times"></i></button>
    </div>

    <button
      class="hidden-btn-calBox"
      type="button"
      onclick="showCalHiddenBox()"
    >
      <i class="fas fa-calculator"></i>
    </button>
    <button class="hidden-btn-graphBox" onclick="showGraphHiddenBox()">
      <i class="fas fa-chart-bar"></i>
    </button>


    

      
      <input id="day1" type="hidden" value="${user_kcal.d1}"/>
      <input id="day2" type="hidden" value="${user_kcal.d2}"/>
      <input id="day3" type="hidden" value="${user_kcal.d3}"/>
      <input id="day4" type="hidden" value="${user_kcal.d4}"/>
      <input id="day5" type="hidden" value="${user_kcal.d5}"/>
      <input id="day6" type="hidden" value="${user_kcal.d6}"/>
      <input id="day7" type="hidden" value="${user_kcal.d7}"/>
     
<!-- 
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

</div> -->
 
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
            	
    

const totalCal = 1000;
            	
/*var plusStyle = document.createElement('style');
sytle.type = "text/css";

var plus-motion-var1 = '\
@keyframes motion-var1{
0%{ height: 0; opacity:0;};\
100%{ height: 100%; opacity:1;}\'
};

+가 소비*/

const calFromDB__day1 = $(day1).val(); 
const calFromDB__day2 = $(day2).val(); 
const calFromDB__day3 = $(day3).val(); 
const calFromDB__day4 = $(day4).val(); 
const calFromDB__day5 = $(day5).val(); 
const calFromDB__day6 = $(day6).val(); 
const calFromDB__day7 = $(day7).val(); 



var barFraction__calFromDB__day1 = calFromDB__day1 / totalCal;
var barFraction__calFromDB__day2 = calFromDB__day2 / totalCal;
var barFraction__calFromDB__day3 = calFromDB__day3 / totalCal;
var barFraction__calFromDB__day4 = calFromDB__day4 / totalCal;
var barFraction__calFromDB__day5 = calFromDB__day5 / totalCal;
var barFraction__calFromDB__day6 = calFromDB__day6 / totalCal;
var barFraction__calFromDB__day7 = calFromDB__day7 / totalCal;








var calConvert__day1 = barFraction__calFromDB__day1 * 100;
var barPercentage__day1 = calConvert__day1.toFixed(0) + "%";
document.querySelector(".graph-day1").style.height = barPercentage__day1;
document.querySelector(".cal-day1").textContent = calFromDB__day1;

var calConvert__day2 = barFraction__calFromDB__day2 * 100;
var barPercentage__day2 = calConvert__day2.toFixed(0) + "%";
document.querySelector(".graph-day2").style.height = barPercentage__day2;
document.querySelector(".cal-day2").textContent = calFromDB__day2;

var calConvert__day3 = barFraction__calFromDB__day3 * 100;
var barPercentage__day3 = calConvert__day3.toFixed(0) + "%";
document.querySelector(".graph-day3").style.height = barPercentage__day3;
document.querySelector(".cal-day3").textContent = calFromDB__day3;

var calConvert__day4 = barFraction__calFromDB__day4 * 100;
var barPercentage__day4 = calConvert__day4.toFixed(0) + "%";
document.querySelector(".graph-day4").style.height = barPercentage__day4;
document.querySelector(".cal-day4").textContent = calFromDB__day4;

var calConvert__day5 = barFraction__calFromDB__day5 * 100;
var barPercentage__day5 = calConvert__day5.toFixed(0) + "%";
document.querySelector(".graph-day5").style.height = barPercentage__day5;
document.querySelector(".cal-day5").textContent = calFromDB__day5;

var calConvert__day6 = barFraction__calFromDB__day6 * 100;
var barPercentage__day6 = calConvert__day6.toFixed(0) + "%";
document.querySelector(".graph-day6").style.height = barPercentage__day6;
document.querySelector(".cal-day6").textContent = calFromDB__day6;

var calConvert__day7 = barFraction__calFromDB__day7 * 100;
var barPercentage__day7 = calConvert__day7.toFixed(0) + "%";
document.querySelector(".graph-day7").style.height = barPercentage__day7;
document.querySelector(".cal-day7").textContent = calFromDB__day7;








/*var plusStyle = document.createElement('style');
sytle.type = "text/css";

var plus-motion-var1 = '\
@keyframes motion-var1{
0%{ height: 0; opacity:0;};\
100%{ height: 100%; opacity:1;}\'
};
*/




if(calFromDB__day1 < 0){
    var calConvert__negative__day1 = barFraction__calFromDB__day1 * -100;
    var barPercentage__negative__day1 = calConvert__negative__day1.toFixed(0) + "%";
    document.querySelector(".graph-day1").style.height = barPercentage__negative__day1;
    document.querySelector(".graph-day1").style.background = "#c23616";
    
    document.querySelector(".emoticon__day1").innerHTML = `<i class="fas fa-frown"></i>`;
    document.querySelector(".emoticon__day1").style.color = "red";
}else if(calFromDB__day1 > 0 || calFromDB__day1 == 0){
    document.querySelector(".emoticon__day1").innerHTML = `<i class="fas fa-grin-alt"></i>`;
    document.querySelector(".emoticon__day1").style.color = "green";
}else{
    document.querySelector(".graph-stack1").style.background = "gray";
}



if(calFromDB__day2 < 0){
    var calConvert__negative__day2 = barFraction__calFromDB__day2 * -100;
    var barPercentage__negative__day2 = calConvert__negative__day2.toFixed(0) + "%";
    document.querySelector(".graph-day2").style.height = barPercentage__negative__day2;
    document.querySelector(".graph-day2").style.background = "#c23616";
    
    document.querySelector(".emoticon__day2").innerHTML = `<i class="fas fa-frown"></i>`;
    document.querySelector(".emoticon__day2").style.color = "red";
}else if(calFromDB__day2 > 0 || calFromDB__day2 == 0){
    document.querySelector(".emoticon__day2").innerHTML = `<i class="fas fa-grin-alt"></i>`;
    document.querySelector(".emoticon__day2").style.color = "green";
}else{
    document.querySelector(".graph-stack2").style.background = "gray";
}


if(calFromDB__day3 < 0){
    var calConvert__negative__day3 = barFraction__calFromDB__day3 * -100;
    var barPercentage__negative__day3 = calConvert__negative__day3.toFixed(0) + "%";
    document.querySelector(".graph-day3").style.height = barPercentage__negative__day3;
    document.querySelector(".graph-day3").style.background = "#c23616";
    
    document.querySelector(".emoticon__day3").innerHTML = `<i class="fas fa-frown"></i>`;
    document.querySelector(".emoticon__day3").style.color = "red";
}else if(calFromDB__day3 > 0 || calFromDB__day3 == 0){
    document.querySelector(".emoticon__day3").innerHTML = `<i class="fas fa-grin-alt"></i>`;
    document.querySelector(".emoticon__day3").style.color = "green";
}else{
    document.querySelector(".graph-stack3").style.background = "gray";
}




if(calFromDB__day4 < 0){
    var calConvert__negative__day4 = barFraction__calFromDB__day4 * -100;
    var barPercentage__negative__day4 = calConvert__negative__day4.toFixed(0) + "%";
    document.querySelector(".graph-day4").style.height = barPercentage__negative__day4;
    document.querySelector(".graph-day4").style.background = "#c23616";
    
    document.querySelector(".emoticon__day4").innerHTML = `<i class="fas fa-frown"></i>`;
    document.querySelector(".emoticon__day4").style.color = "red";
}else if(calFromDB__day4 > 0 || calFromDB__day4 == 0){
    document.querySelector(".emoticon__day4").innerHTML = `<i class="fas fa-grin-alt"></i>`;
    document.querySelector(".emoticon__day4").style.color = "green";
}else{
    document.querySelector(".graph-stack4").style.background = "gray";
}

if(calFromDB__day5 < 0){
    var calConvert__negative__day5 = barFraction__calFromDB__day5 * -100;
    var barPercentage__negative__day5 = calConvert__negative__day5.toFixed(0) + "%";
    document.querySelector(".graph-day5").style.height = barPercentage__negative__day5;
    document.querySelector(".graph-day5").style.background = "#c23616";
    
    document.querySelector(".emoticon__day5").innerHTML = `<i class="fas fa-frown"></i>`;
    document.querySelector(".emoticon__day5").style.color = "red";
}else if(calFromDB__day5 > 0 || calFromDB__day5 == 0){
    document.querySelector(".emoticon__day5").innerHTML = `<i class="fas fa-grin-alt"></i>`;
    document.querySelector(".emoticon__day5").style.color = "green";
}else{
    document.querySelector(".graph-stack5").style.background = "gray";
}



if(calFromDB__day6 < 0){
    var calConvert__negative__day6 = barFraction__calFromDB__day6 * -100;
    var barPercentage__negative__day6 = calConvert__negative__day6.toFixed(0) + "%";
    document.querySelector(".graph-day6").style.height = barPercentage__negative__day6;
    document.querySelector(".graph-day6").style.background = "#c23616";
    
    document.querySelector(".emoticon__day6").innerHTML = `<i class="fas fa-frown"></i>`;
    document.querySelector(".emoticon__day6").style.color = "red";
}else if(calFromDB__day6 > 0 || calFromDB__day6 == 0){
    document.querySelector(".emoticon__day6").innerHTML = `<i class="fas fa-grin-alt"></i>`;
    document.querySelector(".emoticon__day6").style.color = "green";
}else{
    document.querySelector(".graph-stack6").style.background = "gray";
}



if(calFromDB__day7 < 0){
    var calConvert__negative__day7 = barFraction__calFromDB__day7 * -100;
    var barPercentage__negative__day7 = calConvert__negative__day7.toFixed(0) + "%";
    document.querySelector(".graph-day7").style.height = barPercentage__negative__day7;
    document.querySelector(".graph-day7").style.background = "#c23616";
    
    document.querySelector(".emoticon__day7").innerHTML = `<i class="fas fa-frown"></i>`;
    document.querySelector(".emoticon__day7").style.color = "red";
}else if(calFromDB__day7 > 0 || calFromDB__day7 == 0){
    document.querySelector(".emoticon__day7").innerHTML = `<i class="fas fa-grin-alt"></i>`;
    document.querySelector(".emoticon__day7").style.color = "green";
}else{
    document.querySelector(".graph-stack7").style.background = "gray";
  
}






	if($("#kcalFromBack2").val() < 0){
		$("#kcalFromBack2").css("text-shadow", "2px 2px tomato");
	}
	if($("#kcalFromBack2").val() > 0){
		  $("#kcalFromBack2").css("text-shadow", "2px 2px #44bd32");
	}
	 $("#kcalFromBack1").css("text-shadow", "2px 2px #44bd32");

	 function showCalHiddenBox() {
		    document.querySelector(".fixedCalBox").style.display = "flex";
		    document.querySelector(".fixedCalBox").style.animation = "stack 0.3s 1";
		 }



		 function showGraphHiddenBox() {
		    document.querySelector(".fixedGraphBox").style.display = "flex";
		    document.querySelector(".fixedGraphBox").style.animation = "stack 0.3s 1";
		 }


		 function hideAdBox1() {
		    document.querySelector(".ad-box1").style.display = "none";
		 }
		 function hideAdBox2() {
		    document.querySelector(".ad-box2").style.display = "none";
		 }

		 function hideCalBox() {
		    document.querySelector(".fixedCalBox").style.display = "none";
		 }
		 function hideGraphBox() {
		    document.querySelector(".fixedGraphBox").style.display = "none";
		 }













		 AOS.init({duration: 1500,});
     	
     	const toggleBtn = document.querySelector(".navbar-toggleBtn");
     	const menu = document.querySelector(".navbar-menu");

     	toggleBtn.addEventListener("click", () => {
     	  menu.classList.toggle("active");
     	  login.classList.remove("active");
     	});

     	

     	/* login */
     	const loginBtn = document.querySelector(".navbar-loginBtn");
     	const login = document.querySelector(".navbar-logins");

     	loginBtn.addEventListener("click", () => {
     	  login.classList.toggle("active");
     	  menu.classList.remove("active");
     	});

     	
            	</script>
  </body>
</html>

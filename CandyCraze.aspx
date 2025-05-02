<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CandyCraze.aspx.cs" Inherits="SugarCraze.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="styles.css"/>
</head>
<!--SUGAR CRAZE-->
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" />
<header>
    <div class="topheader">
        <p>FEEL THE SUGAR RUSH</p>
    </div>
    <div class="navbar">
        <div class ="navbarContent">
            <h1 class="title">Sugar Craze</h1>
            <p class="play">Play Now</p>
        </div>
    </div>
    <div class="navbar2">
        <div class="navbar2grid">
            <a href="#">Play Now</a>
            <a href="#">Design Your Own</a>
            <a href="#">Cake Gallery</a>
            <a href="#">Behind the Brand</a>
            <a href="#">How to Play</a>
        </div>
    </div>
</header>

    <div class="landing"> <!-- BEGIN main container, will have multiple contents change throughout gameplay -->

         <div class="cont1container"> <!-- BEGIN Content 1 Container, Landing play game -->
            <div class="introcontentL">
                <h1>Sugar Craze</h1>
                <p>Matching Game</p>
            
                <button type="button" href="#" class="play-button" id="play-button">
                  <span class="letter-p">P</span>
                  <span class="letter-l">L</span>
                  <span class="letter-a">A</span>
                  <span class="letter-y">Y</span>
                  &nbsp;
                  <span class="letter-n">N</span>
                  <span class="letter-o">O</span>
                  <span class="letter-w">W</span>
                </button>

            </div>
            <div class="introcontentR">
                <div class="introphoto">
            </div>
        </div>
        </div> <!--END Content 1 Container -->
                <div class="instructionCont"> <!-- BEGIN Content 2 Container, How to Play -->

            <div class="instTitle">
                <h2>How to Play</h2>
                <button id="back-button" type="button">Back</button>
            </div>
            <div class="instructionsDesc">
                <p> Your goal is to recreate the cake shown on screen by selecting the correct combination of layers, colors, and toppings. The reference cake will stay visible, so focus on matching it as quickly and accurately as you can. The more cakes you complete before time runs out, the higher your score. Think fast and trust your sweet instincts—press start to begin!</p>
            </div>
            <button type="button" href="#" class="play-button" id="start-button">
              <span class="letter-p">S</span>
              <span class="letter-l">T</span>
              <span class="letter-a">A</span>
              <span class="letter-y">R</span>
              <span class="letter-n">T</span>

            </button>

        </div><!--END Content 2 Container -->

        <div class="land1container"> <!-- BEGIN Content 1 Container, Landing play game -->
            <div class="toppart">
                <button type="button" id="back"></button>
                <button type="button" id="start-over"></button>
                <div class="countdown">
                    <p id="countdown" style="margin-top:30px">0:59</p>
                </div>
            </div>

            <div class="gameContainer">
                <div class="gamecontL"> <!--Game Container Left (goal cake) -->
                    <div class="gContL1"><p>This is your</p></div>
                    <div class="gContL2"><p>Goal</p></div>
                    <div class="gContL3">
                            <img class="topping1" src="\images\cakeIcons\top1.png" width="150"/>
                            <img class="topping2" src="\images\cakeIcons\top2.png" width="150"/>                                            
                            <img class="icing1" src="\images\cakeIcons\icing1.png" width="150"/>
                            <img class="icing2" src="\images\cakeIcons\icing2.png" width="150"/>                                            
                            <img class="base1" src="\images\cakeIcons\base1.png" width="150"/>
                            <img class="base2" src="\images\cakeIcons\base2.png" width="150" />                      
                            <img class="border1" src="\images\cakeIcons\bottom1.png" width="150" />
                            <img class="border2" src="\images\cakeIcons\bottom2.png" width="150" />
                    </div>
                    <div class="gContL4"> <!--Submit Button -->
                        <button type="button" href="#" class="play-button" id="submit-button">
                          <span class="letter-p">S</span>
                          <span class="letter-l">U</span>
                          <span class="letter-a">B</span>
                          <span class="letter-y">M</span>
                          <span class="letter-n">I</span>
                            <span class="letter-p">T</span>

</button>


                    </div>
                </div> <!-- End Game Container Left (goal cake) -->
                
                <div class="gamecontR"> <!--Game Container Right (user cake) -->
                    <div class="correct" id="correct"> <!--hidden check div -->
                        <p>Correct!</p>
                    </div>
                    <div class="wrong" id="wrong">
                        <p>Try Again!</p>
                    </div>
                    <div class="cakeContainer"> <!--user cake -->
                        <img class="gameBase1" src="/images/cakeIcons/base1.png" width="150"  />
                        <img class="gameBase2" src="/images/cakeIcons/base2.png" width="150" />
                        <img class="gameTopping1" src="/images/cakeIcons/top1.png" width="150" />
                        <img class="gameTopping2" src="/images/cakeIcons/top2.png" width="150" />
                        <img class="gameIcing1" src="/images/cakeIcons/icing1.png" width="150" />
                        <img class="gameIcing2" src="/images/cakeIcons/icing2.png" width="150" />
                        <img class="gameBorder1" src="/images/cakeIcons/bottom1.png" width="150" />
                        <img class="gameBorder2" src="/images/cakeIcons/bottom2.png" width="150" />
                    </div>
                    <div class ="gameOptions">
                        <div class="optionNav">

                            <h3>Options</h3> <!--Cake controls and options/ arrows -->
                        </div>
                        <div class="toppingNav">
                             <img src="/images/arrow.svg" alt="Previous Topping" class="left-arrow" id="topArrowL" />
                                <p>Topping</p>
                            <img src="/images/arrow.svg" alt="Next Topping" class="right-arrow" id="topArrowR" />

                        </div>
                        <div class="icingNav">
                             <img src="/images/arrow.svg" alt="Previous Icing" class="left-arrow" id="icingArrowL" />
                                <p>Icing</p>
                             <img src="/images/arrow.svg" alt="Previous Icing" class="right-arrow" id="icingArrowR" />
                        </div>
                        <div class="baseNav">
                             <img src="/images/arrow.svg" alt="Previous Base" class="left-arrow" id="baseArrowL" />
                            
                                <p>Base Cake</p>
                             <img src="/images/arrow.svg" alt="Previous Base" class="right-arrow" id="baseArrowR" />
                        </div>
                        <div class="borderNav">
                             <img src="/images/arrow.svg" alt="Previous Border" class="left-arrow" id="borderArrowL" />
                            
                                <p>Border</p>
                             <img src="/images/arrow.svg" alt="Previous Border" class="right-arrow" id="borderArrowR" />
                            

                    
                         </div>
                    </div>   <!--end Game options Box -->  
                </div><!-- End Game Container Right (goal cake) -->
            </div><!--End Game container -->

            
            <div class="endcontainer"><!--Shows when the game is over-->
                <div class="timeMessage">
                    <div class="timesup">
                        <span class="letter-p">T</span>
                        <span class="letter-l">I</span>
                        <span class="letter-a">M</span>
                        <span class="letter-y">E</span>&nbsp;
                        <span class="letter-p">I</span>
                        <span class="letter-l">S</span>&nbsp;
                        <span class="letter-a">U</span>
                        <span class="letter-y">P</span>

                    </div>
                    <p>Your Score:</p>
                    <div class="tally">0</div>
                </div>
                <div class="tryagainB">

                <button type="button" href="#" class="play-button" id="play-again-button"/>
                  <span class="letter-p">P</span>
                  <span class="letter-l">L</span>
                  <span class="letter-a">A</span>
                  <span class="letter-y">Y</span>&nbsp;
                    <span> </span>
                  <span class="letter-p">A</span>
                  <span class="letter-l">G</span>
                  <span class="letter-a">A</span>
                  <span class="letter-y">I</span>
                  <span class="letter-p">N</span>
                </div>
            </div>


            <div class="score">
                <p>Score:</p>
                <div class="tally2">0</div>
            </div>
        </div> <!--End Landing Containter -->
                
            


        </div> <!--END Content 1 Container -->
    
    </form>

<script type="text/javascript">

    //=====Variables=============================================================================//
    //Base
    let baseIndex = 0;
    const baseOptions = ['gameBase1', 'gameBase2'];
    let currentBaseClass = "gameBase1";
    let exampleBase;
    //Icing
    let icingIndex = -1; // -1 means no topping showing
    const icingOptions = ['gameIcing1', 'gameIcing2'];
    let currentIcingClass = "none";
    let exampleIcing;
    //Border
    let borderIndex = -1; // -1 means no border showing
    const borderOptions = ['gameBorder1', 'gameBorder2'];
    let currentBorderClass = "none";
    let exampleBorder;
    //Top
    let topIndex = -1; // -1 means no topping showing
    const topOptions = ['gameTopping1', 'gameTopping2'];
    let currentTopClass = "none";
    let exampleTop;
    //Other
    let tally = 0;
    var timeLeft = 59;
    

    //=================== Generate Random Goal Cake (get from c#)================================//
    document.getElementById("submit-button").addEventListener("click", function () {

        checkMatch();
        PageMethods.GetRandomCake(onSuccess, onError);
        
    });

    PageMethods.GetRandomCake(onSuccess, onError);

    //Assign Functions to Arrows
    document.getElementById('baseArrowL').addEventListener('click', () => updateBase('left'));
    document.getElementById('baseArrowR').addEventListener('click', () => updateBase('right'));

    document.getElementById('topArrowL').addEventListener('click', () => updateTop('left'));
    document.getElementById('topArrowR').addEventListener('click', () => updateTop('right'));

    document.getElementById('icingArrowL').addEventListener('click', () => updateIcing('left'));
    document.getElementById('icingArrowR').addEventListener('click', () => updateIcing('right'));

    document.getElementById('borderArrowL').addEventListener('click', () => updateBorder('left'));
    document.getElementById('borderArrowR').addEventListener('click', () => updateBorder('right'));



    document.getElementById('play-again-button').addEventListener('click', function () {
        document.querySelector('.gameContainer').style.display = 'flex';
        document.querySelector('.score').style.display = 'flex';
        document.querySelector('.endcontainer').style.display = 'none';
        

        const tallyDisplay = document.querySelector('.tally');
        const tally2Display = document.querySelector('.tally2');

        tally = 0;
        finaltally = 0;
        tallyDisplay.textContent = tally;
        tally2Display.textContent = tally; 
        callTimer();
    });


    document.getElementById('start-button').addEventListener('click', function () {
        document.querySelector('.gameContainer').style.display = 'flex';
        document.querySelector('.land1container').style.display = 'block';
        document.querySelector('.score').style.display = 'flex';
        document.querySelector('.endcontainer').style.display = 'none';
        document.querySelector('.instructionCont').style.display = 'none';

        const tallyDisplay = document.querySelector('.tally');
        const tally2Display = document.querySelector('.tally2');

        tally = 0;
        finaltally = 0;
        tallyDisplay.textContent = tally;
        tally2Display.textContent = tally;
        callTimer();
    });



    document.getElementById("play-button").addEventListener("click", function () {
        const playButton = document.getElementById("play-button");
        const introContainer = document.querySelector(".cont1container");
        const instructionContainer = document.querySelector(".instructionCont");
        const backButton = document.getElementById("back-button")

        introContainer.style.display = "none";

        instructionContainer.style.display = "block";

    });

    document.getElementById("back-button").addEventListener("click", function () {
        const playButton = document.getElementById("play-button");
        const introContainer = document.querySelector(".cont1container");
        const instructionContainer = document.querySelector(".instructionCont");
        const backButton = document.getElementById("back-button")

        introContainer.style.display = "block";
        instructionContainer.style.display = "none";

    });

  
    callTimer()

    //FUNCTIONS

    function onSuccess(result) {

        exampleBase = result.base;
        exampleTop =  result.topping;
        exampleIcing =  result.icing;
        exampleBorder =  result.border;

        // Hide all cake parts
        document.querySelectorAll('.base1, .base2, .topping1, .topping2, .icing1, .icing2, .border1, .border2')
            .forEach(el => el.style.display = 'none');


        // Show the selected elements (unless it's "none")
        if (result.base !== "none") {
            goalBase = "base1";
            document.querySelector(`.${result.base}`).style.display = 'block';
            goalBase = result.base;


            if (goalBase == "base1" && currentBaseClass == "gameBase1") {
                let basetrue = "true";
            }
            else if (goalBase == "base2" && currentBaseClass == "gameBase2") {
                let basetrue = "true";
            }
            else if (goalBase == "none" && currentBaseClass == "none") {
                let basetrue = "true";
            }
            else {
                let basetrue = "false";
            }

        }
        // Topping
        if (result.topping !== "none") {
            goalTop = "topping1"
            document.querySelector(`.${result.topping}`).style.display = 'block';
            goalTop = result.topping;
        }
        else if (result.topping == "none") {
            goalTop = "none"
            
        }

        //icing
        if (result.icing !== "none") {
            goalIcing = "icing2"
            document.querySelector(`.${result.icing}`).style.display = 'block';
            goalIcing = result.icing;
            
        }
        else if (result.icing == "none") {
            goalIcing = "none"
            
        }
        //border
        if (result.border !== "none") {
            goalBorder = "border2"
            document.querySelector(`.${result.border}`).style.display = 'block';
            goalBorder = result.border;
            
        }
        else if (result.border == "none") {
            goalBorder = "none"
            

        }

        console.log("exampleCake Variables are \n", exampleBase, "\n", exampleTop, "\n", exampleIcing, "\n", exampleBorder, "\n")

        
    }
    function checkMatch() {
        let basesMatch = false;
        let topMatch = false;
        let icingMatch = false;
        let borderMatch = false;

        console.log("exampleBase = ", exampleBase);
        console.log("currentBaseClass = ", currentBaseClass);
        console.log("currentIcingClass = ", currentIcingClass);

        if (exampleBase == "base1" && currentBaseClass == "gameBase1") {
             basesMatch = true;
        }
        else if (exampleBase == "base2" && currentBaseClass == "gameBase2") {
             basesMatch = true;
        }
        else if (exampleBase == "none" && currentBaseClass == "none") {
             basesMatch = true;
        }

        if (exampleTop == "topping1" && currentTopClass == "gameTopping1") {
            topMatch = true;
        }
        else if (exampleTop == "topping2" && currentTopClass == "gameTopping2") {
            topMatch = true;
        }
        else if (exampleTop == "none" && currentTopClass == "none") {
            topMatch = true;
        }
        
        if (exampleIcing == "icing1" && currentIcingClass == "gameIcing1") {
            icingMatch = true;
        }
        else if (exampleIcing == "icing2" && currentIcingClass == "gameIcing2") {
            icingMatch = true;
        }
        else if (exampleIcing == "none" && currentIcingClass == "none") {
            icingMatch = true;
        }

        if (exampleBorder == "border1" && currentBorderClass == "gameBorder1") {
            borderMatch = true;
        }
        else if (exampleBorder == "border2" && currentBorderClass == "gameBorder2") {
            borderMatch = true;
        }
        else if (exampleBorder == "none" && currentBorderClass == "none") {
            borderMatch = true;
        }

        const correct = document.getElementById('correct');
        const wrong = document.getElementById('wrong');
        const tallyDisplay = document.querySelector('.tally');
        const tally2Display = document.querySelector('.tally2');

        if (basesMatch && topMatch && icingMatch && borderMatch) {
            correct.style.display = 'block'; 

            setTimeout(function () {
                correct.style.display = 'none'; // Hide after 2 seconds
            }, 1000);

            tally++; 
            tallyDisplay.textContent = tally; 
            tally2Display.textContent = tally; 
            console.log("tally=",tally);

        }
        else {
            wrong.style.display = 'block'; 
            setTimeout(function () {
                wrong.style.display = 'none'; // Hide after 2 seconds
            }, 1000);
        }


        console.log("base is:", basesMatch, " \n top is", topMatch, "\n icing is", icingMatch, "\n border is", borderMatch);

    }
    function onError(error) {
        console.error("Error calling GetRandomCake:", error.get_message());
    }


    function updateBase(direction) {
        // Hide the current base
        const currentClass = baseOptions[baseIndex];
        const currentEl = document.querySelector(`.${currentClass}`);
        if (currentEl) currentEl.style.display = 'none';

        // Update index (loop between 0 and 1)
        if (direction === 'right') {
            baseIndex = (baseIndex + 1) % baseOptions.length;
        } else {
            baseIndex = (baseIndex - 1 + baseOptions.length) % baseOptions.length;
        }

        // Show the new base
        const newClass = baseOptions[baseIndex];
        currentBaseClass = newClass;
        const newEl = document.querySelector(`.${newClass}`);
        if (newEl)
            console.log("Base:", currentBaseClass);
        newEl.style.display = 'block';
    }
    function updateTop(direction) {
        // Hide the current top image
        if (topIndex >= 0) {
            const currentClass = topOptions[topIndex];
            const currentEl = document.querySelector(`.${currentClass}`);
            if (currentEl) currentEl.style.display = 'none';
        }

        // Update index (looping)
        if (direction === 'right') {
            topIndex = (topIndex + 1) % (topOptions.length + 1);
        } else {
            topIndex = (topIndex - 1 + topOptions.length + 1) % (topOptions.length + 1);
        }

        if (topIndex === topOptions.length) {
            currentTopClass = "none";
            console.log("Topping: none");
            return; // nothing to show
        }

        // Show new top image
        const newClass = topOptions[topIndex];
        currentTopClass = newClass;
        const newEl = document.querySelector(`.${newClass}`);
        if (newEl) {
            console.log("Topping:", currentTopClass);
            newEl.style.display = 'block';
        }
    }
    function updateIcing(direction) {
        // Hide the current icing image
        if (icingIndex >= 0) {
            const currentClass = icingOptions[icingIndex];
            const currentEl = document.querySelector(`.${currentClass}`);
            if (currentEl) currentEl.style.display = 'none';
        }

        // Update index (looping with +1 for "none" option)
        if (direction === 'right') {
            icingIndex = (icingIndex + 1) % (icingOptions.length + 1);
        } else {
            icingIndex = (icingIndex - 1 + icingOptions.length + 1) % (icingOptions.length + 1);
        }

        // Determine and show new icing
        if (icingIndex >= 0 && icingIndex < icingOptions.length) {
            const newClass = icingOptions[icingIndex];
            currentIcingClass = newClass;
            const newEl = document.querySelector(`.${newClass}`);
            if (newEl) newEl.style.display = 'block';
        } else {
            currentIcingClass = "none";
        }

        console.log("Icing:", currentIcingClass);
    }
    function updateBorder(direction) {
        // Hide the current border image
        if (borderIndex >= 0 && borderIndex < borderOptions.length) {
            const currentClass = borderOptions[borderIndex];
            const currentEl = document.querySelector(`.${currentClass}`);
            if (currentEl) currentEl.style.display = 'none';
        }

        // Update index (looping, including a "none" option)
        if (direction === 'right') {
            borderIndex = (borderIndex + 1) % (borderOptions.length + 1);
        } else {
            borderIndex = (borderIndex - 1 + borderOptions.length + 1) % (borderOptions.length + 1);
        }

        // Show the new border image or set to "none"
        if (borderIndex >= 0 && borderIndex < borderOptions.length) {
            const newClass = borderOptions[borderIndex];
            currentBorderClass = newClass;
            const newEl = document.querySelector(`.${newClass}`);
            if (newEl) newEl.style.display = 'block';
        } else {
            currentBorderClass = "none";
        }

        console.log("Border:", currentBorderClass);
    }

    function callTimer() {
        timeLeft = 59;
        var x = setInterval(function () {
            // Calculate minutes and seconds
            var minutes = Math.floor(timeLeft / 60);
            var seconds = timeLeft % 60;

            // Add a leading zero to seconds if needed (like 0:09 instead of 0:9)
            if (seconds < 10) {
                seconds = "0" + seconds;
            }

            document.getElementById("countdown").innerHTML = minutes + ":" + seconds;

            timeLeft--;

            if (timeLeft < 0) {
                clearInterval(x);
                document.getElementById("countdown").innerHTML = "0:00";

                document.querySelector('.gameContainer').style.display = 'none';
                document.querySelector('.endcontainer').style.display = 'flex';
                document.querySelector('.score').style.display = 'none';


            }
        }, 1000);
    }
   

    


</script>


</body>
</html>

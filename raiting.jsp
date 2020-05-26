<style >@import "lesshat";

/*******************************************
  = LESS
*******************************************/

/* LESS - Mixins */
.clearfix() {
  
  &:before,
  &:after {
	content: "";
	display:table;
  }
  
  &:after {
	clear: both;
  }
  
}

.transition() {
  -webkit-transition: all .2s ease-in-out;
  -moz-transition: all .2s ease-in-out;
  -o-transition: all .2s ease-in-out;
  transition: all .2s ease-in-out;  
}


/*******************************************
  = TYPOGRAPHY
*******************************************/

html {
 font-size: 62.5%;
}

body {
 font: 12px 'Arial', 'Helvetica Neue', 'Helvetica', sans-serif; font-size: 1.2rem;
 background: #333;
 color: #fff;
}


/*******************************************
  = LAYOUT
*******************************************/

* {
  -webit-box-sizing: border-box;
	-moz-box-sizing: border-box;
		 box-sizing: border-box;
  margin: 0;
  padding: 0;
  border: 0;
}


/*******************************************
  = RATING
*******************************************/

/* RATING - Form */
.rating-form {
	margin-top: 40px;
}

	/* RATING - Form - Group */
	.rating-form .form-group {
    position: relative;
    border: 0;
	}

	/* RATING - Form - Legend */
	.rating-form .form-legend {
		display: none;
		margin: 0;
		padding: 0;
		font-size: 20px; font-size: 2rem;
		/*background: green;*/
	}

	/* RATING - Form - Item */
	.rating-form .form-item {
		position: relative;
		margin: auto;
		width: 300px;
		text-align: center;
		direction: rtl;
		/*background: green;*/
	}

	.rating-form .form-legend + .form-item {
		padding-top: 10px;
	}

		.rating-form input[type='radio'] {
			position: absolute;
			left: -9999px;
		}

	  /* RATING - Form - Label */
	  .rating-form label {
		display: inline-block;
		cursor: pointer;
	  }

		.rating-form .rating-star {
       display: inline-block;
			position: relative;
		}

	.rating-form input[type='radio'] + label:before {
		content: attr(data-value);
		position: absolute;
		right: 30px; top: 83px;
		font-size: 30px; font-size: 3rem;
		opacity: 0;
		direction: ltr;
		.transition();
	}

	.rating-form input[type='radio']:checked + label:before {
		right: 25px;
		opacity: 1;
	}

	.rating-form input[type='radio'] + label:after {
		content: "/ 5";
		position: absolute;
		right: 5px; top: 96px;
		font-size: 16px; font-size: 1.6rem;
		opacity: 0;
		direction: ltr;
		.transition();
	}

	.rating-form input[type='radio']:checked + label:after {
		/*right: 5px;*/
		opacity: 1;
	}

		.rating-form label .fa {
		  font-size: 60px; font-size: 6rem;
		  line-height: 60px;
		  .transition();
		}

		.rating-form label .fa-star-o {

		}

		.rating-form label:hover .fa-star-o,
		.rating-form label:focus .fa-star-o,
		.rating-form label:hover ~ label .fa-star-o,
		.rating-form label:focus ~ label .fa-star-o,
		.rating-form input[type='radio']:checked ~ label .fa-star-o {
		  opacity: 0;
		}

		.rating-form label .fa-star {
		  position: absolute;
		  left: 0; top: 0;
		  opacity: 0;
		}

		.rating-form label:hover .fa-star,
		.rating-form label:focus .fa-star,
		.rating-form label:hover ~ label .fa-star,
		.rating-form label:focus ~ label .fa-star,
		.rating-form input[type='radio']:checked ~ label .fa-star {
		  opacity: 1;
		}

		.rating-form input[type='radio']:checked ~ label .fa-star {
		  color: gold;
		}

		.rating-form .ir {
		  position: absolute;
		  left: -9999px;
		}

	/* RATING - Form - Action */
	.rating-form .form-action {
		opacity: 0;
		position: absolute;
		left: 5px; bottom: -40px;
		.transition();
	}

	.rating-form input[type='radio']:checked ~ .form-action {
	  cursor: pointer;
	  opacity: 1;
	}

	.rating-form .btn-reset {
		display: inline-block;
		margin: 0;
		padding: 4px 10px;
		border: 0;
		font-size: 10px; font-size: 1rem;
		background: #fff;
		color: #333;
		cursor: auto;
		border-radius: 5px;
		outline: 0;
		.transition();
	}

	   .rating-form .btn-reset:hover,
	   .rating-form .btn-reset:focus {
		 background: gold;
	   }

	   .rating-form input[type='radio']:checked ~ .form-action .btn-reset {
		 cursor: pointer;
	   }


	/* RATING - Form - Output */
	.rating-form .form-output {
		display: none;
		position: absolute;
		right: 15px; bottom: -45px;
		font-size: 30px; font-size: 3rem;
		opacity: 0;
		.transition();
	}

	.no-js .rating-form .form-output {
		right: 5px;
		opacity: 1;
	}

	.rating-form input[type='radio']:checked ~ .form-output {
		right: 5px;
		opacity: 1;
	}
	</style>

<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">

<!-- RATING - Form -->
<form class="rating-form" action="rating2.jsp" method="post" name="rating-movie">
  <fieldset class="form-group">
    
    <legend class="form-legend">Rating:</legend>
    
    <div class="form-item">
      
      <input id="rating-5" name="rating" type="radio" value="5" />
      <label for="rating-5" data-value="5">
        <span class="rating-star">
          <i class="fa fa-star-o"></i>
          <i class="fa fa-star"></i>
        </span>
        <span class="ir">5</span>
      </label>
      <input id="rating-4" name="rating" type="radio" value="4" />
      <label for="rating-4" data-value="4">
        <span class="rating-star">
          <i class="fa fa-star-o"></i>
          <i class="fa fa-star"></i>
        </span>
        <span class="ir">4</span>
      </label>
      <input id="rating-3" name="rating" type="radio" value="3" />
      <label for="rating-3" data-value="3">
        <span class="rating-star">
          <i class="fa fa-star-o"></i>
          <i class="fa fa-star"></i>
        </span>
        <span class="ir">3</span>
      </label>
      <input id="rating-2" name="rating" type="radio" value="2" />
      <label for="rating-2" data-value="2">
        <span class="rating-star">
          <i class="fa fa-star-o"></i>
          <i class="fa fa-star"></i>
        </span>
        <span class="ir">2</span>
      </label>
      <input id="rating-1" name="rating" type="radio" value="1" />
      <label for="rating-1" data-value="1">
        <span class="rating-star">
          <i class="fa fa-star-o"></i>
          <i class="fa fa-star"></i>
        </span>
        <span class="ir">1</span>
      </label>
        <input type="text" name="tt" style="width: 230px" required>
      <div class="form-action">
          
	    <input id="rating-1" name="pnumber" type="hidden" value="<%=request.getParameter("pnumber")%>" />
        <input id="rating-2" name="Email" type="hidden" value="<%=request.getParameter("Email")%>" />
        
		<input class="btn-reset" type="Submit" value="Submit" />  
		
      </div>

      <div class="form-output">
        ? / 5
      </div>

      
    </div>
    
  </fieldset>
</form>
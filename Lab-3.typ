#import "Class.typ": *


#show: ieee.with(
  title: [#text(smallcaps("Lab #3: Web Application with Genie"))],
  /*
  abstract: [
    #lorem(10).
  ],
  */
  authors:
  (
    (
      name: "Fedi azizi",
      department: [Senior-lecturer, Dept. of EE],
      organization: [ISET Bizerte --- Tunisia],
      profile: "",
    ),
  )
  // index-terms: (""),
  // bibliography-file: "Biblio.bib",
)

= Exercise
In this lab, you will create a basic web application using *Genie* framework in Julia. The application will allow us to control the behaviour of a sine wave, given some adjustble parameters. You are required to carry out this lab using the REPL as in @fig:repl.

#figure(
	image("Images/Genie-sinewave.png", width: 100%, fit: "contain"),
	caption: "Julia REPL"
	) <fig:repl>

#exo[Sine Wave Control][We provide the Julia and HTML codes to build and run a web app that allows us to control the amplitude and frequency of a sine wave. *Plotly* is used to plot the corresponding graph. We also added a slider to change the number of samples used to draw the figure. The latter setting permits to grasp the influence of sampling frequency on the look of our chart.]

#let code=read("../Codes/web-app/app.jl")
#raw(code, lang: "julia")


#let code=read("../Codes/web-app/app.jl.html")
#raw(code, lang: "html")

```zsh
julia --project
```
```julia
 <div class="st-col col-12 col-sm st-module">
        <p><b># phase</b></p>
        <q-slider v-model="phi" 
		:min="-3.14" :max="3.14" 
		:step="0.03" :label="true"> 
	</q-slider> 
    </div>
    <div class="st-col col-12 col-sm st-module">
        <p><b># offset</b></p>
        <q-slider v-model="ofs" 
		:min="-0.5" :max="1" 
		:step="0.1" :label="true"> 
	</q-slider> 
    </div>
```

```julia
julia> using GenieFramework
julia> Genie.loadapp() # Load app
julia> up() # Start server
```

We can now open the browser and navigate to the link #highlight[#link("localhost:8000")[localhost:8000]]. We will get the graphical interface as in @fig:genie-webapp.

#figure(
	image("Images/1.png", width: 100%),
	caption: "sine wave1",
) <fig:genie>
#figure(
	image("Images/e6a34ecc-78b5-4e3d-9c29-e8e7c77b3371.jpg", width: 100%),
	caption: "Genie -> Sine Wave2",
) <fig:genie-webapp>

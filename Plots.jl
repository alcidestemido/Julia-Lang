f(x) = x^2 
f(2)
using Pkg
# pkg"activate"
# pkg"add Plots"   #instalando Plots
# pkg"status"
# pkg"add GR"      #Ferramenta rápida
# pkg"add ORCA"    
# pkg"add PlotlyJS"
using Plots

# Determinar o Backend
#Opçoes: GR ,Pyplot,PlotlyJS, PDF Plots, UnicodePlots 
gr() 
x = [1,2,5]
y = [1,3,4]
plot(x,y)
scatter(x,y)

x = range(-2,2,length = 50) #50 pontos entre -2 e 2 
x
y = f.(x)

#plot (f,a,b)
plot(f,-8,9)

#plot definições:
#linewidth -> lw 
#limite de x -> xlims
#limite de y -> ylims
# legenda -> lab
#marcador -> m
# marcador colorido -> mc
#tamanhdo do marcador -> ms
#anotaçoes -> annotation = [( intervalo x , intervalo y , text(string(valor ou pontos),
# tamanho fonte )) loop valor inicio:fim)]
# tipo da linha -> l
#cor de fundo -> background_color
# grade -> grid
plot(x,y,color =:green,xlims = (-2,2),ylims = (0 ,5),lw = 1, lab = "legenda", m =:circle,mc=:red,ms = 3,
    annotation = [(x[i],y[i],text(string(y[i]),6)) for i = 1:18 ], l=:dash, 
    background_color=:gray , grid = false)

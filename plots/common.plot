#set terminal png enhanced size 800,600 

# TODO rather use LPs than lt cf http://kunak.phsx.ku.edu/~sergei/Gnuplot/line_point_types.html
set style line 1 lt 1 lw 3 pt 3 lc rgb "red"
set style line 2 lt 3 lw 3 pt 3 lc rgb "red"
set style line 3 lt 1 lw 3 pt 3 lc rgb "blue"
set style line 4 lt 3 lw 3 pt 3 lc rgb "blue"

# Among available (pdfcairo, png, X11 )
# if using png, set output eg set output "/tmp/myGraph.png"

# TODO needs to set datafile
if (!exists("term")) term='png'
if (!exists("output_filename")) output_filename='output.png'
if (!exists("datafile")) {
	print("Missing parameter 'datafile'")
	exit gnuplot
}


# set terminal term

set terminal png size 800,600

# set terminal postscript eps enhanced size 10cm,15cm
# use pdf for a final rendering (to embed in an article for instance)
# set terminal pdf monochrome solid font 'Helvetica,14' size 16cm,12cm

# set terminal interactive
set output output_filename

# Places of the legend
set key right top
#set key autotitle columnhead

#set xdata time
#set timefmt "%d%m%H%M"
#set format x "%d/%m\n%H/%M"

# Left/Right/Top/Bottom
set offset graph 0.2, graph 0.2, graph 0.1, graph 0.1
#set bmargin 20
#set lmargin {<margin>}
#set rmargin {<margin>}
#set tmargin 20
set autoscale xy

set pointintervalbox 3
set grid


#set terminal enhanced font ',14'

# set font on axis labels
set xtics font ",16" 
set ytics font ",16" 

# set key font
set key font ",14"


set datafile separator "|" 

set style line 1 lt 1 lw 2
set style line 2 lt 3 lw 2

# set style arrow 0 head filled size screen 0.025,30,45 ls 1
set style arrow 1 head filled size screen 0.03,15 ls 2
set style arrow 4 head filled size screen 0.025,30,45 ls 1
set style arrow 2 head nofilled size screen 0.03,15 ls 2
set style arrow 3 head filled size screen 0.03,15,45 ls 1
set style arrow 4 head filled size screen 0.03,15 ls 2
# set style arrow 5 heads noborder size screen 0.03,15,135 ls 1
set style arrow 6 head empty size screen 0.03,15,135 ls 2
set style arrow 7 nohead ls 1

#web #frontend

How do you get [[styled-components]] or another [[css-in-js]] lib to override CSS applied by material-ui or a similar UI library? Specificity is the answer. To artificially raise the specificity of a styled components rule, use the `&&` nested selector like so:

#incomplete 
---
title: Matrix Algebra
---

[to index](index.html)

# Matrices

## Definition of Matrices
**Matrices** are a rectangular array of numbers, symbols, and/or expressions. Their
dimensions are represented by $m \times n$ where $m$ is the number of rows and
$n$ is the number of columns. [@eq:mat_def] is a matrix of dimensions $m \times n$.

$$ \rm{A} = \begin{pmatrix}
a_{11} & a_{12} & \dots & a_{1n} \\
a_{21} & a_{22} & \dots & a_{2n} \\
\vdots & \vdots & \ddots & \vdots \\
a_{m1} & a_{m2} & \dots & a_{mn}
\end{pmatrix} $$ {#eq:mat_def}

**Vectors** are matrices that have either $m$ or $n$ equal to $1$. They can either
be a row matrix ($m=1$) or a column matrix ($n=1$).

$$ \rm{B} = \begin{pmatrix}
b_1 \\
b_2 \\
\vdots \\
b_m
\end{pmatrix} $$

$$ \rm{C} = \begin{pmatrix}
c_1 & c_2 & \dots & c_n
\end{pmatrix} $$

In a **diagonal matrix**, the diagonal elements are nonzero while all other elements
are zero.

$$ \rm{D} = \begin{pmatrix}
1 & 0 & 0 \\
0 & 1 & 0 \\
0 & 0 & 1
\end{pmatrix} $$

$$ \rm{E} = \begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 1 & 0
\end{pmatrix} $$

## Adding and Multiplying Matrices
**Adding** matrices is as easy as [@eq:add_mat]. The addends need to have the
same dimensions.

$$ \begin{pmatrix}
a & b \\
c & d
\end{pmatrix} +
\begin{pmatrix}
e & f \\
g & h
\end{pmatrix} =
\begin{pmatrix}
a+e & b+f \\
c+g & d+h
\end{pmatrix}$$ {#eq:add_mat}

Matrices can be multiplied by a **scalar**.

$$ k \begin{pmatrix}
a & b \\
c & d
\end{pmatrix} =
\begin{pmatrix}
ka & kb \\
kc & kd
\end{pmatrix}$$

**Multiplying** two matrices are a bit complicated. In fact, only the combination
of $(m \times n)(n \times p)$ is possible and the dimensions of the product is
$(m \times p)$. The rows of the first matrix and the columns of the second matrix 
each multiplied and the products are added.

$$ \begin{pmatrix}
a & b \\
c & d
\end{pmatrix} 
\begin{pmatrix}
e & f \\
g & h
\end{pmatrix} =
\begin{pmatrix}
ae + bg & af + bh \\
ce + dg & cf + dh
\end{pmatrix}$$ {#eq:prod_mat}

A general formula for an element of the matrix $C$, where $C=AB$, is

$$ c_{ij} = \sum_{k=1}^n a_{ik}b_{kj} $$ {#eq:prod_elem}

To prove $\rm{A(BC)=(AB)C}$, where $\rm{A}$ is an $m \times n$ matrix, $\rm{B}$
is an $n \times p$ matrix and $\rm{C}$ is an $p \times q$ matrix; we utilize
[@eq:prod_elem]. Therefore matrix multiplication is associative.

$$ \begin{align}
\rm{A(BC)} &= \rm{(AB)C} \\
[\rm{A(BC)}]_{ij} &= [\rm{(AB)C}]_{ij} \\
\sum_{k=1}^{n} a_{ik} [\rm{BC}]_{kj} &= \sum_{l=1}^{p} \rm{[AB]}_{il} c_{lj} \\
\sum_{k=1}^{n} \sum_{l=1}^{p} a_{lk}b_{kl}c_{lj} &= \sum_{l=1}^{p} \sum_{k=1}^{n} a_{ik}b_{kl}c_{lj}
\end{align} $$

## Special Matrices
Some important types of matrices:
* *Zero Matrix*: $m \times n$

$$ 0 = \begin{pmatrix}
0 & 0 \\
0 & 0
\end{pmatrix} $$

* *Identity Matrix*: $n \times n$

$$ I = \begin{pmatrix}
1 & 0 \\
0 & 1
\end{pmatrix} $$

$$ AI = A = IA $$

* *Diagonal Matrix*

$$ D = \begin{pmatrix}
d_1 & 0 & 0 \\
0 & d_2 & 0 \\
0 & 0 & d_3
\end{pmatrix} $$

* *Banded Matrix*, e.g. tridiagonal

$$ \begin{pmatrix}
d_1 & a_1 & 0 \\
b_1 & d_2 & a_2 \\
0 & b_2 & d_3
\end{pmatrix} $$

* *Upper and Lower Triangular Matrices*

$$ U = \begin{pmatrix}
a & b & c \\
0 & d & e \\
0 & 0 & f
\end{pmatrix} $$

$$ L = \begin{pmatrix}
a & 0 & 0 \\
b & c & 0 \\
d & e & f
\end{pmatrix} $$

## Matrix Transpose
\newcommand{\tr}[1]{#1^{\rm{T}}}

The transpose of a matrix is its reflection about the diagonal. If a matrix has
dimensions $m \times n$ then its transpose should have dimensions of $n \times m$.
A general representation of a transpose is shown in [@eq:mat_trans]. An example
is shown in [@eq:trans_example].

$$ \rm{A} = \begin{pmatrix}
a_{11} & a_{12} & \dots & a_{1n} \\
a_{21} & a_{22} & \dots & a_{2n} \\
\vdots & \vdots & \ddots & \vdots \\
a_{m1} & a_{m2} & \dots & a_{mn}
\end{pmatrix} \qquad \tr{\rm{A}} = \begin{pmatrix}
a_{11} & a_{21} & \dots & a_{m1} \\
a_{12} & a_{22} & \dots & a_{m2} \\
\vdots & \vdots & \ddots & \vdots \\
a_{1n} & a_{2n} & \dots & a_{mn}
\end{pmatrix} $$ {#eq:mat_trans}

$$ \tr{\begin{pmatrix}
a & b & c \\
d & e & f
\end{pmatrix}} = \begin{pmatrix}
a & d \\
b & e \\
c & f
\end{pmatrix} $$ {#eq:trans_example}

Obvious but rather useful equations can arise from this:

$$ \tr{a}_{ij} = a_{ji} $$ {#eq:trans_elem}

$$ \tr{(\tr{\rm{A}})} = \rm{A} $$ {#eq:trans_trans}

$$ \tr{(\rm{A} + \rm{B})} = \tr{\rm{A}} + \tr{\rm{B}} $$ {#eq:trans_sum}

A not so obvious fact is the transpose of the product of two matrices which is
given by [@eq:trans_prod] which is proven subsequently in [@eq:trans_prod_proof].

$$ \tr{(\rm{AB})} = \tr{\rm{B}}\tr{\rm{A}} $$ {#eq:trans_prod}

$$ \begin{align}
\left[\tr{(\rm{AB})}\right]_{ij} &= \left[\tr{\rm{B}}\tr{\rm{A}}\right]_{ij} \\
[\rm{AB}]_{ji} &= \sum_{k=1}^{p} \tr{b}_{ik}\tr{a}_{kj} \\
\sum_{k=1}^{p} a_{jk}b_{ki} &= \sum_{k=1}^{p} a_{jk}b_{ki}
\end{align} $$ {#eq:trans_prod_proof}

Any square matrix, $\rm{A}$ can be expressed as the sum of a symmetric and a
skew-symmetric matrix as shown in [@eq:square_trans].

$$ \begin{gather}
\rm{A} = \begin{pmatrix}
a & b & c\\
d & e & f\\
g & h & i\\
\end{pmatrix} \qquad \tr{\rm{A}} = \begin{pmatrix}
a & d & g\\
b & e & h\\
c & f & i\\
\end{pmatrix} \\
\rm{A} + \tr{\rm{A}} = \begin{pmatrix}
2a & b+d & c+g\\
b+d & 2e & f+h\\
c+g & f+h & 2i\\
\end{pmatrix}\\ 
\rm{A} - \tr{\rm{A}} = \begin{pmatrix}
0 & b-d & c-g\\
d-b & 0 & f-h\\
g-c & h-f & 0\\
\end{pmatrix}\\
\rm{A} = \frac{1}{2} \left(\rm{A} + \tr{\rm{A}} + \rm{A} - \tr{\rm{A}}\right)
\end{gather} $$ {#eq:square_trans}

The resulting matrix of $\tr{\rm{A}}\rm{A}$ is symmetrical, as proven in
[@eq:sym_trans] since $\tr{[AB]} = \tr{B} \tr{A}$ and that $\tr{(\tr{A})} = A$.

$$ \tr{\left[\tr{\rm{A}}\rm{A}\right]} = \tr{\rm{A}}\rm{A} $$ {#eq:sym_trans}

## Inner & Outer Products
\newcommand{\norm}[1]{\left\lVert #1 \right\rVert}
\newcommand{\trace}[1]{\rm{Tr}\,#1}

The **inner product** is also called as the **dot product**. It is represented
in [@eq:inner_prod]. A concrete example is shown in [@eq:inner_prod_eg]

$$ \rm{u} \cdot \rm{v} = \tr{\rm{u}}\rm{v} $$ {#eq:inner_prod}

$$ \rm{u} = \begin{pmatrix}
u_1\\
u_2\\
u_3\\
\end{pmatrix} \qquad \rm{v} = \begin{pmatrix}
v_1\\
v_2\\
v_3\\
\end{pmatrix} $$
$$ \tr{\rm{u}}v = \begin{pmatrix}
u_1 & u_2 & u_3\\
\end{pmatrix} \begin{pmatrix}
v_1\\
v_2\\
v_3\\
\end{pmatrix} = u_1v_1 + u_2v_2 + u_3v_3 $$ {#eq:inner_prod_eg}

If the inner product of two vectors are equal to zero, then the two vectors are
said to be **orthogonal**. 

$$ \tr{\rm{u}}\rm{v} = 0 $$ {#eq:orthogonal}

The **norm** of a vector is written as in [@eq:norm], it is the length of the
vector; a concrete example is shown in [@eq:norm_eg]. It is said that the
vector $\rm{u}$ is **normalized** if $\norm{\rm{u}}= 1$. If two vectors are
orthogonal and they are normalized, then they are said to be **orthonormal**.

$$ \norm{\rm{u}} = \sqrt{\tr{\rm{u}}\rm{u}} $$ {#eq:norm}

$$ \norm{\rm{u}} = \sqrt{u_1^2 + u_2^2 + u_3^2} $$ {#eq:norm_eg}

The **outer product** is the counterpart of the inner product. It is shown in
[@eq:outer_prod]. A concrete example is shown in [@eq:outer_prod_eg].

$$ \rm{u} \otimes \rm{v} = \rm{u}\tr{\rm{v}} $$ {#eq:outer_prod}

$$ \rm{u}\tr{\rm{v}} = \begin{pmatrix}
u_1\\
u_2\\
u_3\\
\end{pmatrix} \begin{pmatrix}
v_1 & v_2 & v_3\\
\end{pmatrix} = \begin{pmatrix}
u_1v_1 & u_1v_2 & u_1v_3\\
u_2v_1 & u_2v_2 & u_2v_3\\
u_3v_1 & u_3v_2 & u_3v_3\\
\end{pmatrix} $$ {#eq:outer_prod_eg}

Let $\rm{A}$ be a rectangular matrix given by

$$ \rm{A} = \begin{pmatrix}
a & d\\
b & e\\
c & f\\
\end{pmatrix} $$

Calculating $\tr{\rm{A}}A$ yields a symmetrical matrix in which the sum of the
diagonal elements is the sum of the squares of the elements of $\rm{A}$.

$$ \begin{pmatrix}
a & b & c\\
d & e & f\\
\end{pmatrix} \begin{pmatrix}
a & d\\
b & e\\
c & f\\
\end{pmatrix} = \begin{pmatrix}
a^2 + b^2 + c^2 & ad + be + cf\\
ad + be + cf & d^2 + e^2 + f^2\\
\end{pmatrix} $$

The sum of the diagonal elements of matrix $\rm{B}$ is the **Trace** of $\rm{B}$
written as $\trace{\rm{B}}$. [@eq:proof_trace] shows that the sum of the diagonals of $\tr{\rm{A}}\rm{A}$ is
the same as the sum of the squares of the matrix $\rm{A}$ with dimensions $m \times n$.

$$ \begin{align}
\trace{(\tr{\rm{A}}\rm{A})} &= \sum_{j=1}^{n} (\tr{\rm{A}}\rm{A})_{jj} \\
&=\sum_{j=1}^{n} \sum_{k=1}^{m} \tr{a}_{jk}a_{kj} \\
&=\sum_{j=1}^{n} \sum_{k=1}^{m} a^2_{kj}
\end{align} $$ {#eq:proof_trace}

## Matrix Inverse
\newcommand{\det}[1]{\rm{det} #1}

Not all matrices are invertible. If $\rm{A}$ is invertible, then it's inverse is
written as $\rm{A}^{-1}$. Any matrix multiplied by its inverse is equal to the identity
matrix similar to the normal reciprocal identity as shown in [@eq:reciprocal].

$$ \rm{A}\rm{A}^{-1} = \rm{A}^{-1}\rm{A} = \rm{I} $$ {#eq:reciprocal}

Some identities are shown below showing their respective proofs.

$$ (\rm{AB})^{-1} = \rm{A}^{-1}\rm{B}^{-1} $$ {#eq:distributive_inverse}
$$ \begin{align}
(\rm{AB})(\rm{B}^{-1}\rm{A}^{-1}) &= \rm{I}\\
(\rm{B}\rm{B}^{-1})(\rm{A}\rm{A}^{-1}) &= \rm{I}\\
\rm{I}\,\rm{I} &= \rm{I}
\end{align} $$
$$ (\tr{\rm{A}})^{-1} = \tr{(\rm{A}^{-1})} $$ {#eq:inverse_transpose}
$$ \begin{align}
\tr{\rm{A}}\tr{(\rm{A}^{-1})} &= \rm{I}\\
\tr{(\rm{A}^{-1}\rm{A})} &= \rm{I}\\
\tr{\rm{I}} &= \rm{I}
\end{align} $$

To express more concretely, the inverse of a general $2 \times 2$ matrix.

$$ \begin{gather}
\rm{A} = \begin{pmatrix}
a & b\\
c & d\\
\end{pmatrix} \\
\rm{A}\rm{A}^{-1} = I \\
\begin{pmatrix}
a & b\\
c & d\\
\end{pmatrix} \begin{pmatrix}
x_1 & x_2\\
y_1 & y_2\\
\end{pmatrix} = \begin{pmatrix}
1 & 0\\
0 & 1\\
\end{pmatrix}
\end{gather} $$

By matrix multiplication, we can create 4 linear equations two of which are
homogeneous and the others inhomogeneous. We can solve for $y_1$ and $y_2$ in
terms of $x_1$ and $x_2$ respectively from the homogenous equations and solve
for. Then we solve the elements of the inverse matrix from the inhomogenous
equations.

$$ \begin{gather}
ax_1 + by_1 = 1 \\
ax_2 + by_2 = 0 \\
cx_1 + dy_1 = 0 \\
cx_2 + dy_2 = 1 \\
y_1 = -\frac{c}{d}x_1 \\
y_2 = -\frac{a}{b}x_2 \\
x_1 = \frac{d}{ad-bc} \\
y_1 = \frac{-c}{ad-bc} \\
x_2 = \frac{-b}{ad-bc} \\
y_2 = \frac{a}{ad-bc} \\
\end{gather} $$

The inverse of a general $2 \times 2$ matrix is therefore given by [@eq:2x2_inverse].
If the denominator of the scalar is $0$ then the inverse of $\rm{A}$ does not exist.
This is called the **determinant** which is represented in [@eq:determinant].

$$ \rm{A}^{-1} = \frac{1}{ad-bc}\begin{pmatrix}
d & -b\\
-c & a\\
\end{pmatrix} $$ {#eq:2x2_inverse}

$$ \det{\rm{A}} = ad - bc $$ {#eq:determinant}

$$ \text{If det A}= 0,\,\text{then}\, \rm{A}^{-1} \,\text{does not exist.} $$

## Orthogonal Matrices
The inverse of an orthogonal matrix is equal to its transpose.

$$ \begin{gather}
\rm{Q}^{-1} = {\rm{Q}}\\
\tr{\rm{Q}}\rm{Q} = \rm{Q}\tr{\rm{Q}} = I\\
\end{gather} $$

The rows and rows, and columns and columns are orthonormal to each other.

The orthogonal matrix preserves the norm/lengths of a vector.

$$ \begin{align}
\norm{Q x}^2 &= \tr{(\rm{Q}\rm{x})} (\rm{Q}\rm{x})\\
&= \tr{\rm{x}}\tr{\rm{Q}} \rm{Q}\rm{x} \\
\norm{x}^2 &= \tr{\rm{x}}\rm{x}\\
\end{align} $$

The product of two orthogonal matrices is itself an orthogonal matrix.

$$ \begin{align}
\rm{Q}\rm{R} &= \rm{S}\\
\tr{(\rm{Q}\rm{R})} &= \tr{\rm{S}}\\
\rm{Q}\rm{R}\tr{\rm{R}}\tr{\rm{Q}} &= \tr{\rm{S}}\rm{S} = \rm{I}\\
\tr{\rm{S}}\rm{S} &= I
\end{align} $$

### Rotation Matrices

Suppose a vector, $v$, with elements $x$ and $y$ has an angle of $\phi$ above
the $x$-axis. It is to be rotated such that it is at an angle of $\theta$ above
its initial angle. Its new elements are now $x'$ and $y'$ but it still has a
length of $\norm{v}=r$. It is represented symbolically as in
[@eq:vector_rotation]

$$ \rm{R}_\theta \begin{pmatrix}
x\\
y\\
\end{pmatrix} = \begin{pmatrix}
x'\\
y'\\
\end{pmatrix}$$ {#eq:vector_rotation}

The derivation for $\rm{R}_\theta$ can be achieved by using some trigonometric
identities.

$$ \begin{align}
x' &= r \cos{(\phi + \theta)}\\
   &= (r\cos{\phi})\cos{\theta} - (r\sin{\theta})\sin{\theta}\\
   &= \cos{\theta}x - \sin{\theta}y\\
y' &= r \sin{(\phi + \theta)}\\
   &= (r\sin{\phi})\cos{\theta} + (r\cos{\phi})\sin{\phi}\\
   &= \cos{\theta}y + \sin{\phi}x 
\end{align}$$

$$\begin{pmatrix}
\cos{\theta} & -\sin{\theta}\\
\sin{\theta} & \cos{\theta}\\
\end{pmatrix} \begin{pmatrix}
x\\
y\\
\end{pmatrix} = \begin{pmatrix}
x'\\
y'\\
\end{pmatrix}$$

The inverse of this rotation matrix rotates the vector counter-clockwise. This
can be done by inverting $\theta$ to $-\theta$ resulting in
[@eq:counter_rotation]. Notice that the inverse of a rotating matrix is also
its transpose, signifying that it is an orthogonal matrix. Try to prove yourself
that $\rm{R}(-\theta) = \rm{R}^{-1}(\theta)$.

$$ \begin{gather}
\rm{R}_\theta^{-1} = \begin{pmatrix}
\cos{\theta} & \sin{\theta}\\
-\sin{\theta} & \cos{\theta}\\
\end{pmatrix}
\end{gather} $$ {#eq:counter_rotation}

For the rotation of a three-dimensional vector around the $z$-axis, the $z$
coordinate stays fixed. Solving for the rotation matrix for an angle of $\theta$,

$$ \begin{align}
\rm{R}_z \begin{bmatrix}
x\\
y\\
z\\
\end{bmatrix} &= \begin{bmatrix}
x'\\
y'\\
z'\\
\end{bmatrix} \\
\rm{R}_z &= \begin{bmatrix}
\cos{\theta} & \sin{\theta} & 0\\
-\sin{\theta} & \cos{\theta} & 0\\
0 & 0 & 1\\
\end{bmatrix}
\end{align} $$

### Permutation Matrices

A **permutation** matrix _permutes_ the rows/columns of another
matrix that it is multiplied to. See [@eq:permutation_2x2] and note that
the values inside the braces are the indices of the rows or columns of
that matrix. The equation tells us that there are only two permutations
of a 2x2 matrix.

$$ 2 \times 2: \qquad {1,2}, {2,1} $$ {#eq:permutation_2x2}

The identity matrix is a permutation matrix:

$$ \begin{pmatrix}
0 & 1\\
1 & 0\\
\end{pmatrix} \begin{pmatrix}
a & b\\
c & d\\
\end{pmatrix} = \begin{pmatrix}
c & d\\
a & b\\
\end{pmatrix}\\
\begin{pmatrix}
a & b\\
c & d\\
\end{pmatrix} \begin{pmatrix}
0 & 1\\
1 & 0\\
\end{pmatrix} = \begin{pmatrix}
b & a\\
d & c\\
\end{pmatrix} $$    

For a 3x3 matrix, the number of permutations is $3! = 6$:

$$ \begin{align}
3 \times 3:\\
\{1,\,2,\,3\},\,& \{1,\,3,\,2\},\\ 
\{2,\,1,\,3\},\,& \{2,\,3,\,1\},\\
\{3,\,1,\,2\},\,& \{3,\,2,\,1\}
\end{align} $$

It does not matter whether the rows or columns are permutated.

Work out the inverses of a three by three matrix with the un-permutated
indices of 
$$ {1, 2, 3} $$.
You will find that only those matrices that are
un-permutated and with only one permutation are their own inverses.

An example matrix is:
$$ \begin{pmatrix}
12 & 3\\
-9 & 7\\
\end{pmatrix} $$

The determinant is 65, therefore the matrix is invertible.

# Systems of Linear Equations

## Gaussian Elimination
Consider we have a system of linear equations with three equations and three
unknowns as in [@eq:ex_gauss]. We can rewrite this system into matrices as in
[@eq:matf_gauss], and can be written symbolically as in [@eq:sym_gauss].

$$ \begin{align}
-3 x_1 + 2 x_2 - x_3 &= 1 \\
6 x_1 -6 x_2 + 7 x_3 &= -7 \\
3 x_1 - 4 x_2 + 4 x_3 &= -6
\end{align} $$ {#eq:ex_gauss}

$$ \begin{gather}
\begin{pmatrix}
-3 & 2 & -1\\
6 & -6 & 7\\
3 & -4 & 4\\
\end{pmatrix} \begin{pmatrix}
x_1\\
x_2\\
x_3\\
\end{pmatrix} = \begin{pmatrix}
1\\
-7\\
-6\\
\end{pmatrix}
\end{gather} $$ {#eq:matf_gauss}

$$ Ax = b $$ {#eq:sym_gauss}

To do _Gaussian Elimination_, we must first construct the _augmented matrix_
which is done by appending the elements of $b$ as a column in $A$. See
[@eq:augmented_mat]

$$ \begin{pmatrix}
-3 & 2 & -1 & -1\\
6 & -6 & 7 & -7\\
3 & -4 & 4 & -6\\
\end{pmatrix} $$ {#eq:augmented_mat}

The goal of _Gaussian Elimination_ is to produce an upper triangular matrix
from this _augmented matrix_. Three operations can be done in order to preserve
the solution of the system, first is to multiply a row by a constant, second is
to interchange the order of the rows, and last is to add the elements of one
row to another row. See the following solution: 

$$ \begin{gather}
\begin{pmatrix}
-3 & 2 & -1 & -1\\
0 & -2 & 5 & -9\\
0 & -2 & 3 & -7\\
\end{pmatrix}
\end{gather} $$

Here, we chose the _pivot-position_ to be the element -3. We multiply the first
row by a factor of 2 and added it to the second row to zero the element below
the _pivot-position_. We also added the first row (without any scaling) to the
third row to zero its first element as well. Notice that the _pivot-position_
does not change.

$$ \begin{gather}
\begin{pmatrix}
-3 & 2 & -1 & -1\\
0 & -2 & 5 & -9\\
0 & 0 & -2 & 2\\
\end{pmatrix}
\end{gather} $$

Here, we chose the pivot point to be the second element of the second row,
which is -2. Then we multiplied the second row with -1 and added it to the
third row to make its second row zero.

Now that the _augmented matrix_ has become an upper triangular matrix, the
resulting system of equations can easily be solved by back subsitution:

$$ \begin{align}
-3 x_1 + 2 x_2 - x_3 &= -1 \\
-2 x_2 + 5 x_3 &= -9 \\
-2 x_3 &= 2
\end{align} $$

$$ \begin{align}
x_3 &= -1 \\
x_2 &= -\frac{1}{2}(-5 x_3 - 9) = 2 \\
x_1 &= -\frac{1}{3}(-1 -2 x_2 + x_3) = 2
\end{align} $$

In the _augmented matrix_ the pivot point cannot be zero. Interchange the rows
to make it non-zero.

## Reduced Row Echelon Form
\newcommand{\rref}[1]{\rm{rref}(#1)}

The _Reduced Row Echelon Form_ is a matrix where the first nonzero element
of the rows is a 1 and the values above and below this element are zeroes. It is
denoted as $\rref{A}$. Solving for the _Reduced Row Echelon Form_ of an example
matrix.

$$ A = \begin{pmatrix}
1 & 2 & 3 & 4\\
4 & 5 & 6 & 7\\
6 & 7 & 8 & 9\\
\end{pmatrix} \to \begin{pmatrix}
1 & 2 & 3 & 4\\
0 & -3 & -6 & -9\\
0 & -5 & -10 & -15\\
\end{pmatrix} \to \begin{pmatrix}
1 & 2 & 3 & 4\\
0 & 1 & 2 & 3\\
0 & 1 & 2 & 3\\
\end{pmatrix} \to \begin{pmatrix}
1 & 0 & -1 & -2\\
0 & 1 & 2 & 3\\
0 & 0 & 0 & 0\\
\end{pmatrix} = \rref{A} $$

The resulting matrix only has two pivot points the columns in which they are located
are called the _pivot columns_. In a _reduced row echelon form_, the pivots become 1.

$$ B = \begin{pmatrix}
3 & -7 & -2 & -7\\
-3 & 5 & 1 & 5\\
6 & -4 & 0 & 2\\
\end{pmatrix} \to \begin{pmatrix}
3 & -7 & -2 & -7\\
0 & -2 & -1 & -2\\
0 & 5 & 2 & 8\\
\end{pmatrix} \to \begin{pmatrix}
3 & 0 & 3/2 & 0\\
0 & -2 & -1 & -2\\
0 & 0 & -1 & 6\\
\end{pmatrix} \to \begin{pmatrix}
3 & 0 & 0 & 9\\
0 & -2 & 0 & -8\\
0 & 0 & -1 & 6\\
\end{pmatrix} $$

$$ \rref{B} = \begin{pmatrix}
1 & 0 & 0 & 3\\
0 & 1 & 0 & 4\\
0 & 0 & 1 & -6\\
\end{pmatrix} $$

In the above example, there are three pivot columns.

## Calculating Inverses
One useful application of reduced row echelon forms is by calculating inverses.
This can be done by creating an augmented matrix with the n by n identity
matrix as the augmentor. This is based on the fact that when multiplying the
rows of a matrix with the columns of its inverse, we get the columns of the 
identity matrix, so we can solve these systems of linear equations to find the
inverse of that matrix, see [@eq:inverse_ech]. Then we bring the $\rref{A}$ 
to equal $I$ and the resulting matrix would be an augmentation of the identity
matrix and the inverse of the original matrix.

$$ \begin{gather}
A A^{-1} = I \\
A a_i^{-1} = e_i \\
i \text{ pertains to the column index}
\end{gather} $$ {#eq:inverse_ech}

Below is an example:

$$ \begin{align}
A &= \begin{pmatrix}
3 & -7 & -2\\
-3 & 5 & 1\\
6 & -4 & 0\\
\end{pmatrix} \\ &\to \begin{pmatrix}
3 & -7 & -2 & 1 & 0 & 0\\
-3 & 5 & 1 & 0 & 1 & 0\\
6 & -4 & 0 & 0 & 0 & 1\\
\end{pmatrix} \\ &\to \begin{pmatrix}
3 & -7 & -2 & 1 & 0 & 0\\
0 & -2 & -1 & 1 & 1 & 0\\
0 & 10 & 4 & -2 & 0 & 1\\
\end{pmatrix} \\ &\to \begin{pmatrix}
3 & 0 & 3/2 & -5/2 & -7/2 & 0\\
0 & -2 & -1 & 1 & 1 & 0\\
0 & 0 & -1 & 3 & 5 & 1\\
\end{pmatrix} \\ &\to \begin{pmatrix}
3 & 0 & 0 & 2 & 4 & 3/2\\
0 & -2 & 0 & -2 & -4 & -1\\
0 & 0 & -1 & 3 & 5 & 1\\
\end{pmatrix} \\ &\to \begin{pmatrix}
1 & 0 & 0 & 2/3 & 4/3 & 1/2\\
0 & 1 & 0 & 1 & 2 & 1/2\\
0 & 0 & 1 & -3 & -5 & -1\\
\end{pmatrix}
\end{align} $$

## Elementary Matrices
The method of Gaussian elimination can be represented as a series of
multiplication steps to produce an upper triangular matrix. The multipliers
to the original matrix are called _Elementary Matrices_. Below shows an
example:

$$ \begin{align}
A &= \begin{pmatrix}
-3 & 2 & -1\\
6 & -6 & 7\\
3 & -4 & 4\\
\end{pmatrix} \\ &\to \begin{pmatrix}
-3 & 2 & -1\\
0 & -2 & 5\\
3 & -4 & 4\\
\end{pmatrix} = M_1 A \\
M_1 &= \begin{pmatrix}
1 & 0 & 0\\
2 & 1 & 0\\
0 & 0 & 1\\
\end{pmatrix} \\ &\to \begin{pmatrix}
-3 & 2 & -1\\
0 & -2 & 5\\
3 & -4 & 4\\
\end{pmatrix} = M_2 M_1 A \\
M_2 &= \begin{pmatrix}
1 & 0 & 0\\
0 & 1 & 0\\
1 & 0 & 1\\
\end{pmatrix} \\ &\to \begin{pmatrix}
-3 & -2 & -1\\
0 & -2 & 5\\
0 & 0 & -2\\
\end{pmatrix} = M_3 M_2 M_1 A \\
M_3 &= \begin{pmatrix}
1 & 0 & 0\\
0 & 1 & 0\\
0 & -1 & 1\\
\end{pmatrix} \\ M_3 M_2 M_1 A &= U
\end{align} $$

## LU Decomposition
$$ \begin{align}
M_3 M_2 M_1 A &= U \\
M_1^{-1} M_2^{-1} M_3^{-1} M_3 M_2 M_1 A &= M_1^{-1} M_2^{-1} M_3^{-1} U \\
A &= LU
\end{align} $$

From the previous example, we can determine the inverses of the elementary
matrices. This is rather trivial as we can just inverse the sign of the
non-diagonal entries of these matrices.

$$ \begin{align}
M_1^{-1} &= \begin{pmatrix}
1 & 0 & 0\\
-2 & 1 & 0\\
0 & 0 & 1\\
\end{pmatrix} \\
M_2^{-1} &= \begin{pmatrix}
1 & 0 & 0\\
0 & 1 & 0\\
-1 & 0 & 1\\
\end{pmatrix} \\
M_3^{-1} &= \begin{pmatrix}
1 & 0 & 0\\
0 & 1 & 0\\
0 & 1 & 1\\
\end{pmatrix}
\end{align} $$

The product of these matrices can also be determined trivially as putting
putting elements in their corresponding place.

$$ L = M_1^{-1} M_2^{-1} M_3^{-1} = \begin{pmatrix}
1 & 0 & 0\\
-2 & 1 & 0\\
-1 & 1 & 0\\
\end{pmatrix} $$

## Solving $(LU)x = b$
Given the $LU$ Decomposition of a matrix $A$ we can solve for $LUx=b$.
This method is much faster than Gaussian distribution, atleast for
computers.

$$ L = \begin{pmatrix}
1 & 0 & 0\\
-2 & 1 & 0\\
-1 & 1 & 1\\
\end{pmatrix} \qquad U = \begin{pmatrix}
-3 & 2 & -1\\
0 & -2 & 5\\
0 & 0 & -2\\
\end{pmatrix} \qquad b = \begin{pmatrix}
-1\\
-7\\
-6\\
\end{pmatrix} $$

First we let $y=Ux$ and solve for y using $Ly = b$. Then solve for x using
$Ux = y$. See the solution below:

$$ \begin{align}
Ly &= b \\
y_1 &= -1 \\
-2y_1 + y_2 &= -7 \\
-y_1 + y_2 + y_3 &= -6 \\
\begin{pmatrix}
y_1\\
y_2\\
y_3\\
\end{pmatrix} &= \begin{pmatrix}
-1\\
-9\\
2\\
\end{pmatrix} \\
Ux &= y \\
-3x_1 + 2x_2 - x_3 &= -1 \\
-2x_2 + 5x_3 &= -9 \\
-2x_3 &= 2 \\
\begin{pmatrix}
x_1\\
x_2\\
x_3\\
\end{pmatrix} &= \begin{pmatrix}
2\\
2\\
-1\\
\end{pmatrix}
\end{align} $$

# References
Coursera: *Matrix Algebra for Engineers*. Chasnov

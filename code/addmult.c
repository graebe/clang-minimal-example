int add(int a, int b);
int mult(int a, int b);

int main () {
    int a;
    int b;
    int c;
    a = 1;
    b = 2;
    c = add(a, b);
    c = mult(a, b);
}

int add (int a, int b) {
    int c;
    c = a + b;
    return c;
}

int mult(int a, int b) {
    int c;
    c = a * b;
    return c;
}
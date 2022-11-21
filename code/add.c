int add(int a, int b);

int main () {
    int a;
    int b;
    int c;
    a = 1;
    b = 2;
    c = add(a, b);
}

int add (int a, int b) {
    int c;
    c = a + b;
    return c;
}
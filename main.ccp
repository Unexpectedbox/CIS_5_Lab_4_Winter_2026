#include <iostream>
#include <iomanip>

//shortcuts
using std::cout;
using std::string;
using std::endl;
using std::cin;
using std::fixed;
using std::setprecision;


// Function declarations
int calculateSum(const int arr[], int size);         // const pointer
double getAverage(int sum, int size);                // pass by value
void addBonus(int arr[], int size, int bonus = 5);   // modifies original array
int findHighest(const int* arr, int size);           // pointer
int countPassed(const int arr[], int size);          // const pointer (>= 70)


int main() {

    const int SIZE = 5;
    int scores[SIZE] = { 65, 82, 90, 45, 78 };

    // OG Scores
    cout << "Original scores:\n";
    for (int i = 0; i < SIZE; i++) {
        cout << scores[i] << " ";
    }
    cout << endl;

    // Sum and Average of Scores
    int sum = calculateSum(scores, SIZE);
    double average = getAverage(sum, SIZE);

    cout << "\nSum: " << sum << endl;
    cout << fixed << setprecision(2);
    cout << "Average: " << average << endl;

    // Bonus Points
    addBonus(scores, SIZE);


    cout << "\nScores after bonus:\n";
    for (int i = 0; i < SIZE; i++) {
        cout << scores[i] << " ";
    }
    cout << endl;

    cout << "\nHighest score: " << findHighest(scores, SIZE) << endl;
    cout << "Number of students passed: " << countPassed(scores, SIZE) << endl;

    return 0;
}

//Sum
int calculateSum(const int arr[], int size) {
    int total = 0;
    for (int i = 0; i < size; i++) {
        total += arr[i];
    }
    return total;
}

// Average
double getAverage(int sum, int size) {
    return sum / double(size);
}

// Bouns Points
void addBonus(int arr[], int size, int bonus) {
    for (int i = 0; i < size; i++) {
        arr[i] += bonus;
    }
}

// Highest Score
int findHighest(const int* arr, int size) {
    int highest = arr[0];
    for (int i = 1; i < size; i++) {
        if (arr[i] > highest) {
            highest = arr[i];
        }
    }
    return highest;
}

// Passed
int countPassed(const int arr[], int size) {
    int count = 0;
    for (int i = 0; i < size; i++) {
        if (arr[i] >= 70) {
            count++;
        }
    }
    return count;
}

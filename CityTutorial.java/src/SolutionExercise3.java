import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

class SolutionExercise3 {
    private static List<Integer> list = new ArrayList<>();
    // We create an ArrayList to store values (which is currently unused).

    public static void main(String[] args) {
        // Create a Scanner object for user input.
        Scanner in = new Scanner(System.in);

        // Prompt the user to enter a value for 'n'.
        System.out.println("Value for n: ");
        int n = in.nextInt();

        // Check if 'n' is within the range 0 to 10.
        if (0 <= n && n <= 10) {
            // Calculate the sum of numbers from 1 to 'n' using the calculateSum method.
            int result = calculateSum(n);
            System.out.println("Sum from 1 to " + n + ": " + result);
        } else {
            // If 'n' is not within the specified range, inform the user that it's invalid.
            System.out.println("Invalid n");
        }
    }

    // Recursive method to calculate the sum of numbers from 1 to 'n'.
    private static int calculateSum(int n) {
        // Base case: If 'n' is 0 or negative, return 0.
        if (n <= 0) {
            return 0;
        } else {
            // Recursive case: Return 'n' plus the sum of numbers from 1 to 'n-1'.
            return n + calculateSum(n - 1);
        }
    }
}

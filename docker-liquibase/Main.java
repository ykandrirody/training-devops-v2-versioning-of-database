class Main {
    public static void main(String[] args) {
		while (!Thread.currentThread().isInterrupted()) {
			try {
				System.out.println("I'm alive !"); // Display the string.
				Thread.sleep(1000); // Wait 1 second
			} catch (InterruptedException ex) {
				Thread.currentThread().interrupt();
			}
		}
        
    }
}
# AC-Motor-sim
This MATLAB simulation visualizes the dynamics of a rotating magnetic field in AC motors, using sinusoidal functions and phasor representation to demonstrate changes over multiple cycles. The report includes setup, code explanation, and visual outputs for detailed analysis.

# Introduction
This report delves into an analytical examination of a MATLAB simulation that vividly demonstrates the dynamics of a rotating magnetic field within a specified time frame and under predetermined conditions. The analysis focuses primarily on the representation and interactions of magnetic field components over multiple cycles of operation, employing both spatial and temporal visualizations to capture the underlying mechanics of the phenomenon.

# Background
The concept of a rotating magnetic field is pivotal in electromechanical systems, particularly in the operation of alternating current (AC) motors. Nikola Tesla first conceptualized the rotating magnetic field, which forms the operational foundation of most AC motors used today. The simulation under analysis employs MATLAB to model this field using sinusoidal functions, complex numbers to represent phasors, and graphical visualization to depict the interaction of these fields.

A rotating magnetic field is generated using multiple coils arranged peripherally around a rotor or stator in an electrical motor. By varying the current through these coils in a controlled manner, a magnetic field that rotates in space is produced. This field interacts with the rotor and induces motion.

# Code Explanation
The MATLAB script is structured as follows:

# Initial Setup
1. Commands such as clc, clear, and close all are used to reset the MATLAB environment, ensuring that previous data does not affect the simulation.
2. Parameters like bmax, freq, T, and w are defined to set the basic characteristics of the magnetic field, such as its frequency and angular velocity.

# Magnetic Field Component Generation
1. The script calculates the sinusoidal variations of the magnetic field components at different phase shifts, creating a complex representation of each component. The phase shifts are critical as they dictate the rotational effect of the overall magnetic field.
2. Baa1, Bbb1, Bcc1, etc., represent magnetic field vectors at different phases and their sequential rotation is indicated by increasing phase delays.

# Plotting and Visualization
1. The figure and plot commands are used to create visual representations of these fields. Lines and annotations are added to enhance the clarity of the diagrams, showing the direction and magnitude of the fields.
2. A loop updates these plots to animate the rotation of the magnetic field over time, reflecting how it would appear in a real-world application.

# Four Pole AC Motor Simulation
![image](https://github.com/user-attachments/assets/0b0a1fe8-f32a-4222-bd6e-0a4269d617aa)

![image](https://github.com/user-attachments/assets/044ec0e2-8e75-412f-9a8a-cd916ab2e61c)

# Eight Pole AC Motor Simulation
![image](https://github.com/user-attachments/assets/abc2347d-4e08-4802-8e68-79f8b84b6459)

![image](https://github.com/user-attachments/assets/71d87f3a-a907-42ab-a2a1-59538867c79d)

# Conclusion
This brief examination sets the stage for a detailed exploration of the simulated rotating magnetic field's behavior. By meticulously setting up initial conditions and leveraging MATLAB's graphical capabilities, the code provides a robust platform for understanding complex electromechanical interactions in AC motors, serving both educational and practical purposes in electrical engineering studies.

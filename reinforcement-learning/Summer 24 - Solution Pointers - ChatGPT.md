### **1. (a) Define Reinforcement Learning (RL) and describe its key elements.** *(7 marks)*

**Definition**:  
Reinforcement Learning is a type of machine learning paradigm concerned with how agents ought to take actions in an environment to maximise cumulative reward.

**Key Elements**:
1. **Agent**: The learner or decision maker.
2. **Environment**: Everything the agent interacts with.
3. **State (S)**: A representation of the environment at a given time.
4. **Action (A)**: Choices made by the agent.
5. **Reward (R)**: Scalar feedback signal indicating how good an action was.
6. **Policy (π)**: Mapping from states to actions.
7. **Value Function (V)**: Predicts expected long-term return from a state.
8. **Model (optional)**: A representation of the environment for planning.

---

### **1. (b) Analyze the different approaches employed in Reinforcement Learning (RL).** *(7 marks)*

**RL Approaches**:
1. **Model-Free vs. Model-Based**:
   - *Model-Free*: Learns policy or value function without a model (e.g., Q-learning, SARSA).
   - *Model-Based*: Learns the model of the environment to simulate outcomes.

2. **Value-Based**:
   - Focuses on estimating value functions to derive a policy (e.g., DQN).
   
3. **Policy-Based**:
   - Directly learns the policy function (e.g., REINFORCE, Policy Gradient).

4. **Actor-Critic Methods**:
   - Combines policy-based and value-based methods by having both an actor (policy) and critic (value).

---

### **2. (a) Evaluate the concept of Multi-Armed Bandit and explain its key components.** *(7 marks)*

**Definition**:  
A Multi-Armed Bandit (MAB) problem is a simplified RL scenario with a fixed set of actions and no state transitions.

**Key Components**:
1. **Actions (Arms)**: Each action yields a random reward.
2. **Reward Distribution**: Unknown probability distribution associated with each arm.
3. **Objective**: Maximise the expected reward over time.
4. **Exploration vs. Exploitation**: Balancing learning about arms vs. choosing the best-known arm.

---

### **2. (b) Compare exploration and exploitation in decision-making processes.** *(7 marks)*

**Exploration**:
- Choosing suboptimal actions to gain more information about the environment.

**Exploitation**:
- Choosing the best-known action based on current information.

**Trade-off**:
- Crucial in RL. Too much exploration delays convergence; too much exploitation risks missing better policies.

**Strategies**:
- ε-greedy, Upper Confidence Bound (UCB), Thompson Sampling.

---

### **3. (a) Analyze the concept of Markov Decision Processes (MDPs) in RL.** *(7 marks)*

**Definition**:  
An MDP provides a formal framework for modeling decision making with outcomes that are partly random and partly under control.

**Components**:
1. **States (S)**
2. **Actions (A)**
3. **Transition Probabilities (P)**
4. **Reward Function (R)**
5. **Discount Factor (γ)**

**Properties**:
- *Markov Property*: The future is independent of the past given the present state.

---

### **3. (b) Describe how Bellman Equations formalise the principles of optimality.** *(7 marks)*

**Bellman Equations**:
- Recursive definitions of value functions.

**Bellman Expectation Equation**:
- For a given policy π:
  \[
  V^{\pi}(s) = \sum_{a} \pi(a|s) \sum_{s'} P(s'|s,a)[R(s,a,s') + \gamma V^{\pi}(s')]
  \]

**Bellman Optimality Equation**:
- For optimal value function:
  \[
  V^{*}(s) = \max_{a} \sum_{s'} P(s'|s,a)[R(s,a,s') + \gamma V^{*}(s')]
  \]

These formalise **Dynamic Programming** for finding optimal policies.

---

### **4. (a) Analyze On-Policy First-Visit and Every-Visit Monte Carlo (MC) Control.** *(7 marks)*

**Monte Carlo Control**:
- Learns from actual episodes without needing a model.

**First-Visit MC**:
- Only the first occurrence of a state in an episode is used for updates.

**Every-Visit MC**:
- All occurrences of a state in an episode are used.

**On-Policy**:
- Uses the same policy to generate behaviour and improve itself (e.g., ε-soft policies).

---

### **4. (b) Explain the Cauchy sequence and Green’s equation.** *(7 marks)*

**Cauchy Sequence**:
- A sequence where elements become arbitrarily close as the sequence progresses:
  \[
  \forall \epsilon > 0, \exists N : \forall m,n > N, \ |a_n - a_m| < \epsilon
  \]

**Green’s Equation (Green’s Theorem)**:
- In vector calculus, relates a line integral around a simple curve to a double integral over the region it encloses:
  \[
  \oint_{C} (L dx + M dy) = \iint_{R} \left( \frac{\partial M}{\partial x} - \frac{\partial L}{\partial y} \right) dxdy
  \]

(Though unusual in an RL paper, possibly tests mathematical maturity.)

---

### **5. (a) Describe how Dynamic Programming computes optimal value functions.** *(7 marks)*

**Dynamic Programming (DP)**:
- Uses Bellman equations and full knowledge of MDP.

**Methods**:
1. **Policy Evaluation**: Estimate value function for a given policy.
2. **Policy Improvement**: Derive better policy from value function.
3. **Iterative updates**: Converge to optimal value function and policy.

---

### **5. (b) Explain Policy Iteration and Value Iteration Algorithms.** *(7 marks)*

**Policy Iteration**:
1. Policy Evaluation.
2. Policy Improvement.
3. Repeat until convergence.

**Value Iteration**:
- Combines policy evaluation and improvement into a single step:
  \[
  V_{k+1}(s) = \max_{a} \sum_{s'} P(s'|s,a)[R(s,a,s') + \gamma V_k(s')]
  \]

---

### **6. (a) Illustrate the effectiveness of Temporal Difference (TD) Learning.** *(7 marks)*

**TD Learning**:
- Combines MC (sampling) and DP (bootstrapping).

**TD(0) Update**:
\[
V(s) \leftarrow V(s) + \alpha [R_{t+1} + \gamma V(s') - V(s)]
\]

**Effectiveness**:
- Online, low variance, and incremental.
- Doesn’t require full episode completion.

---

### **6. (b) Explain SARSA and Q-learning.** *(7 marks)*

**SARSA (On-policy)**:
\[
Q(s,a) \leftarrow Q(s,a) + \alpha [r + \gamma Q(s',a') - Q(s,a)]
\]

**Q-Learning (Off-policy)**:
\[
Q(s,a) \leftarrow Q(s,a) + \alpha [r + \gamma \max_{a'} Q(s',a') - Q(s,a)]
\]

**Comparison**:
- SARSA learns behaviour-aware policy.
- Q-learning learns optimal policy regardless of behaviour.

---

### **7. (a) Describe how Eligibility Traces improve learning efficiency.** *(7 marks)*

**Eligibility Traces**:
- Bridge TD and MC methods by attributing rewards to multiple past states/actions.

**TD(λ)**:
- Combines updates across multiple steps using decay parameter λ.

**Advantages**:
- Faster learning.
- Balances bias and variance.

---

### **7. (b) Analyze the concept of Policy Gradients.** *(7 marks)*

**Policy Gradient Methods**:
- Directly optimise the policy by gradient ascent:
  \[
  \nabla J(\theta) = \mathbb{E}_{\pi_\theta} [\nabla \log \pi_\theta(a|s) Q^{\pi}(s,a)]
  \]

**Pros**:
- Work with continuous action spaces.
- Handle stochastic policies.

---

### **8. (a) Common algorithms in full Reinforcement Learning.** *(7 marks)*

1. **Q-Learning**
2. **SARSA**
3. **Deep Q-Networks (DQN)**
4. **Policy Gradient (REINFORCE)**
5. **Actor-Critic**
6. **Proximal Policy Optimisation (PPO)**
7. **Trust Region Policy Optimisation (TRPO)**

---

### **8. (b) How does Least Squares Method help in RL?** *(7 marks)*

**Least Squares Temporal Difference (LSTD)**:
- Uses linear function approximation for value function:
  \[
  V(s) \approx \theta^T \phi(s)
  \]

**Benefits**:
- Reduces variance.
- Efficient for batch learning.
- Stable convergence.

---

### **9. (a) Explain applications of POMDPs.** *(7 marks)*

**POMDPs** (Partially Observable MDPs):
- Used when full state observability is not possible.

**Applications**:
- Robotics (imperfect sensors)
- Dialogue systems
- Autonomous navigation
- Medical diagnosis

---

### **9. (b) Core principles of Deep Q-Networks (DQN).** *(7 marks)*

**DQN Components**:
1. **Neural Network** approximating Q-function.
2. **Experience Replay** for sample efficiency.
3. **Target Network** for stabilisation.

**Loss Function**:
\[
L = (r + \gamma \max_{a'} Q_{\text{target}}(s',a') - Q(s,a))^2
\]

---

### **10. (a) Explain REINFORCE algorithm and its challenges.** *(7 marks)*

**REINFORCE**:
- Monte Carlo Policy Gradient method.

\[
\Delta \theta = \alpha \nabla \log \pi_\theta(a|s) G_t
\]

**Challenges**:
- High variance.
- Slow convergence.
- Requires full episode completion.

---

### **10. (b) Architecture of Hierarchical Reinforcement Learning (HRL).** *(7 marks)*

**HRL Principles**:
- Decomposes tasks into sub-tasks.

**Components**:
1. **High-level policy (meta-controller)**: Chooses subgoals.
2. **Low-level policy (controller)**: Executes actions to achieve subgoals.
3. **Options Framework**: Formalises temporal abstraction.

**Benefits**:
- Better exploration.
- Efficient learning in complex environments.

---
title: Learning to Make Reliable Engineering Design Decisions
type: page
summary: Bayesian optimization, multi-agent decision-making, and a future research agenda for generalizable agentic AI in engineering design.
show_date: false
share: false
commentable: false
editable: false
---

Engineering decisions must account for expensive evaluations, changing operating conditions, and expertise distributed across people, models, and subsystems. My research asks how AI can reuse design experience to improve these decisions while respecting physical constraints, uncertainty, and limited evaluation budgets.

## Doctoral research

### Collaborative and distributed exploration

My cost-aware multi-agent Bayesian optimization framework uses local Gaussian process models to explore different regions of a design space. Shared observations inform sampling decisions, and a stopping rule weighs prospective gains against evaluation costs. My distributed work extends this approach to agents that communicate with selected neighbors, studying how network structure affects search performance and communication cost.

Related publications: [Cost-aware multi-agent design exploration](/publication/chen-cost-aware-2025/) and [distributed multi-agent Bayesian optimization](/publication/chen-distributed-2024/).

### Robust design across operating conditions

In collaborative work on cold-spray nozzle design, I applied constrained Bayesian optimization to improve particle impact velocity across four operating conditions. Condition-specific models and a robust acquisition rule balance performance with consistency. Ongoing robust multi-agent work extends this direction to coordinated exploration across practitioner-defined conditions.

Related publication: [Constrained Bayesian optimization for robust design](/publication/chen-constrained-2025/).

### Competitive exploration and human–AI decisions

My competitive Bayesian optimization research studies decisions whose value depends on an uncertain opponent as well as one's own performance. Opponent-aware sampling and stopping strategies account for how new information changes a decision-maker's competitive position. Complementary experimental work uses a game-theoretic research platform to study team-based design decisions under competition.

Related publication: [A game-theoretic research platform for team-based design](/publication/li-game-theoretic-2025/).

## Industry research

During my summer 2026 internship at Robert Bosch LLC, I developed a hybrid framework for Bayesian optimization under unknown constraints. LLM-based feasibility assessments are combined with data-driven constraint modeling, online calibration, and adaptive trust. Bayesian optimization retains responsibility for objective modeling, uncertainty quantification, and candidate selection.

## Future research agenda

My proposed independent research program has two connected directions. These are future plans, building on my doctoral and industry research.

### Generalizable agentic design optimization

I plan to study how agents can learn reusable decision strategies from cost-aware, constrained, robust, distributed, and competitive optimization methods. The approach has three parts:

1. **Represent the engineering decision state:** variables and units, objectives, constraints, operating conditions, tools, budgets, and uncertain observations.
2. **Learn from optimization expertise:** use decision trajectories from specialized optimization methods to teach an agent when different strategies are appropriate and how they may be combined.
3. **Improve through engineering feedback:** use feasibility, performance, robustness, information gain, cost, and human preferences to improve decisions beyond imitation.

Evaluation will examine performance on related but unseen tasks, constraint violations, uncertainty calibration, evaluation costs, and negative transfer. When previous experience is unhelpful, an agent should seek more evidence or return to a problem-specific optimizer.

### Human–AI multi-agent design of complex systems

I plan to investigate how specialized agents and human experts can coordinate decisions across coupled engineering subsystems. Initial studies will use existing Bayesian optimization agents and small coupled problems, before integrating learned agents.

A system-level evaluator will assess subsystem performance, shared constraints, physical coupling, and uncertainty. This assessment will guide information exchange, additional evaluations, and human consultation. Engineers will contribute domain knowledge, identify unrealistic assumptions, resolve trade-offs, and judge practical feasibility. Comparisons with independent subsystem optimization and centralized approaches will examine feasible system performance, coordination costs, and sensitivity to model error.

My long-term goal is an AI design partner that accumulates engineering experience while grounding its recommendations in physical models, uncertainty, and engineering evidence.

[View my publications](/publication/) · [Download my CV](/uploads/Siyu_Academic_CV.pdf) · [Contact me](/#contact)

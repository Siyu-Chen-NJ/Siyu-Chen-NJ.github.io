---
title: ''
type: landing
sections:
  - block: about.biography
    id: about
    content:
      title: About
      username: admin
  - block: markdown
    id: research
    content:
      title: Research
      text: |-
        ### Coordinated design exploration
        I develop cost-aware and distributed multi-agent Bayesian optimization methods in which agents use local Gaussian process models, share useful observations, and balance the value of further exploration against evaluation and communication costs.

        ### Robust engineering design
        I study constrained Bayesian optimization for designs that must perform consistently across changing operating conditions. Applications include cold-spray nozzle design, with ongoing work extending robust exploration to multi-agent settings.

        ### Competitive decisions and human–AI teaming
        I investigate opponent-aware sampling and stopping strategies, together with experimental platforms for studying how people and AI make design decisions under competition.

        ### Future research directions
        My proposed research program connects two directions: learning transferable agentic optimization strategies from specialist methods and engineering feedback, and coordinating human–AI teams across coupled engineering subsystems.

        [Explore my research and future agenda →](/research/)
    design:
      columns: '2'
  - block: collection
    id: publications
    content:
      title: Publications
      text: Journal articles and peer-reviewed conference proceedings, with accepted work marked explicitly.
        [Filter publications by type or year](/publication/).
      count: 0
      filters:
        folders:
          - publication
      order: desc
      archive:
        enable: false
    design:
      columns: '2'
      view: citation
  - block: markdown
    id: manuscripts
    content:
      title: Under Review
      text: |-
        The following manuscripts are under review.

        - **LLM-Augmented Unknown-Constrained Bayesian Optimization with Learned Correction**\
          Siyu Chen, J. Araki, L. Lange, et al. · AAAI Conference on Artificial Intelligence (2027 submission).
        - **Competitive Bayesian Optimization**\
          Siyu Chen, Alparslan Emrah Bayrak, and Zhenghui Sha.
        - **Robust Multi-agent Bayesian Optimization**\
          Siyu Chen, Stephen Bierschenk, Desiderio Kovar, and Zhenghui Sha.
    design:
      columns: '2'
  - block: markdown
    id: experience
    content:
      title: Experience
      text: |-
        ### Research

        **Graduate Researcher · The University of Texas at Austin**\
        Aug. 2022–present · Austin, TX, USA

        - Collaborative and distributed multi-agent Bayesian optimization, supported by the National Science Foundation: local Gaussian process models, cost-aware stopping, and communication-efficient coordination.
        - Robust Bayesian optimization for engineering design, supported by the National Science Foundation: uncertainty-aware methods for expensive design evaluations under varying operating conditions.
        - Competitive Bayesian optimization and human–AI decision-making, supported by the Air Force Office of Scientific Research: opponent-aware search and stopping, and IRB-approved human–human and human–AI studies.

        **Graduate Researcher · Information-Oriented Control Lab, Technical University of Munich**\
        Aug. 2019–May 2021 · Munich, Germany

        Developed Gaussian process-based modeling and distributed consensus-control methods for uncertain multi-agent systems with switching communication topologies. Evaluated the methods on multi-robot and multi-UAV coordination problems as part of my M.Sc. thesis research.

        ### Industry

        **LLM & Agentic AI R&D Intern · Robert Bosch LLC**\
        May–Aug. 2026 · Sunnyvale, CA, USA

        Developed a hybrid approach to optimization with unknown constraints: LLMs assess feasibility, while Bayesian optimization handles objective modeling, uncertainty quantification, and candidate selection. The approach combines online calibration, adaptive trust, and data-driven constraint modeling.

        **Upcoming: NSF R&D Intern · EOS North America**\
        Scheduled Oct. 2026–Mar. 2027 · Pflugerville, TX, USA

        Planned work on Gaussian process models for predicting microstructural properties from in-situ monitoring in laser powder bed fusion, and on closed-loop decisions and control for manufacturing process parameters.
    design:
      columns: '2'
  - block: markdown
    id: teaching
    content:
      title: Teaching & Mentoring
      text: |-
        **Teaching Assistant · Advanced Control and Robotics Laboratory**\
        Technical University of Munich, Department of Electrical and Computer Engineering · 2020–2021

        Led simulation and hardware laboratory sessions for more than 50 graduate students. Supported student learning, evaluated laboratory work, and supervised the safe operation of experimental systems.

        **Undergraduate Research Mentor · ME 377K Individual Reading and Research**\
        The University of Texas at Austin · Fall 2023

        Mentored an undergraduate researcher on Bayesian optimization and acquisition-function evaluation, from problem formulation and literature review through implementation and experimental analysis. Developed instructional materials on Gaussian process models and guided comparisons of exploration–exploitation strategies.
    design:
      columns: '2'
  - block: markdown
    id: honors-and-awards
    content:
      title: Honors & Awards
      text: |-
        - **2024–2025:** George J. Heuer, Jr. Ph.D. Endowed Graduate Fellowship, Cockrell School of Engineering, The University of Texas at Austin.
        - **2024:** Honorable Mention, Graduate Recruitment Poster Competition, Walker Department of Mechanical Engineering, The University of Texas at Austin.
        - **2023:** Top-Ten Abstract and Travel Award, DTM B-Part Fellows and Student Poster Session, ASME IDETC/CIE, Boston, MA.
        - **2023:** Second Place, CSAW Hack3D, Tandon School of Engineering, New York University.
        - **2018:** National Scholarship for Postgraduates; Outstanding Student, Tongji University.
        - **2013–2016:** National Scholarship for Undergraduates; Special-Grade Scholarship; four First-Grade Scholarships, Nanjing Institute of Technology.
    design:
      columns: '2'
  - block: markdown
    id: presentations
    content:
      title: Presentations
      text: |-
        ### Talks

        - **Constrained Bayesian Optimization for Robust Design of Complex Systems Under Varying Operating Conditions** — Siyu Chen. EOS GmbH, Pflugerville, TX, USA · Feb. 2025.
        - **Cost-Aware Bayesian Agents for Human–AI Teaming** — Siyu Chen and Zhenghui Sha. Fourth Annual AI4SE & SE4AI Series, Systems Engineering Research Center (SERC) and INCOSE · Virtual · Oct. 2023.

        ### Poster

        - **Multi-Agent Bayesian Optimization for Unknown Design Space Exploration** — Siyu Chen and Zhenghui Sha. DTM B-Part Fellows and Student Poster Session, ASME IDETC/CIE · Boston, MA · Aug. 2023. **Top-Ten Abstract and Travel Award.**
    design:
      columns: '2'
  - block: markdown
    id: service
    content:
      title: Academic Service
      text: |-
        **Journal reviewer · 2026**

        Scientific Reports; International Journal of Machine Learning and Cybernetics; Signal, Image and Video Processing; Machine Vision and Applications; Journal of King Saud University Computer and Information Sciences.

        **Conference reviewer · 2024–2026**

        ASME International Design Engineering Technical Conferences and Computers and Information in Engineering Conference (IDETC/CIE).
    design:
      columns: '2'
  - block: markdown
    id: skills
    content:
      title: Technical Skills
      text: |-
        - **Programming:** Python, MATLAB.
        - **Machine learning:** Bayesian optimization, reinforcement learning, multi-agent systems, Gaussian processes, probabilistic modeling.
        - **Optimization:** Black-box and robust optimization, surrogate modeling, experimental design, distributed and game-theoretic optimization.
        - **Libraries:** PyTorch, NumPy, SciPy, scikit-learn.
    design:
      columns: '2'
  - block: contact
    id: contact
    content:
      title: Contact
      text: |-
        Walker Department of Mechanical Engineering\
        The University of Texas at Austin
      email: siyu.chen@utexas.edu
      autolink: true
      address:
        city: Austin
        region: Texas
        country: United States
    design:
      columns: '2'
---

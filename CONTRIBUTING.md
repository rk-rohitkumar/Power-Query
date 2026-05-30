# 📜 Contribution Guidelines and Project Rules

These guidelines ensure consistency, quality, and reusability across all code contributed to this repository.

## ✅ Code Standards & Best Practices

### 1. M Language Style
*   **Naming:** Use descriptive snake\_case names for functions and variables (e.g., `calculate_tax`, `source_data`).
*   **Comments:** Every function/example must start with a clear header block detailing:
    *   `Purpose:` What the code does in one sentence.
    *   `Inputs:` List expected parameters (if any).
    *   `Outputs:` Describe the expected return type/structure.
*   **Readability:** Use proper indentation and vertical spacing to separate logical blocks of code.

### 2. Performance Focus (The Core Rule)
*   **Efficiency First:** Always prioritize the most performant M function available. If an approach works but is known to be inefficient (e.g., excessive use of `Table.Combine` on large datasets), document *why* it's slow and suggest a better alternative.
*   **Context Awareness:** When providing code, briefly mention the optimal place to run it (e.g., "Best used in a Query Parameter," or "Requires connection to Source A").

### 3. Documentation Rules (The Context)
*   **Atomic Units:** Each file/example should solve **one single problem**. Do not combine unrelated features into one script.
*   **Example Clarity:** Provide minimal, self-contained examples. Assume the user has only basic understanding of Power Query and needs explicit context for complex functions.

## 🚀 How to Contribute
1.  Fork this repository.
2.  Create a new branch (`git checkout -b feature/new-function-name`).
3.  Add your optimized M code example into the appropriate directory (e.g., `Functions/` or `TipsAndTricks/`).
4.  Ensure the file is accompanied by detailed documentation.
5.  Submit a Pull Request!
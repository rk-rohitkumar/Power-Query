# 🎨 InfoGraphic Draft: Dynamic Header Detection
## Title: Never Clean Headers Manually Again! ✨

**Subtitle:** Effortlessly extract clean data from messy Excel sheets using Power Query.

*(Visual Suggestion: Use a vibrant, approachable color palette—blues and greens often work well for data/tech topics. Use large, clear icons.)*

***

### 🚀 SECTION 1: What is the Problem? (The Pain Point)
**(Goal: Hook the user by relating to their frustration)**

**Icon:** A person scratching head or a stack of disorganized papers.
**Headline:** The Dreaded Messy Header Row 😱
**Body Text:**
When you pull data from real-world sources, it often comes with extra junk—blank rows, titles, dates, and notes above the actual table. Manually finding and removing these "junk headers" is tedious, time-consuming, and prone to human error every single time!

---

### 💡 SECTION 2: The Solution – Dynamic Header Detection
**(Goal: Introduce Power Query & the function simply)**

**Icon:** A magic wand or a robot arm sorting data.
**Headline:** Meet Your Digital Assistant: Automatic Cleaning!
**Body Text:**
Our custom Power Query function automatically detects *where* your real table header starts, no matter how many junk rows are above it. It intelligently skips the noise and promotes only the true column names.

*(Visual Suggestion: Show a "Before" and "After" comparison graphic here.)*
*   **❌ BEFORE:** (Image of an Excel sheet with 5-10 messy rows, then the actual headers starting)
    *   *Label:* Messy Data Input
*   **✅ AFTER:** (Image of a clean table structure with clear headers)
    *   *Label:* Clean Output - Ready for Analysis!

---

### ⚙️ SECTION 3: How Does It Work? (The Simple Mechanics)
**(Goal: Explain the process without showing M Code)**

**Icon:** A magnifying glass or an arrow tracking position.
**Headline:** The Magic Behind the Scenes ✨
**Body Text:**
Instead of guessing, our function uses a clever technique that *locates* the consistent header name (e.g., "Customer ID") within the sheet's data structure. Once found, it knows exactly how many rows to discard from the top, ensuring your real headers are always captured and used!

*(Visual Flow Chart Suggestion - Use arrows and simple boxes):*
1.  **INPUT:** (Image of raw Excel binary file) ➡️ **[Excel Source]**
2.  **ACTION:** Find "Header Name" Position (The Function runs!) 🔄
3.  **DECISION:** Skip Junk Rows | Keep Clean Data
4.  **OUTPUT:** Structured Table! 🎁

---

### 🛠️ SECTION 4: How to Use It? (Step-by-Step Guide)
**(Goal: Translate the technical steps into user actions)**

**Headline:** Your 5-Minute Setup Guide 🚀
*(Use numbered steps with clear icons)*

1.  **Define Parameters:** Set up three required inputs in Power Query: The target header name, a data identifier, and the function path.
    *   *Icon:* Pencil/Settings Gear 🔧
2.  **Customize Values:** Update these parameters to match your specific Excel files. **(Crucial Step!)**
3.  **Copy Function:** Copy the provided custom code snippet into a fresh, blank query window in Power Query Editor.
4.  **Create Custom Function:** Right-click on this new query and select **'Create Custom Function'**. (This locks the magic in place).
5.  **Run the Report!:** Invoke your newly created function using an Excel Binary File source.

---

### ⚠️ SECTION 5: Tips & Limitations (Best Practices)
**(Goal: Manage user expectations and provide necessary warnings)**

**Headline:** Pro-Tips for Power Users 💪
*(Use warning sign icons 🛑 and thumbs up icons 👍)*

**✅ Best Practice / Tip:**
*   **Consistency is Key:** Make sure the primary header row you are looking for appears consistently across all data sheets. Our function relies on this!

**🚧 Limitations / Know This:**
*   **Specific Column Required:** The header must always be detectable in a specific column format.
*   **Single Function Use:** This custom function is designed to solve one problem: finding the dynamic header row.

***

### 🔑 Design Summary Checklist for Designer

| Element | Style/Tone | Content Focus |
| :--- | :--- | :--- |
| **Overall Tone** | Friendly, Authoritative, Simple | Avoid jargon (or immediately explain it). Use analogies. |
| **Color Palette** | Bright, Professional, Technical (e.g., Electric Blue, Teal, Gray) | Ensure high contrast for readability. |
| **Visual Elements** | Icons, Flow Charts, Before/After Comparisons | Must be highly visual to support the non-technical audience. |
| **Key Takeaway** | "This function saves time and eliminates manual errors." | Reiterate value at the end. |
'==============================================================
' VBA Code for generating a PowerPoint Presentation based on the README content.
' Place this code into a standard Module in the VBE (Alt+F11).
'==============================================================

Sub GenerateDynamicHeaderRowPPT()

    Dim ppApp As Object
    Dim ppPresentation As Object
    Dim ppSlide As Object

    ' Initialize PowerPoint Application
    On Error Resume Next
    Set ppApp = GetObject(, "PowerPoint.Application")
    If ppApp Is Nothing Then
        Set ppApp = CreateObject("PowerPoint.Application")
    End If
    On Error GoTo 0

    ppApp.Visible = True ' Make PowerPoint visible to the user

    ' Create a new presentation
    Set ppPresentation = ppApp.Presentations.Add

    ' --- Slide 1: The Hook (Problem & Solution) ---
    Dim slide1 As Object
    Set slide1 = ppApp.SlideShowSlides.Add(ppPresentation, 1, 1) ' Add title layout
    slide1.Shapes.Title.TextFrame.TextRange.Text = "✨ DynamicHeaderRow: Auto-Detect Headers"
    ' Add a subtitle/body text box (assuming default content placeholder is used)
    Dim bodyBox1 As Object
    Set bodyBox1 = slide1.Shapes("Placeholder 2") ' Adjust Placeholder index if needed
    bodyBox1.TextFrame.TextRange.Text = _
        "⚠️ The Pain Point: Manually cleaning headers is tedious and breaks when source files change." & vbCrLf & _
        "✅ The Fix: Our function automatically scans the data, detects where the true header row is," & vbCrLf & _
        "and cleans the structure without manual intervention. Keep your pipelines stable!"

    ' --- Slide 2: Parameters & Setup ---
    Dim slide2 As Object
    Set slide2 = ppApp.SlideShowSlides.Add(ppPresentation, 2, 1)
    slide2.Shapes.Title.TextFrame.TextRange.Text = "⚙️ Getting Started: Required Inputs"

    ' Using a simple bullet point list for clarity (requires careful manual layout in PPT)
    Dim bodyBox2 As Object
    Set bodyBox2 = slide2.Shapes("Placeholder 2") ' Adjust Placeholder index if needed
    bodyBox2.TextFrame.TextRange.Text = _
        "1. Define Parameters:" & vbCrLf & _
        "- `header1`: The specific, consistent header name (e.g., ""ID""). This acts as the anchor." & vbCrLf & _
        "- `Data_`: A column name within the source data." & vbCrLf & _
        "- `~Power Query\\TipsAndTricks\\DynamicHeaderRow`: The unique function identifier."

    ' --- Slide 3: Process Flow (The Magic!) ---
    Dim slide3 As Object
    Set slide3 = ppApp.SlideShowSlides.Add(ppPresentation, 3, 1)
    slide3.Shapes.Title.TextFrame.TextRange.Text = "🚀 How It Works? (Process Flow)"

    ' This requires a diagram/flowchart layout, so the text is descriptive:
    Dim bodyBox3 As Object
    Set bodyBox3 = slide3.Shapes("Placeholder 2") ' Adjust Placeholder index if needed
    bodyBox3.TextFrame.TextRange.Text = _
        "1. **Ingest:** Reads raw Excel Binary Files." & vbCrLf & _
        "2. **Detect:** Uses List.PositionOf to find the exact row where the header begins (The Anchor)." & vbCrLf & _
        "3. **Skip:** Removes all metadata/junk rows above the true header position." & vbCrLf & _
        "4. **Promote:** Automatically identifies and promotes the first clean row into permanent column headers."

    ' --- Slide 4: Limitations & Best Practices ---
    Dim slide4 As Object
    Set slide4 = ppApp.SlideShowSlides.Add(ppPresentation, 4, 1)
    slide4.Shapes.Title.TextFrame.TextRange.Text = "⚠️ Success Rules: Tips & Tricks"

    ' Using a two-column layout for Best Practices and Limitations
    Dim bodyBox4 As Object
    Set bodyBox4 = slide4.Shapes("Placeholder 2") ' Adjust Placeholder index if needed
    bodyBox4.TextFrame.TextRange.Text = _
        "🟢 BEST PRACTICES:" & vbCrLf & _
        "- Keep the header structure consistent across all files." & vbCrLf & _
        "- The anchor column (`header1`) must be reliable." & vbCrLf & vbCrLf & _
        "🟡 BE AWARE OF:" & vbCrLf & _
        "- Structure changes can break it (e.g., if the header moves)." & vbCrLf & _
        "- Requires clean, tabular source data for optimal results."

    MsgBox "The PowerPoint presentation has been successfully generated!", vbInformation

End Sub

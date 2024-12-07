import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddNotesPage extends StatefulWidget {
  const AddNotesPage({super.key});

  @override
  State<AddNotesPage> createState() => _AddNotesPageState();
}

class _AddNotesPageState extends State<AddNotesPage> {
  final TextEditingController notesController = TextEditingController();
  int notesLineCount = 1; // Initial line count for Notes Fill

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Add Notes',
          style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              'Title',
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 50, // Reduced height
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Notes Title',
                  hintStyle: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFFD8D8D8),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFFD8D8D8),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFFD8D8D8),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                style: GoogleFonts.inter(fontSize: 14),
                maxLines: 1,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Category',
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 50, // Adjusted height
              child: DropdownButtonFormField<String>(
                value: 'Option 1', // Default value
                isDense: true, // Makes the dropdown layout more compact
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFFD8D8D8),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFFD8D8D8),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12), // Adjusted padding
                ),
                icon: const Icon(Icons.arrow_drop_down), // Dropdown icon
                items: const [
                  DropdownMenuItem(
                    value: 'Option 1',
                    child: Text('Uncategorized'),
                  ),
                  DropdownMenuItem(
                    value: 'Option 2',
                    child: Text('Works'),
                  ),
                ],
                onChanged: (value) {
                  // Handle change
                },
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Notes Fill',
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: notesController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xFFD8D8D8),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xFFD8D8D8),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              style: GoogleFonts.inter(fontSize: 14),
              maxLines: null, // Allows dynamic resizing
              minLines: notesLineCount, // Dynamically calculated
              onChanged: (text) {
                setState(() {
                  notesLineCount = '\n'.allMatches(text).length + 1;
                });
              },
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Create',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

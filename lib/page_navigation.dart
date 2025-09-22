import 'package:flutter/material.dart';
import 'package:mahmoudbakir_week2_widgetcatalog/widgets/design_systems/cupertino_widgets/3_cupertino_alert_dialoge.dart';
import 'package:mahmoudbakir_week2_widgetcatalog/widgets/design_systems/cupertino_widgets/4_cupertino_context_menu.dart';
import 'package:mahmoudbakir_week2_widgetcatalog/widgets/design_systems/cupertino_widgets/5_cupertino_date_picker.dart';
import 'widgets/design_systems/cupertino_widgets/1_cupertino_action_sheet.dart';
import 'widgets/design_systems/cupertino_widgets/2_cupertino_activity_indicator.dart';

class PageNavigation extends StatefulWidget {
  const PageNavigation({super.key});

  @override
  State<PageNavigation> createState() => _PageNavigationState();
}

class _PageNavigationState extends State<PageNavigation> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final int _totalPages = 60;

  void _goToPreviousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _goToNextPage() {
    if (_currentPage < _totalPages - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mahmoud Bakir Week 2 Widget Catalog',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          // Main content area with PageView
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemCount: _totalPages,
              itemBuilder: (context, index) {
                return _buildPage(index);
              },
            ),
          ),
          // Navigation controls
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left arrow
                IconButton(
                  onPressed: _currentPage > 0 ? _goToPreviousPage : null,
                  icon: const Icon(Icons.arrow_back_ios),
                  iconSize: 32,
                  color: _currentPage > 0 ? Colors.blue : Colors.grey,
                ),
                // Page indicator
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '${_currentPage + 1} / $_totalPages',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                // Right arrow
                IconButton(
                  onPressed:
                      _currentPage < _totalPages - 1 ? _goToNextPage : null,
                  icon: const Icon(Icons.arrow_forward_ios),
                  iconSize: 32,
                  color:
                      _currentPage < _totalPages - 1
                          ? Colors.blue
                          : Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage(int index) {
    // List of all widget pages
    final List<Widget> widgetPages = [
      const CupertinoActionSheetWidget(),
      const CupertinoActivityIndicatorWidget(),
      CupertinoAlertDialogeWidget(),
      CupertinoContextMenuWidget(),CupertinoDatePickerWidget()
    ];

    // Return the widget at the current index, or a placeholder if index is out of range
    if (index < widgetPages.length) {
      return widgetPages[index];
    } else {
      // Placeholder for pages not yet created
      return Container(
        margin: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.blue.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.blue.withValues(alpha: 0.3)),
        ),
      );
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

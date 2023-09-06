$(document).ready(function() {
    // Toggle sidebar
    $(".sidebar-toggle").click(function() {
      $(".sidebar").toggleClass("mobile");
    });
  
    // Show/hide subcategories
    $(".sidebar-category").click(function() {
      // Collapse other open subcategories
      $(".sidebar-category").not(this).removeClass("category-open");
      $(".sidebar-subcategory").not($(this).next(".sidebar-subcategory")).slideUp();
  
      // Toggle current subcategory
      $(this).toggleClass("category-open");
      $(this).next(".sidebar-subcategory").slideToggle();
    });
  
    // Collapse all subcategories except for the first category
    $(".sidebar-subcategory").not(":first").hide();
  });

  function atras() {
    window.history.back();
  }
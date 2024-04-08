package com.ecommerce.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.entities.BookData;
import com.ecommerce.entities.Cart;
import com.ecommerce.entities.Order;
import com.ecommerce.entities.UserData;
import com.ecommerce.repository.BookDataDb;
import com.ecommerce.repository.CartDb;
import com.ecommerce.repository.OrderDb;
import com.ecommerce.repository.UserDataDb;

import jakarta.servlet.http.HttpSession;



@Controller
public class BookController {

	@Autowired
	BookDataDb bookDataDb;

	@Autowired
	UserDataDb userDataDb;

	@Autowired
	CartDb cardDb;

	@Autowired
	OrderDb orderDb;

	@GetMapping("search")
	public ModelAndView search(@RequestParam(name = "query") String query, ModelMap modelMap, HttpSession session) {
	    List<BookData> list;
	    
	    // Check if the query is empty or null
	    if (query == null || query.trim().isEmpty()) {
	        // If query is empty, return all books
	        list = (List<BookData>) bookDataDb.findAll();
	    } else {
	        // Otherwise, search for books containing the query in their name or author
	        list = bookDataDb.findByBookNameContainingIgnoreCaseOrAuthorContainingIgnoreCase(query, query);
	    }
	    
	    String email = (String) session.getAttribute("uid");
        int quantity = 0; // Default value if userData is null
        if (email != null) {
            UserData userData = userDataDb.findByEmail(email);
            if (userData != null) {
                quantity = cardDb.countByUserDataId(userData.getId());
            }
	        modelMap.put("quantity", quantity);
	    }

	    ModelAndView modelAndView = new ModelAndView();
	    modelAndView.addObject("object4", list);
	    modelAndView.setViewName("searchPage.jsp");
	    return modelAndView;
	}
	

	
	
	@GetMapping("editProduct")
	public String editUserData(int id, ModelMap modelMap) {
		BookData bookData = bookDataDb.findById(id).get();
		modelMap.put("obj", bookData);

		return "editBookData.jsp";

	}

	@GetMapping("editProductDone")
	public String updateBook(int id, String bookName, String author, double price, String image, String category,String description) {

		BookData bookData = bookDataDb.findById(id).get();
		bookData.setId(id);
		bookData.setBookName(bookName);
		bookData.setAuthor(author);
		bookData.setPrice(price);
		bookData.setImage(image);
		bookData.setCategory(category);
		bookData.setDescription(description);
		bookDataDb.save(bookData);
		return "productDetails";
	}

	@GetMapping("adminHome")
	public String adminHome() {
		return "adminHome.jsp";
	}

	@GetMapping("viewAll")
	public ModelAndView viewAll(ModelMap modelMap, HttpSession session) {
		modelMap.put("object", bookDataDb.findAll());
		
		 String email = (String) session.getAttribute("uid");
		    if (email != null) {
		        UserData userData = userDataDb.findByEmail(email);
		        int quantity = cardDb.countByUserDataId(userData.getId());
		        modelMap.put("quantity", quantity);
		    }
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addAllObjects(modelMap);

		modelAndView.setViewName("viewAll.jsp");
		return modelAndView;
	}

	@GetMapping("home")
	public ModelAndView viewBook(ModelMap modelMap, HttpSession session) {
		
		List<BookData> list2 = bookDataDb.findAllByCategory("Fiction");
		modelMap.put("object2", list2);

		List<BookData> list3 = bookDataDb.findAllByCategory("Non Fiction");
		modelMap.put("object3", list3);

		 String email = (String) session.getAttribute("uid");
		    if (email != null) {
		        UserData userData = userDataDb.findByEmail(email);
		        int quantity = cardDb.countByUserDataId(userData.getId());
		        modelMap.put("quantity", quantity);
		    }
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addAllObjects(modelMap);

		modelAndView.setViewName("home.jsp");
		return modelAndView;
	}

	@GetMapping("productDetails")
	public ModelAndView productDetails(ModelMap modelMap) {
		modelMap.put("obj", bookDataDb.findAll());

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addAllObjects(modelMap);

		modelAndView.setViewName("product.jsp");
		return modelAndView;
	}

	@GetMapping("orderDetails")
	public ModelAndView orderDetails(ModelMap modelMap) {
		modelMap.put("obj", orderDb.findAll());

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addAllObjects(modelMap);

		modelAndView.setViewName("orderData.jsp");
		return modelAndView;
	}

	@GetMapping("userDetails")
	public ModelAndView userDetails(ModelMap modelMap) {
		modelMap.put("obj", userDataDb.findAll());

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addAllObjects(modelMap);

		modelAndView.setViewName("userData.jsp");
		return modelAndView;
	}

	@GetMapping("addBook")
	public String addBook() {
		return "addBook.jsp";
	}

	@GetMapping("register")
	public String register() {
		return "register.jsp";
	}

	@GetMapping("viewDetail")
	public ModelAndView singleItem(int id,ModelMap modelMap, HttpSession session) {
		BookData bookData = bookDataDb.findById(id).get();
		
		String email = (String) session.getAttribute("uid");
	    if (email != null) {
	        UserData userData = userDataDb.findByEmail(email);
	        int quantity = cardDb.countByUserDataId(userData.getId());
	        modelMap.put("quantity", quantity);
	    }
	    
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("obj", bookData);
		modelAndView.setViewName("viewDetail.jsp");
		return modelAndView;
	}

	@GetMapping("Book Store login")
	public String login() {
		return "login.jsp";
	}

	@GetMapping("logout")
	public String logout() {
		return "logout.jsp";
	}

	@GetMapping("remove")
	public String remove(int id) {
		cardDb.deleteById(id);
		return "home";

	}

	@GetMapping("delete")
	public String delete(int id) {
		bookDataDb.deleteById(id);
		return "productDetails";
	}

	@GetMapping("deleteOrder")
	public String deleteorder(int id) {
		orderDb.deleteById(id);
		return "orderDetails";
	}

	@GetMapping("deleteUser")
	public String deleteUser(int id) {
		userDataDb.deleteById(id);
		return "userDetails";
	}

	@GetMapping("completeOrder")
	public String completeOrder(String email, String bookId, float total, String cartId) {
		UserData userData = userDataDb.findByEmail(email);
		Order order = new Order(userData, total, bookId);
		orderDb.save(order);
		String[] array = cartId.split(",");
		for (String letter : array) {
			if (letter != "") {
				int id = Integer.valueOf(letter);
				cardDb.deleteById(id);
			}
		}
		return "home";

	}

	 @GetMapping("addToCart")
	    public String addToCart(@RequestParam int id, @RequestParam String email, Model model) {
	        UserData userData = userDataDb.findByEmail(email);
	        int quantity = cardDb.countByUserDataId(userData.getId());

	        BookData book = bookDataDb.findById(id).orElse(null);
	        if (book != null) {
	            Cart cart = new Cart(book, userData);
	            cardDb.save(cart);
	            quantity++;
	        }

	        model.addAttribute("quantity", quantity);

	        return "home";
	    }

	@GetMapping("/allCart")
	public ModelAndView allCart(HttpSession session, ModelMap modelMap, String email) {
		UserData userData = userDataDb.findByEmail(email);

		ModelAndView modelAndView = new ModelAndView();
		int totalCart = cardDb.countByUserDataId(userData.getId());
		modelAndView.addObject("quantity", totalCart);

		int id = userData.getId();

		modelMap.put("obj", cardDb.findAllByUserDataId(id));

		modelAndView.addAllObjects(modelMap);
		session.setAttribute("uid", email);
		modelAndView.setViewName("allCart.jsp");
		return modelAndView;
	}

	@PostMapping("submitBook")
	public String registeration(String bookName, String author, double price, String image, String category, String description) {

		BookData bookData = new BookData();
		bookData.setBookName(bookName);
		bookData.setAuthor(author);
		bookData.setPrice(price);
		bookData.setImage(image);
		bookData.setCategory(category);
		bookData.setDescription(description);		
		bookDataDb.save(bookData);
		return "redirect:/productDetails";

	}

	@GetMapping("submitUser")
	public String submitUser(String name, String email, String phone, String address, String landmark, String city,
			String state, String pincode) {

		UserData userData = new UserData();

		userData.setName(name);
		userData.setEmail(email);
		userData.setPhone(phone);
		userData.setAddress(address);
		userData.setLandmark(landmark);
		userData.setCity(city);
		userData.setState(state);
		userData.setPincode(pincode);

		userDataDb.save(userData);
		return "Book Store login";

	}

	@PostMapping("login")
	public ModelAndView loginUser(HttpSession session, @RequestParam String email, @RequestParam String password) {

        UserData userData = userDataDb.findByEmail(email);

        if (userData == null) {

            if (email.equals("admin@gmail.com") && password.equals("admin123")) {
                session.setAttribute("uid", email);
                ModelAndView modelAndView = new ModelAndView();
                modelAndView.setViewName("redirect:/productDetails");
                return modelAndView;
            } else {
                ModelAndView modelAndView = new ModelAndView();
                modelAndView.setViewName("Book Store login");
                return modelAndView;
            }

        } else {

            ModelAndView modelAndView = new ModelAndView();
            int totalCart = cardDb.countByUserDataId(userData.getId());

            modelAndView.addObject("quantity", totalCart);
            
            modelAndView.setViewName("redirect:/home");

            session.setAttribute("uid", email);
            return modelAndView;
        }

    }

}
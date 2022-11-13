/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.controller;

import com.htn.pojo.Seat;
import com.htn.pojo.Bustrip;
import com.htn.pojo.Goods;
import com.htn.pojo.User;
import com.htn.repository.UserRepository;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.htn.service.BustripService;
import com.htn.service.GoodsService;
import com.htn.service.SeatService;
import com.htn.service.StationService;
import com.htn.service.TicketService;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author admin
 */
@Controller
public class HomeController {

    @Autowired
    private BustripService bustripService;
    @Autowired
    private TicketService ticketService;
    @Autowired
    private SeatService seatService;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private GoodsService goodsService;
    @Autowired
    private StationService stationService;


    @RequestMapping("/")
    public String home(Model model,
            @RequestParam Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("bustrips", this.bustripService.getBustrips(params, page));
        model.addAttribute("counter",this.bustripService.countBustrip());
        return "index";
    }

    @GetMapping("/bustrip/{bustripId}")
    public String details(Model model,
            @PathVariable(value = "bustripId") int id) {

        model.addAttribute("bustrip", this.bustripService.getBustripById(id));
        model.addAttribute("comment", this.bustripService.getComments(id));

        return "bustrip-details";
    }

    @GetMapping("/bustrip/{bustripId}/buy-ticket")
    public String buyTicketView(Model model, @PathVariable(value = "bustripId") int id) {
        model.addAttribute("bustrip", this.bustripService.getBustripById(id));
        Bustrip b = this.bustripService.getBustripById(id);
        Set<Seat> listSeat = b.getBus().getSeatSet();
        for (Seat s : listSeat) {
            int seatId = s.getId();
            boolean isBooked = this.ticketService.checkBookedSeat(seatId, id);
            
            s.setIsBooked(isBooked);
            
        }
        model.addAttribute("seats", listSeat);
        return "buy-ticket";
    }

    @PostMapping("/bustrip/{bustripId}/buy-ticket")
    public String buyTicket(Model model, @PathVariable(value = "bustripId") int id,
            @RequestParam Map<String, String> params,
            HttpServletRequest request,
            HttpSession session) {

        String[] seats = request.getParameterValues("seatIds");
        int bustripId = Integer.parseInt(params.getOrDefault("bustripId", null));
        String errMsg = "";

        Bustrip bustrip = bustripService.getBustripById(bustripId);
        User user = this.userRepository.getUserByUsername(SecurityContextHolder.getContext().getAuthentication().getName());
        long price = (long) (bustrip.getGiave());

        for (String s : seats) {
            int seatId = Integer.parseInt(s);
            boolean isBooked = this.ticketService.checkBookedSeat(seatId, bustripId);

            if (isBooked == true) {
                errMsg = "Ghế đã có người đặt";
                model.addAttribute("bustrip", this.bustripService.getBustripById(id));
                model.addAttribute("errMsg", errMsg);
                // move to confirm page if error
                return "buy-ticket";
            }

            if (isBooked == false) {
                Seat seat = this.seatService.findById(seatId);

                if (this.ticketService.addTicket(price, bustrip, user, seat) == false) {
                    errMsg = "Đã có lỗi xảy ra";
                    model.addAttribute("bustrip", this.bustripService.getBustripById(id));
                    model.addAttribute("errMsg", errMsg);
                    // move to confirm page if error
                    return "buy-ticket";
                }
            }

        }

        return "redirect:/";
    }
    
    @GetMapping("/bustrip/{bustripId}/ship-goods")
    private String shipGoods(Model model){
        model.addAttribute("good", new Goods());
        return "ship-goods";
    }
    
    @PostMapping("/bustrip/{bustripId}/ship-goods")
    private String addShipGoods (Model model,
            @PathVariable(value = "bustripId") int id,
            @ModelAttribute(value = "good") @Valid Goods g,
            BindingResult r){
        
        model.addAttribute("bustrip", this.bustripService.getBustripById(id));
        
        if (r.hasErrors()) {
            return "ship-goods";
        }
        
        if (this.goodsService.addGoods(g) == true) {
            return "redirect:/";
        }
        
        return "ship-goods";
    }
    
    @GetMapping("/station-stats")
    private String getStationStats(Model model){
        
        User user = this.userRepository.getUserByUsername(SecurityContextHolder.getContext().getAuthentication().getName());
        model.addAttribute("stats", this.stationService.revenueStats(user.getId()));
        
        return "station-stats";
    }
    
    @GetMapping("/list-ticket")
    private String getTicketByUser(Model model){
        
        User user = this.userRepository.getUserByUsername(SecurityContextHolder.getContext().getAuthentication().getName());
        model.addAttribute("ticket", this.ticketService.getTicketsByUser(user.getId()));
        
        return "list-ticket";
    }
}

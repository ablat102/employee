package com.machine.controller;

import com.machine.bean.Admin;
import com.machine.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 处理管理员相关的请求
 */

@Controller(value = "adminController")
@RequestMapping(value = "/admin")
public class AdminController {

    @Autowired
    IAdminService adminService;

    /**
     * 访问admin的时候默认打开main页面
     * @return
     */
    @RequestMapping(value = "")
    public String index() {
        return "main";
    }


    /**
     * GET请求login的时候跳转login.jsp页面
     *
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    /**
     * POST请求
     *
     * @param adminName     管理员名称
     * @param adminPassword 管理员密码
     * @param session       session对象
     * @return 0 表示没有该管理员名称，1，验证成功，可以登录，2不是后台管理员，3密码错误，
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public @ResponseBody
    Object login(@RequestParam(value = "adminValue", required = true) String adminName, @RequestParam(value = "password", required = true) String adminPassword, HttpSession session) {
        //如果管理员名存在，则继续检查密码，否则直接返回管理员不存在
        if (adminService.checkName(adminName)) {
            //如密码正确，则继续检查是否后台管理员，否则返回密码错误
            if (adminService.checkPassword(adminPassword)) {
                //如是后台管理员，可以登录
                if (adminService.checkRole(adminName)) {
                    session.setAttribute("adminName", adminName);
                    return 1;
                } else {
                    return 2;
                }
            } else {
                return 3;
            }
        }
        return 0;
    }

    /**
     * 登出
     * @param session
     * @return
     */
    @RequestMapping(value = "/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("adminName");
        return "forward:/login.jsp";
    }

    /**
     * 查询所有管理员信息
     * @return
     */
    @RequestMapping(value = "/adminList", method = RequestMethod.GET)
    public String adminList(HttpServletRequest request, Model model) {
        if (adminService.allAdmins() != null) {
            List<Admin> admins = adminService.allAdmins();
            model.addAttribute(admins);
            request.setAttribute("admins",admins);
        }
        return "adminList";
    }

    @RequestMapping("/addAdmin")
    public String addAdmin() {
        return "addAdmin";
    }

    @RequestMapping(value = "/delete")
    public String deleteAdmin(@RequestParam("adminId") String adminId){
        if (adminId != null) {

        }
        return "";
    }
}

package com.machine.controller;

import com.machine.bean.Machine;
import com.machine.service.IMachineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

/**
 * 机器控制器类
 */

@Controller
@RequestMapping(value = "/admin")
public class MachineController {

    @Autowired
    private Machine machine;
    @Autowired
    private IMachineService machineService;

    /**
     * 查询所有机器
     * @param request
     * @return
     */
    @RequestMapping("/machineList")
    public String machineList(HttpServletRequest request){

        List<Machine> machines = machineService.machineList();
        if (machines != null) {
            request.setAttribute("machines",machines);
        }
        return "machineList";
    }

    /**
     * 修改机器信息
     * @return
     */
    @RequestMapping(value = "changeMachine",method = RequestMethod.GET)
    public String changeMachineInfo() {
        return "changeMachine";
    }

    @RequestMapping(value = "/addMachine",method = RequestMethod.GET)
    public String addMachine(){
        return "addMachine";
    }

    /**
     * 添加机器
     * @return 添加机器页面
     */
    @RequestMapping(value = "/addMachine",method = RequestMethod.POST)
    public String addMachine(@RequestParam(value = "machineDate",required = true) String machineDate,
                             @RequestParam(value = "machineLocation",required = true) String machineLocation,
                             @RequestParam(value = "status" , required = true) String status,
                             @RequestParam(value = "date",required = true) String date) {
        System.out.println(machineDate);
        return machineDate;
    }
}

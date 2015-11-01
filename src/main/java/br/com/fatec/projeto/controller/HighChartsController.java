package br.com.fatec.projeto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import br.com.fatec.projeto.bean.DataBean;
import br.com.fatec.projeto.service.HighChartService;

@Controller
public class HighChartsController {

    @Autowired
    HighChartService chartService;


    @RequestMapping({"/charts"})
    public String showCharts() {
        return "charts";
    }

    @RequestMapping({"/linechart1"})
    @ResponseBody
    public DataBean showLineChart1() {
        return chartService.getLineChartData1();
    }

    @RequestMapping({"/linechart2"})
    @ResponseBody
    public DataBean showLineChart2() {
        return chartService.getLineChartData2();
    }


    @RequestMapping({"/linechart3"})
    @ResponseBody
    public DataBean showLineChart3() {
        return chartService.getLineChartData3();
    }


}

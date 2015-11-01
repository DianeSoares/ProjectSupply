package br.com.fatec.projeto.service;

import org.springframework.stereotype.Service;

import br.com.fatec.projeto.bean.DataBean;
import br.com.fatec.projeto.bean.SeriesBean;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class HighChartService {

    public DataBean getLineChartData1() {
        List<SeriesBean> list = new ArrayList<SeriesBean>();
        list.add(new SeriesBean("Tokyo", "#3366cc", new double[] {7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2}));
        list.add(new SeriesBean("New York", "#8BBC21", new double[] {0.2, 0.8, 5.7, 11.3, 17.0 }));
        list.add(new SeriesBean("London", "#ff33ff", new double[] {3.9, 4.2, 5.7, 8.5, 12.9}));

        String[] categories = new String[] {" Jan", " Fev "," Mar "," Abr"," Mai "," Jun "," Jul "," Ago "," Set "," Out "," Nov"," Dec "};
        return new DataBean("chart1-container", "LineChart Title", " Valores (%)", "Por data", Arrays.asList(categories), list);
    }

    public DataBean getLineChartData2() {
        List<SeriesBean> list = new ArrayList<SeriesBean>();
        list.add(new SeriesBean("Munich", "#76FF32", new double[] {8.0, 6.9, 9.5, 12.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6}));
        list.add(new SeriesBean("Paris", "#a209f4", new double[] {0.8, 0.8, 6.7, 11.3, 17.0, 22.0, 23.8, 24.1, 20.1, 14.1, 8.6, 2.5}));
        list.add(new SeriesBean("Rome", "#f42109", new double[] {3.8, 8.2, 5.7, 8.5, 11.9, 17.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8}));

        String[] categories = new String[] {" Jan", " Fev "," Mar "," Abr"," Mai "," Jun "," Jul "," Ago "," Set "," Out "," Nov"," Dec "};
        return new DataBean("chart2-container", "LineChart Title", " Valores (%)", "Por data", Arrays.asList(categories), list);
    }



    public DataBean getLineChartData3() {
        List<SeriesBean> list = new ArrayList<SeriesBean>();
        list.add(new SeriesBean("Chicago", "#993333", new double[] {17.0, 16.9, 4.5, 9.5, 15.2, 12.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6}));
        list.add(new SeriesBean("Dublin", "#0033FF", new double[] {9.2, 10.8, 25.7, 18.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 23.5}));
        list.add(new SeriesBean("Madrid", "#ffa632", new double[] {8.8, 8.2, 9.7, 8.5, 10.9, 16.2, 16.0, 16.6, 11.2, 10.3, 6.6, 9.8}));

        String[] categories = new String[] {" Jan", " Fev "," Mar "," Abr"," Mai "," Jun "," Jul "," Ago "," Set "," Out "," Nov"," Dec "};
        return new DataBean("chart3-container", "LineChart Title", "Valores (%)", "Por data", Arrays.asList(categories), list);
    }

}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
package com.mycompany.projetokopp;

import java.util.ArrayList;
import model.ManipulaValores;

/**
 *
 * @author Gustavo
 */
public class ProjetoKopp {

    public static void main(String[] args) {
        ManipulaValores mv = new ManipulaValores();

        ArrayList<Double> lista = new ArrayList();
        lista.add(88.00);
        lista.add(130.00);
        lista.add(54.90);
        lista.add(293.30);
        lista.add(44.80);

        System.out.println(mv.retoraValoresFormatados(lista));
        
        
    }
}

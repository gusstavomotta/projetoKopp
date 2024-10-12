/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author Gustavo
 */
public class ManipulaValores {

    private Double somaTotal = 0.0;
    private final String modelo = "Remessa Gerada: ";

    public ManipulaValores() {
    }

    public Double getSomaTotal() {
        return somaTotal;
    }

    public String retoraValoresFormatados(ArrayList lista) {
        
        StringBuilder sb = new StringBuilder(modelo);
        
        for (int i = 0; i < lista.size(); i++) {
            if (!(lista.get(i) instanceof Double)) {
                sb.append("Tipo de dados inserido é inválido! Todos os valores de entrada precisam ser do tipo Double!");
                return sb.toString();
            }

            Double valor = (Double)lista.get(i);
            this.somaTotal += valor;
            sb.append(i + 1).append(" cujo valor é R$ ").append(valor).append(", ");

        }
        sb.append("Total = R$ ").append(this.somaTotal);
        return sb.toString();
    }
}

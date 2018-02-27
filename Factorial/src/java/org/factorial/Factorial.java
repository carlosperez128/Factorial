/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.factorial;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.ejb.Stateless;

/**
 *
 * @author entrar
 */
@WebService(serviceName = "Factorial")
@Stateless()
public class Factorial {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "Factorial")
    public long factorial(@WebParam(name = "num") int num) {
        long factorial = 1;
        while(num != 0){
            factorial = factorial*num;
            num--;
        }
        return factorial;
    }
}

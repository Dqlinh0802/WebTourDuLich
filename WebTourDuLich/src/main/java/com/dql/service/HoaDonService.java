/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dql.service;

import com.dql.pojos.GioHang;
import java.util.Map;

/**
 *
 * @author Acer
 */

public interface HoaDonService {
    boolean themHoaDon(Map<Integer, GioHang> gioHang, int id); 
}

﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using DTO;
namespace BUS
{
    public class KhachHangBUS
    {
        private static KhachHangBUS instance;

        public KhachHangBUS()
        {
        }

        public static KhachHangBUS Intance
        {
            get { if (instance == null) instance = new KhachHangBUS(); return instance; }
            set => instance = value;
        }

        public DataTable getListKH()
        {
            return KhachHangDAO.Intance.getListKH();
        }

        public bool themKH(string maKH, string tenKH, string DiaChi, string SDT, string email)
        {
            return KhachHangDAO.Intance.themKH(maKH, tenKH, DiaChi, SDT, email);
        }

        public bool suaKH(string maKH, string tenKH, string DiaChi, int SDT, string email)
        {
            return KhachHangDAO.Intance.suaKH(maKH, tenKH, DiaChi, SDT, email);
        }

        public bool xoaKH(string maKH)
        {
            return KhachHangDAO.Intance.xoaKH(maKH);
        }

        public DataTable TimKiemKH(string name)
        {
            return KhachHangDAO.Intance.TimKiemKH(name);
        }

        public string loadMaKH()
        {
            return KhachHangDAO.Intance.loadMaKH();
        }
    }
}
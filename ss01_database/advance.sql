-- SQL NÂNG CAO

-- CAU 21
create view v_nhan_vien as
  select nhan_vien.ma_nhan_vien, ho_ten, ngay_sinh, so_cmnd, dia_chi, email, so_dien_thoai, luong, ten_vi_tri, ten_trinh_do, ten_bo_phan, ma_hop_dong, ngay_lam_hop_dong 
  from nhan_vien, hop_dong, vi_tri, trinh_do, bo_phan
  where nhan_vien.ma_nhan_vien = hop_dong.ma_nhan_vien
	and vi_tri.ma_vi_tri = nhan_vien.ma_vi_tri
    and trinh_do.ma_trinh_do = nhan_vien.ma_trinh_do
    and bo_phan.ma_bo_phan = nhan_vien.ma_bo_phan
	and nhan_vien.dia_chi like "%Đà Nẵng%" 
	and ngay_lam_hop_dong = '2021-04-25';

select * from v_nhan_vien;

-- CAU 22
update v_nhan_vien set v_nhan_vien.dia_chi = "Liên Chiểu";

-- CAU 23
delimiter //
	create procedure sp_xoa_khach_hang (ma_khach int)
	begin
		delete from khach_hang where khach_hang.ma_khach_hang = ma_khach;
	end;
// delimiter ;

call sp_xoa_khach_hang(2);

-- CAU 24
// delimiter ;

delimiter //
	create procedure sp_them_moi_hop_dong(ma_hop_dong int, ngay_lam_hop_dong datetime, ngay_ket_thuc datetime, tien_dat_coc double, ma_nhan_vien int, ma_khach_hang int, ma_dich_vu int)
    begin
		set foreign_key_checks = 1;
		insert into hop_dong values(ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, ma_nhan_vien, ma_khach_hang, ma_dich_vu);
        set foreign_key_checks = 0;
    end;
// delimiter ;

call sp_them_moi_hop_dong(23,"2020-11-24","2020-12-25",0,3,4,6);

-- CAU 25

delimiter //
	create trigger tr_xoa_hop_dong 
	after delete 
	on hop_dong for each row 
	begin 
		declare total int;
        set total = (select count(*) from hop_dong);
		SIGNAL SQLSTATE '27000' SET MESSAGE_TEXT = total;
	end;
// delimiter ;

drop trigger tr_xoa_hop_dong;

delete from hop_dong where hop_dong.ma_hop_dong = 2;

-- cau 27
-- cau a
delimiter // 
	create function func_dem_dich_vu ()
    returns int
    deterministic
		begin
			declare result int;
            set result = (select count(dich_vu.ma_dich_vu) from dich_vu 
            inner join (select hop_dong.ma_dich_vu, sum(chi_phi_thue) as tong_tien
				from hop_dong, dich_vu 
                where hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
                group by ma_dich_vu
                having tong_tien > 2000000) as a on a.ma_dich_vu = dich_vu.ma_dich_vu);
            return result;
        end;
// delimiter ;

select func_dem_dich_vu () as tong_dich_vu_sd_tren_2tr;

-- cau b
delimiter //
create function func_tinh_thoi_gian_hop_dong(ma_kh int)
returns int
deterministic
	begin
		declare result int;
        set result = (select max(datediff(ngay_ket_thuc, ngay_lam_hop_dong)) from hop_dong where ma_khach_hang = ma_kh);
        return result;
    end;
// delimiter ;

select func_tinh_thoi_gian_hop_dong(5) as thoi_gian_hop_dong_dai_nhat

using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace QLNS.Models
{
    public class ChamCong
    {
        [Key]
        public int MaChamCong { get; set; }

        [ForeignKey("NhanVien")]
        public int MaNhanVien { get; set; }
        public NhanVien NhanVien { get; set; }

        public DateTime NgayLam { get; set; }
        public TimeSpan GioVaoLam { get; set; }
        public TimeSpan GioKetThuc { get; set; }
    }
}

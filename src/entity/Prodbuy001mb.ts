import { ProdbuyDTO } from "src/dto/Prodbuy.dto";
import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity("prodbuy001mb", { schema: "medical" })
export class Prodbuy001mb {
  @PrimaryGeneratedColumn({ type: "int", name: "sl_no" })
  slNo: number;

  @Column("int", { name: "unitslno" })
  unitslno: number;

  @Column("datetime", { name: "date" })
  date: Date;

  @Column("varchar", { name: "prod_name", length: 40 })
  prodName: string;

  @Column("varchar", { name: "prod_price", length: 40 })
  prodPrice: string;

  @Column("varchar", { name: "qty", length: 40 })
  qty: string;

  @Column("varchar", { name: "total", length: 40 })
  total: string;

  @Column("varchar", { name: "insert_user", length: 40 })
  insertUser: string;

  @Column("datetime", { name: "insert_datetime" })
  insertDatetime: Date;

  @Column("varchar", { name: "updated_user", nullable: true, length: 40 })
  updatedUser: string | null;

  @Column("datetime", { name: "updated_datetime", nullable: true })
  updatedDatetime: Date | null;

  setProperties(prodbuyDTO: ProdbuyDTO) {
    this.slNo = prodbuyDTO.slNo;
    this.unitslno = prodbuyDTO.unitslno;
    this.date =prodbuyDTO.date;
    this.total = prodbuyDTO.total;
    this.prodName = prodbuyDTO.prodName;
    this.prodPrice = prodbuyDTO.prodPrice;
    this.qty = prodbuyDTO.qty;
    this.insertUser = prodbuyDTO.insertUser;
    this.insertDatetime = prodbuyDTO.insertDatetime;
    this.updatedUser = prodbuyDTO.updatedUser;
    this.updatedDatetime = prodbuyDTO.updatedDatetime;
  }
}

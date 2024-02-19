import {
  Column,
  Entity,
  Index,
  JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
} from "typeorm";
import { Prodmaster001mb } from "./Prodmaster001mb";
import { ProdbuyDTO } from "src/dto/Prodbuy.dto";

@Index("pro_slno", ["proSlno"], {})
@Entity("prodbuy001mb", { schema: "medical" })
export class Prodbuy001mb {
  @PrimaryGeneratedColumn({ type: "int", name: "sl_no" })
  slNo: number;

  @Column("int", { name: "unitslno" })
  unitslno: number;

  @Column("datetime", { name: "date" })
  date: Date;

  @Column("int", { name: "pro_slno" })
  proSlno: number;

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

  @ManyToOne(
    () => Prodmaster001mb,
    (prodmaster001mb) => prodmaster001mb.prodbuy001mbs,
    { onDelete: "CASCADE", onUpdate: "CASCADE" }
  )
  @JoinColumn([{ name: "pro_slno", referencedColumnName: "slNo" }])
  proSlno2: Prodmaster001mb;

  setProperties(prodbuyDTO: ProdbuyDTO) {
    this.slNo = prodbuyDTO.slNo;
    this.unitslno = prodbuyDTO.unitslno;
    this.date =prodbuyDTO.date;
    this.total = prodbuyDTO.total;
    this.proSlno = prodbuyDTO.proSlno;
    this.prodPrice = prodbuyDTO.prodPrice;
    this.qty = prodbuyDTO.qty;
    this.insertUser = prodbuyDTO.insertUser;
    this.insertDatetime = prodbuyDTO.insertDatetime;
    this.updatedUser = prodbuyDTO.updatedUser;
    this.updatedDatetime = prodbuyDTO.updatedDatetime;
  }
}

import {
  Column,
  Entity,
  Index,
  JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
} from "typeorm";
import { Prodmaster001mb } from "./Prodmaster001mb";
import { CustomerDTO } from "src/dto/Customer.dto";

@Index("prodslno", ["prodslno"], {})
@Entity("customer001mb", { schema: "medical" })
export class Customer001mb {
  @PrimaryGeneratedColumn({ type: "int", name: "sl_no" })
  slNo: number;

  @Column("int", { name: "unitslno" })
  unitslno: number;

  @Column("datetime", { name: "date" })
  date: Date;

  @Column("int", { name: "prodslno" })
  prodslno: number;

  @Column("varchar", { name: "customer_name", length: 40 })
  customerName: string;

  @Column("varchar", { name: "customer_mobile", length: 40 })
  customerMobile: string;

  @Column("varchar", { name: "qty", length: 40 })
  qty: string;

  @Column("varchar", { name: "retail_cost", length: 40 })
  retailCost: string;

  @Column("varchar", { name: "customer_price", length: 40 })
  customerPrice: string;

  @Column("varchar", { name: "profit", length: 40 })
  profit: string;

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
    (prodmaster001mb) => prodmaster001mb.customer001mbs,
    { onDelete: "CASCADE", onUpdate: "CASCADE" }
  )
  @JoinColumn([{ name: "prodslno", referencedColumnName: "slNo" }])
  prodslno2: Prodmaster001mb;


  
  setProperties(customerDTO: CustomerDTO) {
    this.slNo = customerDTO.slNo;
    this.unitslno = customerDTO.unitslno;
    this.date =customerDTO.date;
    this.prodslno = customerDTO.prodslno;
    this.customerName = customerDTO.customerName;
    this.customerMobile = customerDTO.customerMobile;
    this.qty = customerDTO.qty;
    this.retailCost = customerDTO.retailCost;
    this.customerPrice = customerDTO.customerPrice;
    this.profit = customerDTO.profit;
    this.insertUser = customerDTO.insertUser;
    this.insertDatetime = customerDTO.insertDatetime;
    this.updatedUser = customerDTO.updatedUser;
    this.updatedDatetime = customerDTO.updatedDatetime;
}
}

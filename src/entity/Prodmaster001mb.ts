import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from "typeorm";
import { Customer001mb } from "./Customer001mb";
import { Distribution001mb } from "./Distribution001mb";
import { Prodbuy001mb } from "./Prodbuy001mb";
import { ProdmasterDTO } from "src/dto/Prodmaster.dto";

@Entity("prodmaster001mb", { schema: "medical" })
export class Prodmaster001mb {
  @PrimaryGeneratedColumn({ type: "int", name: "sl_no" })
  slNo: number;

  @Column("int", { name: "unitslno" })
  unitslno: number;

  @Column("varchar", { name: "prod_id", length: 40 })
  prodId: string;

  @Column("varchar", { name: "prod_name", length: 40 })
  prodName: string;

  @Column("varchar", { name: "prod_price", length: 40 }) 
  prodPrice: string;

  @Column("varchar", { name: "qty", length: 40 })
  qty: string;

  @Column("varchar", { name: "insert_user", length: 40 })
  insertUser: string;

  @Column("datetime", { name: "insert_datetime" })
  insertDatetime: Date;

  @Column("varchar", { name: "updated_user", nullable: true, length: 40 })
  updatedUser: string | null;

  @Column("datetime", { name: "updated_datetime", nullable: true })
  updatedDatetime: Date | null;

  @OneToMany(() => Customer001mb, (customer001mb) => customer001mb.prodslno2)
  customer001mbs: Customer001mb[];

  @OneToMany(
    () => Distribution001mb,
    (distribution001mb) => distribution001mb.prodslno2
  )
  distribution001mbs: Distribution001mb[];

  @OneToMany(() => Prodbuy001mb, (prodbuy001mb) => prodbuy001mb.proSlno2)
  prodbuy001mbs: Prodbuy001mb[];


  setProperties(prodmasterDTO: ProdmasterDTO) {
    this.slNo = prodmasterDTO.slNo;
    this.unitslno = prodmasterDTO.unitslno;
    this.prodId = prodmasterDTO.prodId;
    this.prodName = prodmasterDTO.prodName;
    this.prodPrice = prodmasterDTO.prodPrice;
    this.qty = prodmasterDTO.qty;
    this.insertUser = prodmasterDTO.insertUser;
    this.insertDatetime = prodmasterDTO.insertDatetime;
    this.updatedUser = prodmasterDTO.updatedUser;
    this.updatedDatetime = prodmasterDTO.updatedDatetime;
  }
}

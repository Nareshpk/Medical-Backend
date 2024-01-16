import {
  Column,
  Entity,
  Index,
  JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
} from "typeorm";
import { Prodmaster001mb } from "./Prodmaster001mb";
import { Unitmaster001mb } from "./Unitmaster001mb";
import { DistributionDTO } from "src/dto/Distribution.dto";

@Index("prodslno", ["prodslno"], {})
@Index("clinicslno", ["clinicslno"], {})
@Entity("distribution001mb", { schema: "medical" })
export class Distribution001mb {
  @PrimaryGeneratedColumn({ type: "int", name: "sl_no" })
  slNo: number;

  @Column("int", { name: "unitslno" })
  unitslno: number;

  @Column("datetime", { name: "date" })
  date: Date;

  @Column("int", { name: "prodslno" })
  prodslno: number;

  @Column("int", { name: "clinicslno" })
  clinicslno: number;

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

  @ManyToOne(
    () => Prodmaster001mb,
    (prodmaster001mb) => prodmaster001mb.distribution001mbs,
    { onDelete: "CASCADE", onUpdate: "CASCADE" }
  )
  @JoinColumn([{ name: "prodslno", referencedColumnName: "slNo" }])
  prodslno2: Prodmaster001mb;

  @ManyToOne(
    () => Unitmaster001mb,
    (unitmaster001mb) => unitmaster001mb.distribution001mbs,
    { onDelete: "CASCADE", onUpdate: "CASCADE" }
  )
  @JoinColumn([{ name: "clinicslno", referencedColumnName: "slNo" }])
  clinicslno2: Unitmaster001mb;

  setProperties(distributionDTO: DistributionDTO) {
    this.slNo = distributionDTO.slNo;
    this.unitslno = distributionDTO.unitslno;
    this.date =distributionDTO.date;
    this.prodslno = distributionDTO.prodslno;
    this.clinicslno = distributionDTO.clinicslno;
    this.qty = distributionDTO.qty;
    this.insertUser = distributionDTO.insertUser;
    this.insertDatetime = distributionDTO.insertDatetime;
    this.updatedUser = distributionDTO.updatedUser;
    this.updatedDatetime = distributionDTO.updatedDatetime;
}
}

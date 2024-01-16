import {
  Column,
  Entity,
  Index,
  JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
} from "typeorm";
import { Doctor001mb } from "./Doctor001mb";
import { AllowanceDTO } from "src/dto/Allowance.dto";

@Index("sslno", ["sslno"], {})
@Entity("allowance001mb", { schema: "medical" })
export class Allowance001mb {
  @PrimaryGeneratedColumn({ type: "int", name: "sl_no" })
  slNo: number;

  @Column("int", { name: "unitslno" })
  unitslno: number;

  @Column("int", { name: "sslno" })
  sslno: number;

  @Column("varchar", { name: "staff_Name", length: 40 })
  staffName: string;

  @Column("varchar", { name: "bike_No", length: 40 })
  bikeNo: string;

  @Column("varchar", { name: "travel_durection", length: 40 })
  travelDurection: string;

  @Column("varchar", { name: "km", length: 40 })
  km: string;

  @Column("varchar", { name: "petrole_paid_amount", length: 40 })
  petrolePaidAmount: string;

  @Column("varchar", { name: "bying_petrole_amount", length: 40 })
  byingPetroleAmount: string;

  @Column("varchar", { name: "balance", length: 40 })
  balance: string;

  @Column("varchar", { name: "Re_Balance_amount", length: 40 })
  reBalanceAmount: string;

  @Column("datetime", { name: "date" })
  date: Date;

  @Column("varchar", { name: "insert_user", length: 40 })
  insertUser: string;

  @Column("datetime", { name: "insert_datetime" })
  insertDatetime: Date;

  @Column("varchar", { name: "updated_user", nullable: true, length: 40 })
  updatedUser: string | null;

  @Column("datetime", { name: "updated_datetime", nullable: true })
  updatedDatetime: Date | null;

  @ManyToOne(() => Doctor001mb, (doctor001mb) => doctor001mb.allowance001mbs, {
    onDelete: "CASCADE",
    onUpdate: "CASCADE",
  })
  @JoinColumn([{ name: "sslno", referencedColumnName: "slNo" }])
  sslno2: Doctor001mb;

  setProperties(allowanceDTO: AllowanceDTO) {
    this.slNo = allowanceDTO.slNo;
    this.unitslno = allowanceDTO.unitslno;
    this.sslno = allowanceDTO.sslno;
    this.staffName = allowanceDTO.staffName;
    this.bikeNo = allowanceDTO.bikeNo;
    this.travelDurection = allowanceDTO.travelDurection;
    this.km = allowanceDTO.km;
    this.petrolePaidAmount = allowanceDTO.petrolePaidAmount;
    this.byingPetroleAmount = allowanceDTO.byingPetroleAmount;
    this.balance = allowanceDTO.balance;
    this.reBalanceAmount = allowanceDTO.reBalanceAmount;
    this.date = allowanceDTO.date;
    this.insertUser = allowanceDTO.insertUser;
    this.insertDatetime = allowanceDTO.insertDatetime;
    this.updatedUser = allowanceDTO.updatedUser;
    this.updatedDatetime = allowanceDTO.updatedDatetime;
  }
}

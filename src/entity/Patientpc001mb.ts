import {
  Column,
  Entity,
  Index,
  JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
} from "typeorm";
import { Patientmaster001mb } from "./Patientmaster001mb";
import { Doctor001mb } from "./Doctor001mb";
import { PatientPcDTO } from "src/dto/PatientPc.dto";

@Index("pcslno", ["pcslno"], {})
@Index("dcslno", ["dcslno"], {})
@Entity("patientpc001mb", { schema: "medical" })
export class Patientpc001mb {
  @PrimaryGeneratedColumn({ type: "int", name: "sl_no" })
  slNo: number;

  @Column("int", { name: "unitslno" })
  unitslno: number;

  @Column("int", { name: "pcslno" })
  pcslno: number;

  @Column("int", { name: "dcslno" })
  dcslno: number;

  @Column("varchar", { name: "pname", length: 40 })
  pname: string;

  @Column("int", { name: "age" })
  age: number;

  @Column("varchar", { name: "sex", length: 40 })
  sex: string;

  @Column("varchar", { name: "address", length: 40 })
  address: string;

  @Column("varchar", { name: "phone", length: 40 })
  phone: string;

  @Column("varchar", { name: "diagnosis", length: 40 })
  diagnosis: string;

  @Column("varchar", { name: "treatment", length: 40 })
  treatment: string;

  @Column("int", { name: "fees", nullable: true })
  fees: number | null;

  @Column("int", { name: "balance", nullable: true })
  balance: number | null;

  @Column("varchar", { name: "visit", nullable: true, length: 40 })
  visit: string | null;

  @Column("varchar", { name: "fstatus", length: 40 })
  fstatus: string;

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

  @ManyToOne(
    () => Patientmaster001mb,
    (patientmaster001mb) => patientmaster001mb.patientpc001mbs,
    { onDelete: "CASCADE", onUpdate: "CASCADE" }
  )
  @JoinColumn([{ name: "pcslno", referencedColumnName: "slNo" }])
  pcslno2: Patientmaster001mb;

  @ManyToOne(() => Doctor001mb, (doctor001mb) => doctor001mb.patientpc001mbs, {
    onDelete: "CASCADE",
    onUpdate: "CASCADE",
  })
  @JoinColumn([{ name: "dcslno", referencedColumnName: "slNo" }])
  dcslno2: Doctor001mb;


  setProperties(patientpcDTO: PatientPcDTO) {
    this.slNo = patientpcDTO.slNo;
    this.unitslno = patientpcDTO.unitslno;
    this.pcslno = patientpcDTO.pcslno;
    this.dcslno = patientpcDTO.dcslno;
    this.pname = patientpcDTO.pname;
    this.age = patientpcDTO.age;
    this.sex = patientpcDTO.sex;
    this.address = patientpcDTO.address;
    this.treatment = patientpcDTO.treatment;
    this.phone = patientpcDTO.phone;
    this.diagnosis = patientpcDTO.diagnosis;
    this.fees = patientpcDTO.fees;
    this.balance = patientpcDTO.balance;
    this.fstatus = patientpcDTO.fstatus;
    this.date = patientpcDTO.date;
    this.insertUser = patientpcDTO.insertUser;
    this.insertDatetime = patientpcDTO.insertDatetime;
    this.updatedUser = patientpcDTO.updatedUser;
    this.updatedDatetime = patientpcDTO.updatedDatetime;
  }
}

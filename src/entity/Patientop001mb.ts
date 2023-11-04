import {
  Column,
  Entity,
  Index,
  JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
} from "typeorm";
import { Patient001mb } from "./Patient001mb";
import { Doctor001mb } from "./Doctor001mb";
import { PatientOpDTO } from "src/dto/PatientOp.dto";

@Index("pslno", ["pslno"], {})
@Index("dslno", ["dslno"], {})
@Entity("patientop001mb", { schema: "medical" })
export class Patientop001mb {
  @PrimaryGeneratedColumn({ type: "int", name: "sl_no" })
  slNo: number;

  @Column("int", { name: "unitslno" })
  unitslno: number;

  @Column("int", { name: "pslno" })
  pslno: number;

  @Column("int", { name: "dslno" })
  dslno: number;

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

  @Column("int", { name: "fees", nullable: true })
  fees: number | null;

  @Column("int", { name: "balance", nullable: true })
  balance: number | null;

  @Column("varchar", { name: "fstatus", length: 40 })
  fstatus: string;

  @Column("datetime", { name: "cdate" })
  cdate: Date;

  @Column("datetime", { name: "rdate" })
  rdate: Date;

  @Column("varchar", { name: "insert_user", length: 40 })
  insertUser: string;

  @Column("datetime", { name: "insert_datetime" })
  insertDatetime: Date;

  @Column("varchar", { name: "updated_user", nullable: true, length: 40 })
  updatedUser: string | null;

  @Column("datetime", { name: "updated_datetime", nullable: true })
  updatedDatetime: Date | null;

  @ManyToOne(
    () => Patient001mb,
    (patient001mb) => patient001mb.patientop001mbs,
    { onDelete: "CASCADE", onUpdate: "CASCADE" }
  )
  @JoinColumn([{ name: "pslno", referencedColumnName: "slNo" }])
  pslno2: Patient001mb;

  @ManyToOne(() => Doctor001mb, (doctor001mb) => doctor001mb.patientop001mbs, {
    onDelete: "CASCADE",
    onUpdate: "CASCADE",
  })
  @JoinColumn([{ name: "dslno", referencedColumnName: "slNo" }])
  dslno2: Doctor001mb;


  setProperties(patientOpDTO: PatientOpDTO) {
    this.slNo = patientOpDTO.slNo;
    this.unitslno = patientOpDTO.unitslno;
    this.pslno = patientOpDTO.pslno;
    this.dslno = patientOpDTO.dslno;
    this.pname = patientOpDTO.pname;
    this.age = patientOpDTO.age;
    this.sex = patientOpDTO.sex;
    this.address = patientOpDTO.address;
    this.phone = patientOpDTO.phone;
    this.diagnosis = patientOpDTO.diagnosis;
    this.fees = patientOpDTO.fees;
    this.balance = patientOpDTO.balance;
    this.fstatus = patientOpDTO.fstatus;
    this.cdate = patientOpDTO.cdate;
    this.rdate = patientOpDTO.rdate;
    this.insertUser = patientOpDTO.insertUser;
    this.insertDatetime = patientOpDTO.insertDatetime;
    this.updatedUser = patientOpDTO.updatedUser;
    this.updatedDatetime = patientOpDTO.updatedDatetime;
  }
}

import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from "typeorm";
import { Patientop001mb } from "./Patientop001mb";
import { Patientpc001mb } from "./Patientpc001mb";
import { DoctorDTO } from "src/dto/doctor.dto";
import { Allowance001mb } from "./Allowance001mb";

@Entity("doctor001mb", { schema: "medical" })
export class Doctor001mb {
  @PrimaryGeneratedColumn({ type: "int", name: "sl_no" })
  slNo: number;

  @Column("int", { name: "unitslno" })
  unitslno: number;

  @Column("varchar", { name: "d_first_name", length: 40 })
  dFirstName: string;

  @Column("varchar", { name: "d_last_name", length: 40 })
  dLastName: string;

  @Column("varchar", { name: "specialist", length: 40 })
  specialist: string;

  @Column("datetime", { name: "date_of_birth" })
  dateOfBirth: Date;

  @Column("varchar", { name: "email", length: 40 })
  email: string;

  @Column("varchar", { name: "contact", length: 40 })
  contact: string;

  @Column("varchar", { name: "insert_user", length: 40 })
  insertUser: string;

  @Column("datetime", { name: "insert_datetime" })
  insertDatetime: Date;

  @Column("varchar", { name: "updated_user", nullable: true, length: 40 })
  updatedUser: string | null;

  @Column("datetime", { name: "updated_datetime", nullable: true })
  updatedDatetime: Date | null;

  @OneToMany(() => Patientop001mb, (patientop001mb) => patientop001mb.dslno2)
  patientop001mbs: Patientop001mb[];

  @OneToMany(() => Patientpc001mb, (patientpc001mb) => patientpc001mb.dcslno2)
  patientpc001mbs: Patientpc001mb[];

  @OneToMany(() => Allowance001mb, (allowance001mb) => allowance001mb.sslno2)
  allowance001mbs: Allowance001mb[];


  setProperties(doctorDTO: DoctorDTO) {
    this.slNo = doctorDTO.slNo;
    this.unitslno = doctorDTO.unitslno;
    this.dFirstName = doctorDTO.dFirstName;
    this.dLastName = doctorDTO.dLastName;
    this.specialist = doctorDTO.specialist;
    this.dateOfBirth = doctorDTO.dateOfBirth;
    this.email = doctorDTO.email;
    this.contact = doctorDTO.contact;
    this.insertUser = doctorDTO.insertUser;
    this.insertDatetime = doctorDTO.insertDatetime;
    this.updatedUser = doctorDTO.updatedUser;
    this.updatedDatetime = doctorDTO.updatedDatetime;
  }
}

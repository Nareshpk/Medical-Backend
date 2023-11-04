import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from "typeorm";
import { Patientpc001mb } from "./Patientpc001mb";
import { PatientMasterDTO } from "src/dto/patientmaster.dto";

@Entity("patientmaster001mb", { schema: "medical" })
export class Patientmaster001mb {
  @PrimaryGeneratedColumn({ type: "int", name: "sl_no" })
  slNo: number;

  @Column("int", { name: "unitslno" })
  unitslno: number;

  @Column("varchar", { name: "pc_patient_id", length: 40 })
  pcPatientId: string;

  @Column("varchar", { name: "pc_patient_fname", length: 40 })
  pcPatientFname: string;

  @Column("varchar", { name: "pc_patient_lname", length: 40 })
  pcPatientLname: string;

  @Column("varchar", { name: "display_lname", length: 40 })
  displayLname: string;

  @Column("varchar", { name: "treatment", length: 40 })
  treatment: string;

  @Column("varchar", { name: "diagnosis", length: 40 })
  diagnosis: string;

  @Column("int", { name: "age" })
  age: number;

  @Column("varchar", { name: "sex", length: 40 })
  sex: string;

  @Column("varchar", { name: "address", length: 40 })
  address: string;

  @Column("varchar", { name: "phone", length: 40 })
  phone: string;

  @Column("varchar", { name: "insert_user", length: 40 })
  insertUser: string;

  @Column("datetime", { name: "insert_datetime" })
  insertDatetime: Date;

  @Column("varchar", { name: "updated_user", nullable: true, length: 40 })
  updatedUser: string | null;

  @Column("datetime", { name: "updated_datetime", nullable: true })
  updatedDatetime: Date | null;

  @OneToMany(() => Patientpc001mb, (patientpc001mb) => patientpc001mb.pcslno2)
  patientpc001mbs: Patientpc001mb[];


  setProperties(patientMasterDTO: PatientMasterDTO) {
    this.slNo = patientMasterDTO.slNo;
    this.unitslno = patientMasterDTO.unitslno;
    this.pcPatientId = patientMasterDTO.pcPatientId;
    this.pcPatientFname = patientMasterDTO.pcPatientFname;
    this.pcPatientLname = patientMasterDTO.pcPatientLname;
    this.displayLname = patientMasterDTO.displayLname;
    this.treatment = patientMasterDTO.treatment;
    this.diagnosis = patientMasterDTO.diagnosis;
    this.age = patientMasterDTO.age;
    this.sex = patientMasterDTO.sex;
    this.address = patientMasterDTO.address;
    this.phone = patientMasterDTO.phone;
    this.insertUser = patientMasterDTO.insertUser;
    this.insertDatetime = patientMasterDTO.insertDatetime;
    this.updatedUser = patientMasterDTO.updatedUser;
    this.updatedDatetime = patientMasterDTO.updatedDatetime;
  }
}

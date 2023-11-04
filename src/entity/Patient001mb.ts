import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from "typeorm";
import { Patientop001mb } from "./Patientop001mb";
import { PatientDTO } from "src/dto/patient.dto";

@Entity("patient001mb", { schema: "medical" })
export class Patient001mb {
  @PrimaryGeneratedColumn({ type: "int", name: "sl_no" })
  slNo: number;

  @Column("int", { name: "unitslno" })
  unitslno: number;

  @Column("varchar", { name: "patient_id", length: 40 })
  patientId: string;

  @Column("varchar", { name: "patient_fname", length: 40 })
  patientFname: string;

  @Column("varchar", { name: "patient_lname", length: 40 })
  patientLname: string;

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

  @OneToMany(() => Patientop001mb, (patientop001mb) => patientop001mb.pslno2)
  patientop001mbs: Patientop001mb[];



  
  setProperties(patientDTO: PatientDTO) {
    this.slNo = patientDTO.slNo;
    this.unitslno = patientDTO.unitslno;
    this.patientId = patientDTO.patientId;
    this.patientFname = patientDTO.patientFname;
    this.patientLname = patientDTO.patientLname;
    this.age = patientDTO.age;
    this.sex = patientDTO.sex;
    this.address = patientDTO.address;
    this.phone = patientDTO.phone;
    this.insertUser = patientDTO.insertUser;
    this.insertDatetime = patientDTO.insertDatetime;
    this.updatedUser = patientDTO.updatedUser;
    this.updatedDatetime = patientDTO.updatedDatetime;
  }
}

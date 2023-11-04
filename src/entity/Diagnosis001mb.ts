import { DiagnosisDTO } from "src/dto/diagnosis.dto";
import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity("diagnosis001mb", { schema: "medical" })
export class Diagnosis001mb {
  @PrimaryGeneratedColumn({ type: "int", name: "sl_no" })
  slNo: number;

  @Column("int", { name: "unitslno" })
  unitslno: number;

  @Column("varchar", { name: "diagnosis", length: 40 })
  diagnosis: string;

  @Column("varchar", { name: "insert_user", length: 40 })
  insertUser: string;

  @Column("datetime", { name: "insert_datetime" })
  insertDatetime: Date;

  @Column("varchar", { name: "updated_user", nullable: true, length: 40 })
  updatedUser: string | null;

  @Column("datetime", { name: "updated_datetime", nullable: true })
  updatedDatetime: Date | null;

  setProperties(DiagnosisDTO:  DiagnosisDTO) {
    this.slNo = DiagnosisDTO.slNo;
    this.unitslno = DiagnosisDTO.unitslno;
    this.diagnosis = DiagnosisDTO.diagnosis;
    this.insertUser = DiagnosisDTO.insertUser;
    this.insertDatetime = DiagnosisDTO.insertDatetime;
    this.updatedUser = DiagnosisDTO.updatedUser;
    this.updatedDatetime = DiagnosisDTO.updatedDatetime;
  }
}

import { TreatmenttDTO } from "src/dto/treatment.dto";
import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity("treatment001mb", { schema: "medical" })
export class Treatment001mb {
  @PrimaryGeneratedColumn({ type: "int", name: "sl_no" })
  slNo: number;

  @Column("int", { name: "unitslno" })
  unitslno: number;

  @Column("varchar", { name: "treatment", length: 40 })
  treatment: string;

  @Column("varchar", { name: "insert_user", length: 40 })
  insertUser: string;

  @Column("datetime", { name: "insert_datetime" })
  insertDatetime: Date;

  @Column("varchar", { name: "updated_user", nullable: true, length: 40 })
  updatedUser: string | null;

  @Column("datetime", { name: "updated_datetime", nullable: true })
  updatedDatetime: Date | null;

  setProperties(treatmenttDTO: TreatmenttDTO) {
    this.slNo = treatmenttDTO.slNo;
    this.unitslno = treatmenttDTO.unitslno;
    this.treatment = treatmenttDTO.treatment;
    this.insertUser = treatmenttDTO.insertUser;
    this.insertDatetime = treatmenttDTO.insertDatetime;
    this.updatedUser = treatmenttDTO.updatedUser;
    this.updatedDatetime = treatmenttDTO.updatedDatetime;
  }
}

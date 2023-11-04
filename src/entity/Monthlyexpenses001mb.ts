import { MonthlyexpensesDTO } from "src/dto/monthlyexpenses.dto";
import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity("monthlyexpenses001mb", { schema: "medical" })
export class Monthlyexpenses001mb {
  @PrimaryGeneratedColumn({ type: "int", name: "sl_no" })
  slNo: number;

  @Column("int", { name: "unitslno" })
  unitslno: number;

  @Column("varchar", { name: "mname", length: 40 })
  mname: string;

  @Column("varchar", { name: "notes",  length: 40 })
  mnotes: string;

  @Column("int", { name: "mamount" })
  mamount: number;

  @Column("datetime", { name: "mdate" })
  mdate: Date;

  @Column("varchar", { name: "insert_user", length: 40 })
  insertUser: string;

  @Column("datetime", { name: "insert_datetime" })
  insertDatetime: Date;

  @Column("varchar", { name: "updated_user", nullable: true, length: 40 })
  updatedUser: string | null;

  @Column("datetime", { name: "updated_datetime", nullable: true })
  updatedDatetime: Date | null;

  setProperties(monthlyexpensesDTO: MonthlyexpensesDTO) {
    this.slNo = monthlyexpensesDTO.slNo;
    this.unitslno = monthlyexpensesDTO.unitslno;
    this.mname = monthlyexpensesDTO.mname;
    this.mnotes = monthlyexpensesDTO.mnotes;
    this.mamount = monthlyexpensesDTO.mamount;
    this.mdate = monthlyexpensesDTO.mdate;
    this.insertUser = monthlyexpensesDTO.insertUser;
    this.insertDatetime = monthlyexpensesDTO.insertDatetime;
    this.updatedUser = monthlyexpensesDTO.updatedUser;
    this.updatedDatetime = monthlyexpensesDTO.updatedDatetime;
  }
}

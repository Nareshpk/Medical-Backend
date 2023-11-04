import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from "typeorm";
import { Department001mb } from "./Department001mb";
import { StatusDTO } from "src/dto/Status.dto";

@Entity("status001mb", { schema: "medical" })
export class Status001mb {
  @PrimaryGeneratedColumn({ type: "int", name: "sl_no" })
  slNo: number;

  @Column("int", { name: "unitslno" })
  unitslno: number;

  @Column("int", { name: "code_group" })
  codeGroup: number;

  @Column("varchar", { name: "insert_user", length: 40 })
  insertUser: string;

  @Column("datetime", { name: "insert_datetime" })
  insertDatetime: Date;

  @Column("varchar", { name: "updated_user", nullable: true, length: 40 })
  updatedUser: string | null;

  @Column("datetime", { name: "updated_datetime", nullable: true })
  updatedDatetime: Date | null;

  @Column("char", { name: "status", nullable: true, length: 5 })
  status: string | null;

  @Column("varchar", { name: "name", nullable: true, length: 200 })
  name: string | null;

  @OneToMany(() => Department001mb, (department001mb) => department001mb.sslno2)
  department001mbs: Department001mb[];


  setProperties(statusDTO: StatusDTO) {
    this.slNo = statusDTO.slNo;
    this.unitslno = statusDTO.unitslno;
    this.codeGroup = statusDTO.codeGroup;
    this.name = statusDTO.name;
    this.status = statusDTO.status;
    this.insertUser = statusDTO.insertUser;
    this.insertDatetime = statusDTO.insertDatetime;
    this.updatedUser = statusDTO.updatedUser;
    this.updatedDatetime = statusDTO.updatedDatetime;
  }
}

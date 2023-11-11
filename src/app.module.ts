import { Module } from '@nestjs/common';
import { ConfigModule, ConfigService } from '@nestjs/config';
import { TypeOrmModule, TypeOrmModuleOptions } from '@nestjs/typeorm';
import { SnakeNamingStrategy } from 'typeorm-naming-strategies';
import { AuthModule } from './auth/auth.module';
import { DepartmentModule } from './module/Department.module';
import { PersonModule } from './module/person.module';
import { RoleModule } from './module/role.module';
import { UnitDepartMasterModule } from './module/unitdepartmaster.module';
import { UnitMasterModule } from './module/unitmaster.module';
import { UserModule } from './module/user.module';
import { StatusModule } from './module/status.module';
import { DoctorModule } from './module/doctor.module';
import { PatientModule } from './module/patient.module';
import { TreatmentModule } from './module/Treatment.module';
import { DiagnosisModule } from './module/Diagnosis.module';
import { PatientOpModule } from './module/PatientOp.module';
import { PatientPcModule } from './module/PatientPc.module';
import { PatientMasterModule } from './module/patientmaster.module';
import { MonthlyexpensesModule } from './module/Monthlyexpenses.module';
import { DayilyexpensesModule } from './module/Dayilyexpenses.module';
import { ExceldownloadModule } from './module/Exceldownload.module';


@Module({
    imports: [
        ConfigModule.forRoot({
            isGlobal: true,
            expandVariables: true,
            envFilePath: ['.env.configuration.dev'],
        }),
        TypeOrmModule.forRootAsync({
            imports: [ConfigModule],
            inject: [ConfigService],
            useFactory: async (configService: ConfigService) =>
            ({
                type: 'mysql',
                synchronize: false,
                host: configService.get<string>('DATABASE_HOST'),
                port: Number(configService.get<string>('DATABASE_PORT')),
                username: configService.get<string>('DATABASE_USER_NAME'),
                password: configService.get<string>('DATABASE_PASSWORD'),
                database: configService.get<string>('DATABASE_NAME'),
                autoLoadEntities: true,
                entities: ['../dist/entity/*.entity.{ts,js}'],
                subscribers: ['../dist/entity/*.entity.{ts,js}'],
                migrations: ['../dist/entity/*.entity.{ts,js}'],
                namingStrategy: new SnakeNamingStrategy(),
            } as TypeOrmModuleOptions),
        }),
        AuthModule,
        RoleModule,
        UserModule,
        DepartmentModule,
        PersonModule,
        UnitMasterModule,
        UnitMasterModule,
        UnitDepartMasterModule,
        StatusModule,
        DoctorModule,
        PatientModule,
        TreatmentModule,
        DiagnosisModule,
        PatientOpModule,
        PatientPcModule,
        PatientMasterModule,
        MonthlyexpensesModule,
        DayilyexpensesModule,
        ExceldownloadModule
    ]
})

export class AppModule { }
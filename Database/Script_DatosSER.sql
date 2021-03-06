SET IDENTITY_INSERT [dbo].[Academia] ON 
INSERT [dbo].[Academia] ([AcademiaID], [Descripcion], [Nombre]) VALUES (1, 'Descripcion', 'Academia general ISOF')
SET IDENTITY_INSERT [dbo].[Academia] OFF
GO

INSERT [dbo].[Alumno] ([CorreoElectronico], [Matricula], [Nombre]) VALUES ('ohdz@gmail.com', 'S01010101', 'Omar Hernandez Cervantes')
INSERT [dbo].[Alumno] ([CorreoElectronico], [Matricula], [Nombre]) VALUES ('ana@correo.com', 'S01010102', 'Ana Belen Valle Palomino')
INSERT [dbo].[Alumno] ([CorreoElectronico], [Matricula], [Nombre]) VALUES ('emilio@correo.com', 'S01010103', 'Galdon Borja Emilio')
GO

SET IDENTITY_INSERT [dbo].[Profesor] ON 
INSERT [dbo].[Profesor] ([Nombre], [NombreUsuario], [NumeroDePersonal], [ProfesorID]) VALUES ('Oscar Montiel Cordoba', 'omontielc', '01020304', 1)
INSERT [dbo].[Profesor] ([Nombre], [NombreUsuario], [NumeroDePersonal], [ProfesorID]) VALUES ('Ernesto Curz Carmona', 'ecruzc', '01020305', 2)
SET IDENTITY_INSERT [dbo].[Profesor] OFF
GO

SET IDENTITY_INSERT [dbo].[ExperienciaEducativa] ON 
INSERT [dbo].[ExperienciaEducativa] ([EstadoAbierto], [Nombre], [Nrc], [Periodo], [Seccion], [ExperienciaEducativaID], [ProfesorID]) VALUES (1, 'Experiencia Recepcional', '38081', 'AGO21 - FEB22', '1', 1, 1)
INSERT [dbo].[ExperienciaEducativa] ([EstadoAbierto], [Nombre], [Nrc], [Periodo], [Seccion], [ExperienciaEducativaID], [ProfesorID]) VALUES (1, 'Proyecto Guiado', '38082', 'AGO21 - FEB22', '1', 2, 1)
SET IDENTITY_INSERT [dbo].[ExperienciaEducativa] OFF
GO

INSERT [dbo].[AlumnoExperienciaEducativa] ([AlumnoID], [ExperienciaEducativaID]) VALUES ('S01010101', 2)
INSERT [dbo].[AlumnoExperienciaEducativa] ([AlumnoID], [ExperienciaEducativaID]) VALUES ('S01010102', 1)
GO

SET IDENTITY_INSERT [dbo].[CuerpoAcademico] ON 
INSERT [dbo].[CuerpoAcademico] ([Nombre], [Objetivogeneral], [CuerpoAcademicoID], [AcademiaID]) VALUES ('Cuerpo academico ISFO', 'Objetivo general', 1, 1)
SET IDENTITY_INSERT [dbo].[CuerpoAcademico] OFF
GO 


SET IDENTITY_INSERT [dbo].[Integrante] ON 
INSERT [dbo].[Integrante] ([NumeroDePersonal], [Tipo], [IntegranteID], [Nombre]) VALUES ('NP000001', 'Colaborador', 1, 'Lucio Sales Gaya')
INSERT [dbo].[Integrante] ([NumeroDePersonal], [Tipo], [IntegranteID], [Nombre]) VALUES ('NP000002', 'Colaborador', 2, 'Amelia Aurelia Ferrandiz Jimenez')
SET IDENTITY_INSERT [dbo].[Integrante] OFF
GO

SET IDENTITY_INSERT [dbo].[Lgac] ON 
INSERT [dbo].[Lgac] ([Descripcion], [Nombre], [LgacID], [CuerpoAcademicoID]) VALUES ('LGAC de TS', 'Tecnologías de software', 1, 1)
INSERT [dbo].[Lgac] ([Descripcion], [Nombre], [LgacID], [CuerpoAcademicoID]) VALUES ('LGAC de GMDS', 'Gestión, Modelado y Desarrollo de Software', 2, 1)
INSERT [dbo].[Lgac] ([Descripcion], [Nombre], [LgacID], [CuerpoAcademicoID]) VALUES ('LGAC de ICMP', 'Instituto de Ciencias Marinas y Pesquerías', 3, 1)
INSERT [dbo].[Lgac] ([Descripcion], [Nombre], [LgacID], [CuerpoAcademicoID]) VALUES ('LGAC de IIB', 'Instituto de Investigaciones Biológicas', 4, 1)
SET IDENTITY_INSERT [dbo].[Lgac] OFF
GO

SET IDENTITY_INSERT [dbo].[Pladeafei] ON 
INSERT [dbo].[Pladeafei] ([Accion], [ArchivoPladea], [ObjetivoGeneral], [Periodo], [PladeafeiID]) VALUES ('Programa estratégico 3. Apoyo al estudiante. Acción 7.5 Fortalecer el Laboratorio de Ingeniería de Software', NULL, '7. Promover y fortalecer las  prácticas profesionales y/o de consultoría en los programas de la FEI', 'AGO21 - FEB22', 1)
INSERT [dbo].[Pladeafei] ([Accion], [ArchivoPladea], [ObjetivoGeneral], [Periodo], [PladeafeiID]) VALUES ('Programa estratégico 3. Apoyo al estudiante. Acción 7.3 Fomentar la participación de estudiantes en proyectos solicitados a los laboratorios de la FEI', NULL, '7. Promover y fortalecer las prácticas profesionales y/o de consultoría en los programas de la FEI', 'AGO21 - FEB22', 2)
SET IDENTITY_INSERT [dbo].[Pladeafei] OFF
GO

SET IDENTITY_INSERT [dbo].[ProyectoDeInvestigacion] ON 
INSERT [dbo].[ProyectoDeInvestigacion] ([FechaInicio], [Nombre], [ProyectoDeInvestigacionID]) VALUES ('2022-08-04', 'Desarrollo de Software con una Arquitectura de Microservicios', 1)
INSERT [dbo].[ProyectoDeInvestigacion] ([FechaInicio], [Nombre], [ProyectoDeInvestigacionID]) VALUES ('2022-08-04', 'Contribución del Perfil Psico-Endrocrinológico al Diagnóstico de la Mujer al Diagnóstico Serológico y Radiológico temprano del Carcinoma Duetal de la Mama', 2)
INSERT [dbo].[ProyectoDeInvestigacion] ([FechaInicio], [Nombre], [ProyectoDeInvestigacionID]) VALUES ('2022-08-04', 'Tecnicas de experiencia de usuario en plataformas educativas', 3)
SET IDENTITY_INSERT [dbo].[ProyectoDeInvestigacion] OFF
GO

SET IDENTITY_INSERT [dbo].[SinodalDelTrabajo] ON 
INSERT [dbo].[SinodalDelTrabajo] ([CorreoElectronico], [Organizacion], [Telefono], [SinodalDelTrabajoID], [Nombre]) VALUES ('andres@gmail.com', 'UV', '2283661974', 1, 'Andrés Gabriel Figueroa Ramírez')
INSERT [dbo].[SinodalDelTrabajo] ([CorreoElectronico], [Organizacion], [Telefono], [SinodalDelTrabajoID], [Nombre]) VALUES ('santonio@correo.com', 'UV FEI', '1111111111', 2, 'Antonio Serrat Salgueiro')
INSERT [dbo].[SinodalDelTrabajo] ([CorreoElectronico], [Organizacion], [Telefono], [SinodalDelTrabajoID], [Nombre]) VALUES ('qfelix@correo.com', 'UV FEI', '1111111112', 3, 'Felix Quero Navas')
INSERT [dbo].[SinodalDelTrabajo] ([CorreoElectronico], [Organizacion], [Telefono], [SinodalDelTrabajoID], [Nombre]) VALUES ('areynaldo@correo.com', 'UV FEI', '1111111113', 4, 'Reynaldo Aguillo Bernal')
INSERT [dbo].[SinodalDelTrabajo] ([CorreoElectronico], [Organizacion], [Telefono], [SinodalDelTrabajoID], [Nombre]) VALUES ('manuel@gmail.com', 'UV FEI', '2283661974', 5, 'Manuel Arcos Diaz')
INSERT [dbo].[SinodalDelTrabajo] ([CorreoElectronico], [Organizacion], [Telefono], [SinodalDelTrabajoID], [Nombre]) VALUES ('antonio@gmail.com', 'UV FEI', '2283661155', 6, 'Antonio Wing Cervantes')
INSERT [dbo].[SinodalDelTrabajo] ([CorreoElectronico], [Organizacion], [Telefono], [SinodalDelTrabajoID], [Nombre]) VALUES ('omar@gmail.com', 'UV FEI', '2283661175', 7, 'Omar Baltazar Islas')
SET IDENTITY_INSERT [dbo].[SinodalDelTrabajo] OFF
GO

SET IDENTITY_INSERT [dbo].[Vinculacion] ON 
INSERT [dbo].[Vinculacion] ([CopiaConvenio], [FechaDeInicioDeConvenio], [OrganizacionVinculada], [VinculacionID]) VALUES (null, '2016-01-26', 'Laboratorio de Mamíferos Marinos (LabMMar, IIB-ICIMAP)', 1)
INSERT [dbo].[Vinculacion] ([CopiaConvenio], [FechaDeInicioDeConvenio], [OrganizacionVinculada], [VinculacionID]) VALUES (null, '2016-01-26', 'Instituto de Ciencias Marinas y Pesquerías (ICIMAP)', 2)
SET IDENTITY_INSERT [dbo].[Vinculacion] OFF
GO

SET IDENTITY_INSERT [dbo].[TrabajoRecepcional] ON 
INSERT [dbo].[TrabajoRecepcional] ([TrabajoRecepcionalID], [Anteproyecto], [Estado], [Fechadeinicio], [LineaDeInvestigacion], [Modalidad], [Nombre], [AcademiaID], [PladeafeiID], [ProyectoDeInvestigacionID], [VinculacionID]) VALUES (1, NULL, 'En Proceso', CAST('2021-08-15' AS Date), 'Linea ejemplo', 'Tesis', 'Nombre de trabajo recepcional', 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[TrabajoRecepcional] OFF
GO

INSERT [dbo].[AlumnoTrabajoRecepcional] ([AlumnoID], [TrabajoRecepcionalID]) VALUES ('S01010101', 1)
GO


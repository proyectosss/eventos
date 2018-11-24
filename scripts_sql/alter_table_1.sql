alter table tblEvento Modify Evento char(50);
alter table tblEvento Modify Encargado char(50);
alter table tblEvento Modify Lugar char(50);
alter table tblEvento Modify Fecha Date;
alter table tblEvento Modify Transprotador Varchar(50);
alter table tblEvento Modify HoraAproximadaCargue timestamp;
ALTER TABLE `tblEvento` CHANGE `HoraAproximadaDescargue` `HoraAproximadaDescargue` TIMESTAMP NULL;
ALTER TABLE `tblEvento` CHANGE `Transprotador` `Transportador` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL;

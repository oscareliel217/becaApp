class datos {
  int? idFamilia;
  int? idRegion;
  String? region;
  int? cveLocOfi;
  int? cveMun;
  String? municipio;
  int? cveLoc;
  String? localidad;
  String? microzona;

  datos(
      {this.idFamilia,
      this.idRegion,
      this.region,
      this.cveLocOfi,
      this.cveMun,
      this.municipio,
      this.cveLoc,
      this.localidad,
      this.microzona});
  datos.fromJson(Map<String, dynamic> json) {
    idFamilia = json['idFamilia'];
    idRegion = json['idRegion'];
    cveLocOfi = json['cveLocOfi'];
    cveMun = json['cveMun'];
    municipio = json['municipio'];
    cveLoc = json['cveLoc'];
    localidad = json['localidad'];
    microzona = json['microzona'];
    print(idFamilia);
  }
}

program GestionSPuchades;

uses
  Vcl.Forms,
  FPrincipal in 'FPrincipal.pas' {principal},
  DModule1 in 'DModule1.pas' {DataModule1: TDataModule},
  listapresupuestos in 'listapresupuestos.pas' {listpresupuestos},
  clientes in 'clientes.pas' {FClientes},
  framePresupuestos in 'framePresupuestos.pas' {Frame1: TFrame},
  frameFacturas in 'frameFacturas.pas' {Frame2: TFrame},
  frameObras in 'frameObras.pas' {Frame3: TFrame},
  frameContactos in 'frameContactos.pas' {Frame4: TFrame},
  facturas in 'facturas.pas' {FFacturas},
  listaspagoseguros in 'listaspagoseguros.pas' {listpagosseguros},
  inserclientes in 'inserclientes.pas' {FInsertarCliente},
  obras in 'obras.pas' {FObras},
  listaobras in 'listaobras.pas' {listobras},
  SelectLineasPresupuestos in 'SelectLineasPresupuestos.pas' {FLineasPresupuestoObra},
  listaadministradores in 'listaadministradores.pas' {listadministradores},
  administradores in 'administradores.pas' {FAdministradores},
  inseradministradores in 'inseradministradores.pas' {FInsetarAdministrador},
  Empresa in 'Empresa.pas' {FEmpresa},
  Vcl.Themes,
  Vcl.Styles,
  SelectLineasobras in 'SelectLineasobras.pas' {FLineasObrasFacturas},
  seguros in 'seguros.pas' {FSeguros},
  listanominas in 'listanominas.pas' {listnominas},
  listafacturascompras in 'listafacturascompras.pas' {listfacturascompras},
  insernominas in 'insernominas.pas' {insertNominas},
  listasegurossociales in 'listasegurossociales.pas' {listsegurossociales},
  presupuestos in 'presupuestos.pas' {FPresupuestos},
  listaclientes in 'listaclientes.pas' {listclientes},
  companiasseguros in 'companiasseguros.pas' {FimagenesCompanias},
  AcroPDFLib_TLB in '..\..\Embarcadero\Studio\19.0\Imports\AcroPDFLib_TLB.pas',
  EstadisticasGastos in 'EstadisticasGastos.pas' {FEstadisticasGastosVentas},
  listafacturas in 'listafacturas.pas' {listfacturas},
  listaseguros in 'listaseguros.pas' {listseguros},
  config in 'config.pas' {configuracion},
  inserfacturascomparas in 'inserfacturascomparas.pas' {insertFacturasCompras};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Gesti�n Servicios Puchades';
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(Tprincipal, principal);
  Application.Run;
end.

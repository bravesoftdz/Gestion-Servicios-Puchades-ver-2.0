object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 653
  Width = 1368
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\juanpu\Documents\GitHub\Gestion-Servicios-Puchades-ver-' +
      '2.0\libmysql.dll'
    Left = 184
    Top = 32
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=puchades'
      'User_Name=juanfcopu'
      'Password=daf5ne55'
      'Server=delldebian'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object fdClientes: TFDQuery
    Active = True
    IndexFieldNames = 'idAdministrador;nombre'
    Connection = FDConnection1
    SQL.Strings = (
      
        'Select c.nombre, a.nombreApellidos, c.idAdministrador from clien' +
        'tes c,administradores a where c.idAdministrador=a.idAdministrado' +
        'r ')
    Left = 288
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 376
    Top = 32
  end
end
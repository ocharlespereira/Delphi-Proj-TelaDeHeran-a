inherited frmCadCategoria: TfrmCadCategoria
  Caption = 'Cadastro de Categorias'
  ClientWidth = 747
  ExplicitWidth = 753
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 747
    ExplicitWidth = 877
    ExplicitHeight = 501
    inherited TabListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 869
      ExplicitHeight = 473
      inherited pnlListagemTopo: TPanel
        Width = 739
        ExplicitWidth = 869
      end
      inherited grdListagem: TDBGrid
        Width = 739
        DataSource = dtsListagem
        Columns = <
          item
            Expanded = False
            FieldName = 'categoriaid'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 163
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 869
      ExplicitHeight = 473
    end
  end
  inherited pnlRodape: TPanel
    Width = 747
    inherited btnAlterar: TBitBtn
      Left = 104
      ExplicitLeft = 104
    end
    inherited btnCancelar: TBitBtn
      Left = 184
      ExplicitLeft = 184
    end
    inherited btnGravar: TBitBtn
      Left = 264
      ExplicitLeft = 264
    end
    inherited btnApagar: TBitBtn
      Left = 344
      ExplicitLeft = 344
    end
    inherited btnFechar: TBitBtn
      Left = 654
      ExplicitLeft = 739
    end
    inherited btnNavigator: TDBNavigator
      Left = 432
      Width = 200
      Hints.Strings = ()
      ExplicitLeft = 432
      ExplicitWidth = 200
    end
  end
  inherited QryListagem: TZQuery
    Active = True
    Left = 416
    Top = 32
    object QryListagemcategoriaid: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'categoriaid'
    end
    object QryListagemdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 100
    end
  end
  inherited dtsListagem: TDataSource
    Left = 464
    Top = 32
  end
end

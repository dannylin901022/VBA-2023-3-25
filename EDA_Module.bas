Attribute VB_Name = "Module1"
Sub EDA()
Attribute EDA.VB_Description = "�����N��O�ŶZ�M��O�H�ơA�̱����ʸ�Ƥ��R�ݨD�ӧO�B�z"
Attribute EDA.VB_ProcData.VB_Invoke_Func = "b\n14"
'
' EDA ����
' �����N��O�ŶZ�M��O�H�ơA�̱����ʸ�Ƥ��R�ݨD�ӧO�B�z
'
' �ֳt��: Ctrl+b
'

Dim yId As Integer '�~��id

For yId = 2020 To 2023

Workbooks.Open Filename:=ThisWorkbook.Path & "\" & CStr(yId) & ".xlsx"

ActiveWorkbook.Sheets(1).Activate '�Ĥ@�i��Ұ�
  
  '�бN���s�n�������K�W�b����U��

Columns("C:C").Select
    Selection.FormatConditions.AddIconSetCondition
    Selection.FormatConditions(Selection.FormatConditions.Count).SetFirstPriority
    With Selection.FormatConditions(1)
        .ReverseOrder = False
        .ShowIconOnly = False
        .IconSet = ActiveWorkbook.IconSets(xl3Triangles)
    End With
    With Selection.FormatConditions(1).IconCriteria(2)
        .Type = xlConditionValuePercent
        .Value = 33
        .Operator = 7
    End With
    With Selection.FormatConditions(1).IconCriteria(3)
        .Type = xlConditionValuePercent
        .Value = 67
        .Operator = 7
    End With
    Columns("D:D").Select
    Selection.FormatConditions.AddColorScale ColorScaleType:=3
    Selection.FormatConditions(Selection.FormatConditions.Count).SetFirstPriority
    Selection.FormatConditions(1).ColorScaleCriteria(1).Type = _
        xlConditionValueLowestValue
    With Selection.FormatConditions(1).ColorScaleCriteria(1).FormatColor
        .Color = 8109667
        .TintAndShade = 0
    End With
    Selection.FormatConditions(1).ColorScaleCriteria(2).Type = _
        xlConditionValuePercentile
    Selection.FormatConditions(1).ColorScaleCriteria(2).Value = 50
    With Selection.FormatConditions(1).ColorScaleCriteria(2).FormatColor
        .Color = 8711167
        .TintAndShade = 0
    End With
    Selection.FormatConditions(1).ColorScaleCriteria(3).Type = _
        xlConditionValueHighestValue
    With Selection.FormatConditions(1).ColorScaleCriteria(3).FormatColor
        .Color = 7039480
        .TintAndShade = 0
    End With

ActiveWorkbook.Save
ActiveWorkbook.Close

Next
MsgBox ("2020-2023�Ҧ��ɮפw���������ʸ�Ƥ��R,�ЦP�ǰȥ��ۤv�}�ɽT�{")
    
End Sub

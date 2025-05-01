page 50101 CustInfoCardPart
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Customer;
    
   layout
{
    area(Content)
    {
        usercontrol(CustInfoCtrl; "Customer Info Control")
        {

        }
    }
}
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    trigger OnAfterGetCurrRecord()
    begin
        GetCustomerInfo();
    end;
        local procedure GetCustomerInfo()
        var
            custInfo: JsonObject;
        begin
            custInfo.Add('name', Rec.Name);
            custInfo.Add('email', Rec."E-Mail");
            custInfo.Add('phone', Rec."Phone No.");
            CurrPage.CustInfoCtrl.GetCustomerInfo(custInfo);
        end;
        
    
    var
        myInt: Integer;
}
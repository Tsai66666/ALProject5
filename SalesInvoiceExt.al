pageextension 50100 SalesInvoiceExt extends "Sales Invoice"
{
    layout
{
    addfirst(factboxes)
    {
        part(CustInfoCardPart; CustInfoCardPart)
        {
            SubPageLink = "No." = field("Bill-to Customer No.");
        }
    }
}

    
    
    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;
}
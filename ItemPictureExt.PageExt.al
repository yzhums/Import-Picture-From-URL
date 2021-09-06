pageextension 50101 ItemPictureExt extends "Item Picture"
{
    actions
    {
        addafter(ImportPicture)
        {
            action(ImportPictureFromURL)
            {
                ApplicationArea = All;
                Caption = 'Import From URL';
                Image = Import;
                ToolTip = 'Import a picture file from URL.';

                trigger OnAction()
                var
                    PictureURLDialog: Page "Picture URL Dialog";
                begin
                    PictureURLDialog.SetItemInfo(Rec."No.", Rec.Description);
                    if PictureURLDialog.RunModal() = Action::OK then
                        PictureURLDialog.ImportItemPictureFromURL();
                end;
            }
        }
    }
}
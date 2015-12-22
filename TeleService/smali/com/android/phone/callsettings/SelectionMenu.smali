.class public Lcom/android/phone/callsettings/SelectionMenu;
.super Ljava/lang/Object;
.source "SelectionMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mPopupList:Lcom/android/phone/callsettings/PopupList;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/callsettings/SelectionMenu;->mPopupList:Lcom/android/phone/callsettings/PopupList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PopupList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SelectionMenu;->mPopupList:Lcom/android/phone/callsettings/PopupList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PopupList;->show()V

    :cond_0
    return-void
.end method

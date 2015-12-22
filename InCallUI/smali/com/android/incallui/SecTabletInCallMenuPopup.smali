.class public Lcom/android/incallui/SecTabletInCallMenuPopup;
.super Landroid/widget/PopupMenu;
.source "SecTabletInCallMenuPopup.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# instance fields
.field private mInCallMenu:Lcom/android/incallui/InCallMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const v0, 0x800005

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallMenuPopup;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallMenuPopup;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallMenu;->setMenuOpen(Z)V

    :cond_0
    return-void
.end method

.method public setInCallMenuInstance(Lcom/android/incallui/InCallMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletInCallMenuPopup;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-void
.end method

.method public show()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallMenuPopup;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallMenuPopup;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallMenu;->setMenuOpen(Z)V

    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/incallui/SecTabletInCallMenuPopup;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    invoke-super {p0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

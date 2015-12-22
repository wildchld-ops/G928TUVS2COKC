.class public Lcom/sec/android/app/launcher/activities/AppsPopupMenu$ViewTypeSelectDialog;
.super Landroid/app/DialogFragment;
.source "AppsPopupMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/AppsPopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewTypeSelectDialog"
.end annotation


# instance fields
.field private final choices:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu$ViewTypeSelectDialog;->choices:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, -0x2

    if-eq p2, v1, :cond_0

    packed-switch p2, :pswitch_data_0

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ALPHABETICAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->access$000()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->access$000()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListOrder(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;)V

    :cond_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->CUSTOMISABLE:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    sget-object v1, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu$ViewTypeSelectDialog;->choices:[Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0d0025

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu$ViewTypeSelectDialog;->choices:[Ljava/lang/String;

    const/4 v2, 0x1

    const v3, 0x7f0d0024

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mParentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu$ViewTypeSelectDialog;->choices:[Ljava/lang/String;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->access$000()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getListOrder()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d001e

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

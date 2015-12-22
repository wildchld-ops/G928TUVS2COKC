.class Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;
.super Ljava/lang/Object;
.source "KddiCallPrevention.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

.field final synthetic val$item:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;

    iput p3, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    const v4, 0x7f0a0382

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/KddiCallPrevention;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    const v3, 0x7f0a0759

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/KddiCallPrevention;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4$1;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4$1;-><init>(Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

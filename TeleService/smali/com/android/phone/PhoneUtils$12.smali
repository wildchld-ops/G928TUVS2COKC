.class final Lcom/android/phone/PhoneUtils$12;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;

    const/4 v0, 0x0

    # setter for: Lcom/android/phone/PhoneUtils;->mRoamMccChangedDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$1102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method

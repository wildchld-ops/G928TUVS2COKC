.class final Lcom/android/phone/operator/usa/OtaUtilsAlertDialog$1;
.super Ljava/lang/Object;
.source "OtaUtilsAlertDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->show(Landroid/content/Context;)V
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
.method public run()V
    .locals 1

    # getter for: Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->mOtaUtilsAlertDialog:Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;
    invoke-static {}, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->access$000()Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->mOtaUtilsAlertDialog:Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;
    invoke-static {}, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->access$000()Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

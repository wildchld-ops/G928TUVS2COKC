.class Lcom/android/settings/wifi/WifiSnsSettingDialog$2;
.super Ljava/lang/Object;
.source "WifiSnsSettingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSnsSettingDialog;->makeSnsSettingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSnsSettingDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSnsSettingDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog$2;->this$0:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "WifiSnsSettingDialog"

    const-string v1, "Cancel button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

.class Lcom/android/server/telecom/secutils/ErrorDialog$3;
.super Landroid/telephony/PhoneStateListener;
.source "ErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/secutils/ErrorDialog;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/secutils/ErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/ErrorDialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/ErrorDialog$3;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$3;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/secutils/ErrorDialog;->multiSimOnServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.class Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$4;
.super Landroid/telephony/PhoneStateListener;
.source "EcholocateServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$4;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$4;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->OnNetworkStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

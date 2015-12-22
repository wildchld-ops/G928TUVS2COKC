.class Lcom/android/phone/NetworkNotificationUI$4;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkNotificationUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkNotificationUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$4;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$4;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-virtual {v0, p1}, Lcom/android/phone/NetworkNotificationUI;->dataConnectionStateChanged(I)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1    # Landroid/telephony/ServiceState;

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$4;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-virtual {v0, p1}, Lcom/android/phone/NetworkNotificationUI;->serviceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

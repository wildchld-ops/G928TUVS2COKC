.class Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "PhoneGlobals.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;

.field final synthetic val$request:[B


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;[B)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver$1;->this$1:Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;

    iput-object p2, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver$1;->val$request:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v1, "PhoneApp"

    const-string v2, "Wfc ACTION_WFC_SWITCH_PROFILE_BROADCAST received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc8

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver$1;->this$1:Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver$1;->val$request:[B

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/PhoneInterfaceManager;->invokeOemRilRequestRaw([B[B)I

    return-void
.end method

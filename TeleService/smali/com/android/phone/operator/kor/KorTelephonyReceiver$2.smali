.class Lcom/android/phone/operator/kor/KorTelephonyReceiver$2;
.super Ljava/lang/Object;
.source "KorTelephonyReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/kor/KorTelephonyReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/kor/KorTelephonyReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/kor/KorTelephonyReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver$2;->this$0:Lcom/android/phone/operator/kor/KorTelephonyReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->showNetworkAutoReboot()V

    return-void
.end method

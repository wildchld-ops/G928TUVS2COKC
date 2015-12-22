.class Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$UpdateVersionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneNumberLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateVersionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;


# direct methods
.method private constructor <init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$UpdateVersionReceiver;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$UpdateVersionReceiver;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$UpdateVersionReceiver;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    # invokes: Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->refreshVersion()V
    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->access$300(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V

    return-void
.end method

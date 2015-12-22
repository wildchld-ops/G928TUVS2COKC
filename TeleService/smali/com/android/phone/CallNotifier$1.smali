.class Lcom/android/phone/CallNotifier$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogger;Lcom/android/phone/CallStateMonitor;Lcom/android/phone/BluetoothManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->updatePhoneStateListeners()V

    return-void
.end method

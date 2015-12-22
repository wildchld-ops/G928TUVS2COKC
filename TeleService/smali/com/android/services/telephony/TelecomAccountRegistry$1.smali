.class Lcom/android/services/telephony/TelecomAccountRegistry$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "TelecomAccountRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TelecomAccountRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TelecomAccountRegistry;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelecomAccountRegistry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$1;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$1;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    # invokes: Lcom/android/services/telephony/TelecomAccountRegistry;->tearDownAccounts()V
    invoke-static {v0}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$400(Lcom/android/services/telephony/TelecomAccountRegistry;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$1;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    # invokes: Lcom/android/services/telephony/TelecomAccountRegistry;->setupAccounts()V
    invoke-static {v0}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$500(Lcom/android/services/telephony/TelecomAccountRegistry;)V

    return-void
.end method
